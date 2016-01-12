#pragma once
using namespace System;
#include "asm.h"
//#define _OPEN_CV_


#ifndef _OPEN_CV_
float MAX(float p1,float p2,float p3)
{
	return max(p1,max(p2,p3));
}
float MIN(float p1, float p2, float p3)
{
	return min(p1, min(p1, p2));

}
#endif
#ifdef _OPEN_CV_
#include "opencv2/opencv.hpp"
#endif
namespace CvAdapter 
{
	void ThrowException(String^ msg)
	{
		throw gcnew System::Exception(msg);
	}
	public ref struct Rect
	{
		int x;
		int y;
		int width;
		int height;
	};
	public ref struct EyeDetectResult
	{
		int eX1;
		int eY1;
		int eX2;
		int eY2;
		int bX1;
		int bY1;
		int bX2;
		int bY2;
	};
	public ref struct DetectResult
	{
		int left;
		int top;
		int bottom;
		int right;
		int x1;
		int x2;
		int y1;
		int y2;
	public:
		//下面四个符号重载也是晚上11点后再次上网找到的方法，总算可以如愿工作了。
		//因为这个类是用的托管模式下的，因此要按C#的定义方式来，而不是C++的方式
		//2010-3-11 23:47注。今天完成了VLBP的算法优化和一些算法细节的调整
		static DetectResult^ operator *(DetectResult^ t,System::Double r)
		{
			t->left = (int)((double)t->left * r);
			t->top = (int)((double)t->top * r);
			t->right = (int)((double)t->right * r);
			t->bottom = (int)((double)t->bottom * r);
			t->x1 = (int)((double)t->x1 * r);
			t->y1 = (int)((double)t->y1 * r);
			t->x2 = (int)((double)t->x2 * r);
			t->y2 = (int)((double)t->y2 * r);
			return t;

		}
		static DetectResult^ operator *= (DetectResult^ t,System::Double r)
		{
			t->left = (int)((double)t->left * r);
			t->top = (int)((double)t->top * r);
			t->right = (int)((double)t->right * r);
			t->bottom = (int)((double)t->bottom * r);
			t->x1 = (int)((double)t->x1 * r);
			t->y1 = (int)((double)t->y1 * r);
			t->x2 = (int)((double)t->x2 * r);
			t->y2 = (int)((double)t->y2 * r);
			return t;

		}
		static DetectResult^ operator /(DetectResult^ t,System::Double r)
		{
			t->left = (int)((double)t->left / r);
			t->top = (int)((double)t->top / r);
			t->right = (int)((double)t->right / r);
			t->bottom = (int)((double)t->bottom / r);
			t->x1 = (int)((double)t->x1 / r);
			t->y1 = (int)((double)t->y1 / r);
			t->x2 = (int)((double)t->x2 / r);
			t->y2 = (int)((double)t->y2 / r);
			return t;

		}
		static DetectResult^ operator /=(DetectResult^ t,System::Double r)
		{
			t->left = (int)((double)t->left / r);
			t->top = (int)((double)t->top / r);
			t->right = (int)((double)t->right / r);
			t->bottom = (int)((double)t->bottom / r);
			t->x1 = (int)((double)t->x1 / r);
			t->y1 = (int)((double)t->y1 / r);
			t->x2 = (int)((double)t->x2 / r);
			t->y2 = (int)((double)t->y2 / r);
			return t;

		}
	
		/*DetectResult^ operator /(const System::Double r)
		{
			this->left = (int)((double)left / r);
			this->top = (int)((double)top / r);
			this->bottom = (int)((double)bottom / r);
			this->x1 = (int)((double)x1 / r);
			this->x2 = (int)((double)x2 / r);
			this->y1 = (int)((double)y1 / r);
			this->y2 = (int)((double)y2 / r);
			return this;
		}*/
		
		/*DetectResult^ operator =/(const double& r)
		{
			this->left = (int)((double)this->left / r);
			this->top = (int)((double)this->top / r);
			this->bottom = (int)((double)this->bottom / r);
			this->x1 = (int)((double)x1 / r);
			this->x2 = (int)((double)x2 / r);
			this->y1 = (int)((double)y1 / r);
			this->y2 = (int)((double)y2 / r);
			return this;
		}*/
	};
	public ref class ColorSpaceConverter
	{
		//////////////////////////////////////////////////////////////////////////
		//Note: R,G,B Value should scaled to 0-1 scale
		//Halley September 3th, 2011 11:00
		//@ShiTong Optic Software L.I.D
		//Reference Link: http://www.cs.rit.edu/~ncs/color/t_convert.html#XYZ%20to%20CIE%20L*a*b*%20(CIELAB)%20&%20CIELAB%20to%20XYZ
		//Thanks to Wikipedia
	private:
		static inline float fun1(float t)
		{
			if (t < 0.008856f)
			{
				return pow(t,0.3333333f);;
			}
			return 7.787f * t + 0.1379310f;
		}
		static inline float fun2(float t)
		{
			if (t > 0.206893f)
			{
				return t * t * t;
			}
			return 0.128418549f * ( t - 0.1379310f);
		}
	public:
		static void RGBtoHSV(float r, float g, float b, float &h, float &s, float &v )
		{
			float min, max, delta;
			min = MIN( r, g, b );
			max = MAX( r, g, b );
			v = max;				// v
			delta = max - min;
			if( max != 0 )
				s = delta / max;		// s
			else 
			{
				// r = g = b = 0		// s = 0, v is undefined
				s = 0;
				h = -1;
				return;
			}
			if( r == max )
				h = ( g - b ) / delta;		// between yellow & magenta
			else if( g == max )
				h = 2 + ( b - r ) / delta;	// between cyan & yellow
			else
				h = 4 + ( r - g ) / delta;	// between magenta & cyan
			h *= 60;				// degrees
			if( h < 0 )
				h += 360;
		}
		static void HSVtoRGB( float h, float s, float v, float& r, float& g, float& b )
		{
			int i;
			float f, p, q, t;
			if( s == 0 )
			{
				// achromatic (grey)
				r = g = b = v;
				return;
			}
			h /= 60;			// sector 0 to 5
			i = floor( h );
			f = h - i;			// factorial part of h
			p = v * ( 1 - s );
			q = v * ( 1 - s * f );
			t = v * ( 1 - s * ( 1 - f ) );
			switch( i ) {
			case 0:
				r = v;
				g = t;
				b = p;
				break;
			case 1:
				r = q;
				g = v;
				b = p;
				break;
			case 2:
				r = p;
				g = v;
				b = t;
				break;
			case 3:
				r = p;
				g = q;
				b = v;
				break;
			case 4:
				r = t;
				g = p;
				b = v;
				break;
			default:		// case 5:
				r = v;
				g = p;
				b = q;
				break;
			}
		}
		static void RGBtoYIQ(float r, float g, float b, float &y, float &i, float &q )
		{
			/*
			[ Y ]     [ 0.299   0.587   0.114 ] [ R ]
			[ I ]  =  [ 0.596  -0.275  -0.321 ] [ G ]
			[ Q ]     [ 0.212  -0.523   0.311 ] [ B ]
			*/
			y = 0.299f * r + 0.587f * g + 0.114f * b;
			i = 0.569f * r - 0.275f * g - 0.321f * b;
			q = 0.212f * r - 0.523f * g + 0.311f * b;
		}
		static void YIQtoRGB(float y, float i,float q, float& r,float& g,float& b)
		{
			/*
			[ R ]     [ 1   0.956   0.621 ] [ Y ]
			[ G ]  =  [ 1  -0.272  -0.647 ] [ I ]
			[ B ]     [ 1  -1.105   1.702 ] [ Q ]

			*/
			r = y - 0.956f * i + 0.621f * q;
			g = y - 0.272f * i - 0.647f * q;
			b = y - 1.105f * i + 1.702f * q;
		}
		static void RGBtoXYZ(float r,float g,float b,float& x,float& y,float& z)
		{
			/*
			[ X ]   [  0.412453  0.357580  0.180423 ]   [ R ] **
			[ Y ] = [  0.212671  0.715160  0.072169 ] * [ G ]
			[ Z ]   [  0.019334  0.119193  0.950227 ]   [ B ].
			*/
			x = 0.412453f * r + 0.35758f * g + 0.180423f * b;
			y = 0.212671f * r + 0.71516f * g + 0.072169f * b;
			z = 0.019334f * r + 0.119193f * g + 0.950227f * b;
			//** February 20, 2000 - typo in this line of the matrix was corrected (0.189423 to 0.180423), thanks to Michal Karczmarek, University of Toronto 
		}
		static void XYZtoRGB(float x,float y,float z,float&r,float& g,float&b)
		{
			/*
			[ R ]   [  3.240479 -1.537150 -0.498535 ]   [ X ]
			[ G ] = [ -0.969256  1.875992  0.041556 ] * [ Y ]
			[ B ]   [  0.055648 -0.204043  1.057311 ]   [ Z ].
			*/
			r = 3.240479f * x - 1.53715f * y - 0.498535f * z;
			g = -0.969256f * x + 1.875992f * y + 0.04156f * z;
			b = 0.055648f * x - 0.204043f * y + 1.057311f * z;
		}
		static void XYZtoLAB(float x,float y,float z,float&L,float& A,float& B)
		{
			float Xn,Yn,Zn;
			RGBtoXYZ(1,1,1,Xn,Yn,Zn);
			static const float xn = 1.204794f;
			static const float yn = 0.948296f;
			static const float zn = 0.908916f;
			L = 116 * fun1(y / Yn) - 16;
			A = 500 * (fun1(x / Xn) - fun1(y / Yn));
			B = 200 * (fun1(y / Yn) - fun1(z / Zn));
		}
		static void LABtoXYZ(float L,float A,float B,float& x,float& y,float& z)
		{
			float Xn,Yn,Zn;
			RGBtoXYZ(1,1,1,Xn,Yn,Zn);
			static const float xn = 1.204794f;
			static const float yn = 0.948296f;
			static const float zn = 0.908916f;
			L +=16.f;
			L /= 116.f;

			y = yn * fun2(L);
			x = xn * fun2(L + 0.002f * A);
			z = zn * fun2(L - 0.005f * B);
		}
		static void RGBLAB(float r,float g,float b,float&L,float& A,float& B)
		{
			//float Xn,Yn,Zn;
			//RGBtoXYZ(1,1,1,Xn,Yn,Zn);
			float x = 0.412453f * r + 0.35758f * b + 0.180423f * b;
			float y = 0.212671f * r + 0.71516f * b + 0.072169f * b;
			float z = 0.019334f * r + 0.119193f * b + 0.950227f * b;
			static const float xn = 0.95045602f;
			static const float yn = 1.0f;
			static const float zn = 1.0887541;
			L = 116 * fun1(y / yn) - 16;
			A = 500 * (fun1(x / xn) - fun1(y / yn));
			B = 200 * (fun1(y / yn) - fun1(z / zn));
		}
		static void LABtoRGB(float L,float A,float B,float& r,float& g,float& b)
		{
			float Xn,Yn,Zn;
			RGBtoXYZ(1,1,1,Xn,Yn,Zn);
			static const float xn = 0.95045602f;
			static const float yn = 1.0f;
			static const float zn = 1.0887541;
			L +=16.f;
			L /= 116.f;

			float y = yn * fun2(L);
			float x = xn * fun2(L + 0.002f * A);
			float z = zn * fun2(L - 0.005f * B);

			r = 3.240479f * x - 1.53715f * y - 0.498535f * z;
			g = -0.969256f * x + 1.875992f * y + 0.04156f * z;
			b = 0.055648f * x - 0.204043f * y + 1.057311f * z;
		}
		//////////////////////////////////////////////////////////////////////////
		//For array conversion
		static void RGBtoHSV(float* r, float* g, float* b, float* h, float *s, float *v, int len )
		{
			float min, max, delta;
			for (int n = 0; n < len; n ++)
			{
				min = MIN( r[n], g[n], b[n] );
				max = MAX( r[n], g[n], b[n] );
				v[n] = max;				// v
				delta = max - min;
				if( max != 0 )
					s[n] = delta / max;		// s
				else 
				{
					// r = g = b = 0		// s = 0, v is undefined
					s[n] = 0;
					h[n] = -1;
					return;
				}
				if( r[n] == max )
					h[n] = ( g[n] - b[n] ) / delta;		// between yellow & magenta
				else if( g[n] == max )
					h[n] = 2 + ( b[n] - r[n] ) / delta;	// between cyan & yellow
				else
					h[n] = 4 + ( r[n] - g[n] ) / delta;	// between magenta & cyan
				h[n] *= 60;				// degrees
				if( h[n] < 0 )
					h[n] += 360;
			}
			
		}
		static void HSVtoRGB( float* h, float* s, float* v, float* r, float* g, float* b, int len )
		{
			int i;
			float f, p, q, t;
			for (int n = 0; n < len;n ++)
			{
				if( s[n] == 0 )
				{
					// achromatic (grey)
					r[n] = g[n] = b[n] = v[n];
					return;
				}
				h[n] /= 60;			// sector 0 to 5
				i = floor( h[n] );
				f = h[n] - i;			// factorial part of h
				p = v[n] * ( 1 - s[n] );
				q = v[n] * ( 1 - s[n] * f );
				t = v[n] * ( 1 - s[n] * ( 1 - f ) );
				switch( i ) {
				case 0:
					r[n] = v[n];
					g[n] = t;
					b[n] = p;
					break;
				case 1:
					r[n] = q;
					g[n] = v[n];
					b[n] = p;
					break;
				case 2:
					r[n] = p;
					g[n] = v[n];
					b[n] = t;
					break;
				case 3:
					r[n] = p;
					g[n] = q;
					b[n] = v[n];
					break;
				case 4:
					r[n] = t;
					g[n] = p;
					b[n] = v[n];
					break;
				default:		// case 5:
					r[n] = v[n];
					g[n] = p;
					b[n] = q;
					break;
				}
			}
			
		}
		static void RGBtoYIQ(float* r, float* g, float* b, float *y, float *i, float *q , int len)
		{
			/*
			[ Y ]     [ 0.299   0.587   0.114 ] [ R ]
			[ I ]  =  [ 0.596  -0.275  -0.321 ] [ G ]
			[ Q ]     [ 0.212  -0.523   0.311 ] [ B ]
			*/
			float _r,_g,_b;
			for(int n = 0; n < len;n ++)
			{
				_r = r[n];
				_g = g[n];
				_b = b[n];
				y[n] = 0.299f * _r + 0.587f * _g + 0.114f * _b;
				i[n] = 0.569f * _r - 0.275f * _g - 0.321f * _b;
				q[n]= 0.212f * _r - 0.523f * _g + 0.311f * _b;

			}
		}
		static void YIQtoRGB(float* y, float* i,float* q, float* r,float* g,float* b,int len)
		{
			/*
			[ R ]     [ 1   0.956   0.621 ] [ Y ]
			[ G ]  =  [ 1  -0.272  -0.647 ] [ I ]
			[ B ]     [ 1  -1.105   1.702 ] [ Q ]

			*/
			float _y,_i,_q;
			for (int n = 0; n < len;n ++)
			{
				_y = y[n];
				_i = i[n];
				_q = q[n];
				r[n] = _y - 0.956f * _i + 0.621f * _q;
				g[n] = _y - 0.272f * _i - 0.647f * _q;
				b[n] = _y - 1.105f * _i + 1.702f * _q;
			}
		}
		static void RGBtoXYZ(float* r,float* g,float* b,float* x,float* y,float* z,int len)
		{
			/*
			[ X ]   [  0.412453  0.357580  0.180423 ]   [ R ] **
			[ Y ] = [  0.212671  0.715160  0.072169 ] * [ G ]
			[ Z ]   [  0.019334  0.119193  0.950227 ]   [ B ].
			*/
			float _r,_g,_b;
			for (int n = 0; n < len;n ++)
			{
				_r = r[n];
				_g = g[n];
				_b = b[n];
				x[n] = 0.412453f * _r + 0.35758f * _g + 0.180423f * _b;
				y[n] = 0.212671f * _r + 0.71516f * _g + 0.072169f * _b;
				z[n] = 0.019334f * _r + 0.119193f * _g + 0.950227f * _b;
			}
			//** February 20, 2000 - typo in this line of the matrix was corrected (0.189423 to 0.180423), thanks to Michal Karczmarek, University of Toronto 
		}
		static void XYZtoRGB(float* x,float* y,float* z,float* r,float* g,float*b, int len)
		{
			/*
			[ R ]   [  3.240479 -1.537150 -0.498535 ]   [ X ]
			[ G ] = [ -0.969256  1.875992  0.041556 ] * [ Y ]
			[ B ]   [  0.055648 -0.204043  1.057311 ]   [ Z ].
			*/
			float _x ,_y,_z;
			for (int n = 0; n < len;n ++)
			{
				_x = x[n];
				_y = y[n];
				_z = z[n];
				r[n] = 3.240479f * _x - 1.53715f * _y - 0.498535f * _z;
				g[n] = -0.969256f * _x + 1.875992f * _y + 0.04156f * _z;
				b[n] = 0.055648f * _x - 0.204043f * _y + 1.057311f * _z;

			}
		}
		static void XYZtoLAB(float* x,float* y,float* z,float *L,float* A,float* B, int len)
		{
			//float Xn,Yn,Zn;
			//RGBtoXYZ(1,1,1,Xn,Yn,Zn);
			static const float xn = 0.95045602f;
			static const float yn = 1.0f;
			static const float zn = 1.0887541;
			float _x,_y,_z;
			for (int n = 0; n < len;n ++)
			{
				_x = x[n];
				_y = y[n];
				_z = z[n];
				L[n] = 116 * fun1(_y / xn) - 16;
				A[n] = 500 * (fun1(_x / xn) - fun1(_y / yn));
				B[n] = 200 * (fun1(_y / yn) - fun1(_z / zn));

			}
		}
		static void LABtoXYZ(float* L,float* A,float* B,float* x,float* y,float* z, int len)
		{
			float Xn,Yn,Zn;
			RGBtoXYZ(1,1,1,Xn,Yn,Zn);
			static const float xn = 1.204794f;
			static const float yn = 0.948296f;
			static const float zn = 0.908916f;
			float _L,_A,_B;

			for (int n = 0; n < len;n ++)
			{
				_L = L[n];
				_A = A[n];
				_B = B[n];

				_L +=16.f;
				_L /= 116.f;

				y[n] = yn * fun2(_L);
				x[n] = xn * fun2(_L + 0.002f * _A);
				z[n] = zn * fun2(_L - 0.005f * _B);

			}
		}
		static void RGBtoLAB(float* r,float* g,float* b,float *L,float* A,float* B, int len)
		{
			RGBtoXYZ(r,g,b,r,g,b,len);
			//float Xn,Yn,Zn;
			//RGBtoXYZ(1,1,1,Xn,Yn,Zn);
			static const float xn = 0.95045602f;
			static const float yn = 1.0f;
			static const float zn = 1.0887541;
			float _x,_y,_z;
			for (int n = 0; n < len;n ++)
			{
				_x = r[n];
				_y = g[n];
				_z = b[n];
				L[n] = 116 * fun1(_y / yn) - 16;
				A[n] = 500 * (fun1(_x / xn) - fun1(_y / yn));
				B[n] = 200 * (fun1(_y / yn) - fun1(_z / zn));

			}
		}
		static void LABtoRGB(float* L,float* A,float* B,float* r,float* g,float* b, int len)
		{
			//float Xn,Yn,Zn;
			//RGBtoXYZ(1,1,1,Xn,Yn,Zn);
			static const float xn = 0.95045602f;
			static const float yn = 1.0f;
			static const float zn = 1.0887541;
			float _L,_A,_B;

			for (int n = 0; n < len;n ++)
			{
				_L = L[n];
				_A = A[n];
				_B = B[n];

				_L +=16.f;
				_L /= 116.f;

				r[n] = yn * fun2(_L);
				g[n] = xn * fun2(_L + 0.002f * _A);
				b[n] = zn * fun2(_L - 0.005f * _B);

			}
			XYZtoRGB(r,g,b,r,g,b,len);
		}
		//For 32 bits RGB color data October 8th 2011,8: 46
		static void RGBtoLAB(int* data,float *L,float* A,float* B, int len)
		{
			static const float xn = 0.95045602f;
			static const float yn = 1.0f;
			static const float zn = 1.0887541;
			float x,y,z;
			float r,g,b;
			int v;
			for (int n = 0; n < len;n ++)
			{
				v = data[n];
				v &= 0x00FFFFFF;
				r = (float)((v & 0xFF0000) >> 16) / 256.0f;
				g = (float)((v & 0xFF00) >> 8) / 256.0f;
				b = (float)(v & 0xFF) / 256.f;
				x = 0.412453f * r + 0.35758f * g + 0.180423f * b;
				y = 0.212671f * r + 0.71516f * g + 0.072169f * b;
				z = 0.019334f * r + 0.119193f * g + 0.950227f * b;
				L[n] = 116 * fun1(y / yn) - 16;
				A[n] = 500 * (fun1(x / xn) - fun1(y / yn));
				B[n] = 200 * (fun1(y / yn) - fun1(z / zn));

			}
		}
		
	};
	public ref class ImageAdapter:System::IDisposable
	{
	private:
		HBITMAP hBitmap;
		BYTE* imgBuffer;
#ifdef _OPEN_CV_
		IplImage* imgIpl;
#endif
		int width;
		int height;
		BYTE* targetBuffer;
		float* colorSpaceBuffer;
	public:
		enum class ChannelType
		{
			RedChannel = 0,
			GreenChannel,
			BlueChannel,
			GrayChannel,
		};
		property System::IntPtr ImageBitmap
		{
			System::IntPtr get()
			{

				return System::IntPtr(hBitmap);
			}
		}
		property BYTE* ImageBuffer
		{
			BYTE* get()
			{
				return imgBuffer;
			}
		}
#ifdef _OPEN_CV_
		property void* ImageIplPoint
		{
			void* get()
			{
				return (void*)imgIpl;
			}
		}
#endif
		property int Width
		{
			int get()
			{
				return width;
			}
		}
		property int Height
		{
			int get()
			{
				return height;
			}
		}
		VOID ColorSolid(int color)
		{
			int* pt = (int*) imgBuffer;
			for(int i = 0; i < width * height; i ++)
				pt[i] = color;

		}
		VOID ToGrayImage()
		{
			if(imgBuffer)
			{
				int*p = (int*)imgBuffer;
				int R,G,B;
				int T;
				for(int i = 0; i < width * height; i ++)
				{
					T = p[i];
					R = T & 0x000000FF;
					G = T & 0x0000FF00;
					B = T & 0x00FF0000;
					G >>= 7;
					B >>= 16;
					T = G + B + R;
					G = (T >> 2);
					T = G;
					T <<= 8;
					T |= G;
					T <<= 8;
					T |= G;
					p[i] = T;
				}
			}
		}
		int GetPixel(int x,int y)
		{
			if(imgBuffer == NULL)
				return 0;
			
			if(x < 0 || y < 0 || x >= width || y >= height)
				return 0;
			int* pt = (int*)imgBuffer;
			return pt[(height - 1 - y) * width + x];
		}
		BOOL SetPixel(int x,int y,int v)
		{
			if(imgBuffer == NULL)
				return FALSE;
			if(x < 0 || y < 0 || x >= width || y >= height)
				return FALSE;
			int* pt = (int*)imgBuffer;
			pt[(height - 1 - y) * width + x] = v;
			return TRUE;
		}
		VOID AverageGrayImage()
		{
			if(imgBuffer == NULL) return;
			AverageGrayImage((int*)imgBuffer,width,height);
		}
		VOID StandardGrayImage()
		{
			if(imgBuffer == NULL) return;
			StandardGrayImage((int*)imgBuffer,width,height);
		}
		VOID EdgeDetectPrewitt()
		{
			if(imgBuffer == NULL) return;
			EdgeDetectPrewitt((int*)imgBuffer,width,height);
		}
		VOID EdgeDetectDifferential()
		{
			if(imgBuffer == NULL) return;
			EdgeDetectDifferential((int*)imgBuffer,width,height);
		}
		VOID TemperEdgeDetectDifferential(int* history)
		{
			if(imgBuffer == NULL) return;
			TemperEdgeDetectDifferential((int*)imgBuffer,history,width,height);
		}
		VOID EdgeDetectCanny()
		{
			if(imgBuffer == NULL) return;
			EdgeDetectCanny((int*)imgBuffer,width,height);
		}
		VOID EdgeDetectDifferential2()
		{
			if(imgBuffer == NULL) return;
			EdgeDetectDifferential2((int*)imgBuffer,width,height);
		}
		VOID GaussianSmooth()
		{
			if(imgBuffer == NULL) return;
			GaussianSmooth((int*)imgBuffer,width,height);
		}
#ifdef _OPEN_CV_
		VOID HisImage()
		{
			if(imgIpl)
			{
				IplImage* gray = ::cvCreateImage(cvSize(imgIpl->width,imgIpl->height),8,1);
				int srcIndex = 0;
				int desIndex = 0;
				for(int i = 0; i < imgIpl->height;i++)
				{
					srcIndex = imgIpl->widthStep * i;
					desIndex = gray->widthStep * i;
					for(int j = 0; j < imgIpl->width;j++)
					{
						gray->imageData[desIndex + j] = imgIpl->imageData[srcIndex];
						srcIndex += 4;
					}
				}
				::cvEqualizeHist( gray, gray );
				//::cvNamedWindow("Testing");
				//::cvShowImage("Testing",gray);
				//::cvConvertImage(gray,imgIpl);
				Byte temp = 0;
				for(int i = 0; i < imgIpl->height;i++)
				{
					srcIndex = imgIpl->widthStep * i;
					desIndex = gray->widthStep * i;
					for(int j = 0; j < imgIpl->width;j++)
					{
						temp = gray->imageData[desIndex + j];
						imgIpl->imageData[srcIndex] = temp;
						imgIpl->imageData[srcIndex + 1] = temp;
						imgIpl->imageData[srcIndex + 2] = temp;
						srcIndex += 4;
					}
				}
				::cvReleaseImage(&gray);/*
				::cvNamedWindow("EqualizeHist",9);
				::cvShowImage("EqualizeHist",imgIpl);*/
			}
		}
#endif
		VOID FlipImage()
		{
			int* pt1 = (int*)imgBuffer;
			int* pt2 = pt1 + (height - 1) * width;
			int t = 0;
			for(int y = 0; y < height / 2; y ++)
			{
				for(int x = 0; x < width; x ++)
				{
					t = pt1[x];
					pt1[x] = pt2[x];
					pt2[x] = t;
				}
				pt1 += width;
				pt2 -= width;
			}
		
		}
		//BOOL SetImageData(IplImage* srcImg)
		//{
		//	/*if(srcImg == NULL)
		//	return FALSE;
		//	CvvImage cvImg;
		//	RECT rect;
		//	cvImg.CopyOf(srcImg);
		//	rect.left = 0;
		//	rect.top = 0;
		//	rect.left = cvImg.Width();
		//	rect.bottom = cvImg.Height();
		//	HDC dc = ::CreateCompatibleDC(NULL);
		//	HGDIOBJ obj = ::SelectObject(dc,this->hBitmap);
		//	cvImg.DrawToHDC(dc,&rect);
		//	::SelectObject(dc,obj);
		//	if(!::DeleteDC(dc))
		//	{
		//	cvImg.Destroy();
		//	return FALSE;
		//	}
		//	cvImg.Destroy();*/
		//	return TRUE;
		//	
		//	
		//}
		BOOL SetImageData(ImageAdapter^ image)
		{
			if(image->Width != width || image->Height != height)
				return FALSE;
			int* scrPtr = (int*)image->ImageBuffer;
			int* dstPrt = (int*)imgBuffer;
			for(int i = 0; i < width * height ; i ++)
				dstPrt[i] = scrPtr[i];
			return TRUE;
		}
		BOOL SetImageData(System::IntPtr imgPtr,bool AutoRelease)
		{
			if(hBitmap == NULL)
			{
				ThrowException("Please initial the instance before using it!Use CreateAdapterImage mothed!");
				return FALSE;
			}
			System::Int32 p = (System::Int32)imgPtr;
			HBITMAP bitmap = (HBITMAP)p;
			if(bitmap == NULL)
			{
				ThrowException("Input image handle is invalidate!");
				return FALSE;
			}
			
			HDC dc = ::CreateCompatibleDC(NULL);
			HGDIOBJ obj = ::SelectObject(dc,hBitmap);
			if(obj == NULL)
			{
				ThrowException("Select Object Failed!");
				return FALSE;
			}
			HDC mdc = ::CreateCompatibleDC(dc);
			HGDIOBJ obj1 = ::SelectObject(mdc,bitmap);
			if(obj1 == NULL)
				return FALSE;
			BOOL ret = ::BitBlt(dc,0,0,width,height,mdc,0,0,SRCCOPY);
			if(AutoRelease)
			{
				if(!::DeleteObject(bitmap))
				{
					ThrowException("Delete Bitmap Failed!");
				};
			}
			if(ret == FALSE)
			{
				::SelectObject(dc,obj);
				::SelectObject(mdc,obj1);
				::DeleteDC(dc);
				::DeleteDC(mdc);
				ThrowException("Copy Data Failed!");
			}

				::SelectObject(dc,obj);
				::SelectObject(mdc,obj1);
				::DeleteDC(dc);
				::DeleteDC(mdc);
			return TRUE;

		

		}
		BOOL SetImageData(System::Drawing::Bitmap^ img)
		{
			
			int w = img->Width;
			int h = img->Height;
			System::Drawing::Imaging::BitmapData^	bmData = img->LockBits(
				System::Drawing::Rectangle(0, 0, w, h),
					System::Drawing::Imaging::ImageLockMode::ReadOnly,
					img->PixelFormat);

			try
			{
				int srcStride = bmData->Stride;
				int step = srcStride / w;
								//int dstStride = bmData->Stride / sizeof(int);
				int ptr0 = (int)bmData->Scan0;
				int ptr = ptr0 + srcStride * (h - 1);
				if(step < 0)
					ptr = (int)bmData->Scan0;// - srcStride * (h - 1);/**/

				BYTE* dst = (BYTE*)ptr;
				int* p = NULL;
				int* src = (int*)this->imgBuffer;
				int index = 0;
				switch(step)
				{
				case 4:
					{
						p = (int*) dst;
						
						for (int y = 0; y < h; y++)
						{
							for(int x = 0; x < w;x ++)
							{
								src[index ++] = p[x];
							}
							p -= w;
							
						}
						break;
					}
				case 3://the bug was fixed on September 27th 2011 by Halley 
					{
						byte* pScr = imgBuffer;
						int id = 0;
						for (int y = 0; y < h; y++)
						{
							id = 0;
							for(int x = 0; x < w; x ++)
							{

								/*for(int k = step - 1; k >= 0;k--)
									temp[k] = dst[ x + k];*/
								//p = (int*)(dst + x);
								//src[index++] =*p;// *(int*)temp;
								pScr[0] = dst[id];
								pScr[1] = dst[id + 1];
								pScr[2] = dst[id + 2];
								id += 3;
								pScr += 4;
							}
							dst -= srcStride;
						}
						break;
					}
				case -4:
					{
						p = (int*) dst;
						src += (h - 1)* w;
						for (int y = 0; y < h; y++)
						{
							for(int x = 0; x < w;x ++)
							{
								src[x] = p[x];
							}
							p -= w;
							src -= w;
						}
						break;
					}
				case 1:
					{
						BYTE * pt = dst;
						int t = 0;
						int rgb = 0;
						for (int y = 0; y < h; y++)
						{
							for(int x = 0; x < w;x ++)
							{
								t = pt[x];
								rgb = t;
								rgb <<= 8;
								rgb |= t;
								rgb <<= 8;
								rgb |= t;
								src[index ++] = rgb;
							}
							pt -= w;
							
						}

						break;
					}
				default:
					{
						throw gcnew System::Exception(L"Image format was not supported!");

					}

				}
				
				/*for(int i = 0 ; i < img->Width * img->Height;i ++)
					src[i] = dst[i];*/
			}
			catch(System::Exception^ ex)
			{
				throw gcnew System::Exception(ex->Message->ToString());
				//ex->ToString();//System::Windows::Forms::MessageBox::Show(ex->Message->ToString());
			}
			finally
			{
				img->UnlockBits(bmData);
			}
				return TRUE;
		}
		BOOL SetImageData(byte* dataPtar,int _width,int _hight,int _widthStripStep,int _channel,bool _isTopdown)
		{
			if (dataPtar == 0 || _width < 0 || _hight < 0)
			{
				return FALSE;
			}
			CreateAdapterImage(_width,_hight);
			
			int value = 0;
			int temp = 0;
			int* dst = (int*)imgBuffer;
			if (_channel == 1)
			{
				byte* pt = dataPtar;
				for (int y = 0; y < _hight; y ++)
				{
					for (int x = 0; x < _width; x ++)
					{
						temp = pt[x];
						value = temp;
						value <<= 8;
						value |= temp;
						value <<= 8;
						value |= temp;
						*dst = value;
						dst ++;
					}
					pt += _widthStripStep;
				}
			}
			else if(_channel == 3)
			{

				byte* pt = dataPtar;
				int id = 0;
				for (int y = 0; y < _hight; y ++)
				{
					for (int x = 0,id = 0; x < _width; x ++,id += 3)
					{
						value = pt[id ];
						value <<= 8;
						value |= (int)pt[id + 1];
						value <<= 8;
						value |= (int)pt[id + 2];
						*dst = value;
						dst ++;
					}
					pt += _widthStripStep;
				}
			}
			else if (_channel == 4)
			{
				int* pt = 0;
				for (int y = 0; y < _hight; y ++)
				{
					pt = (int*)(dataPtar + _widthStripStep * y);
					for (int x = 0; x < _width; x ++)
					{
						*dst = pt[x];
						dst ++;
					}
				}

			}
			if (_isTopdown)
			{
				FlipImage();
			}
			return TRUE;
		}
		ImageAdapter()
		{
			hBitmap = NULL;
			imgBuffer = NULL;
			targetBuffer =NULL;
			colorSpaceBuffer = NULL;
#ifdef _OPEN_CV_
			imgIpl = NULL;
#endif
			width = 0;
			height = 0;
		}
		~ImageAdapter()
		{
			this->Release();
			
		}
		BOOL CreateAdapterImage(int _width,int _height)
		{
			if(hBitmap != NULL)
			{
				if(this->width == _width && this->height == _height)
					return TRUE;;
			}
			void* p = NULL;
			Release();
			HDC hdc = ::CreateCompatibleDC(NULL);
			
			hBitmap = ::CreateImage(hdc,(VOID**)&p,_width,_height);
			if(hBitmap == NULL)
				return FALSE;
			imgBuffer = (BYTE*)p;
#ifdef _OPEN_CV_
			if(imgIpl == NULL)
				imgIpl = new IplImage;
			memset(imgIpl,0,sizeof(IplImage));
			imgIpl->nSize = sizeof(IplImage);
			imgIpl->nChannels = 4;
			imgIpl->depth = IPL_DEPTH_8U;
			imgIpl->origin = 1;
			imgIpl->align = 4;
			imgIpl->width = _width;
			imgIpl->height = _height;
			imgIpl->imageSize = 4 * _width * _height;
			imgIpl->imageData = (char*) imgBuffer;
			imgIpl->imageDataOrigin = (char*)imgBuffer;
			imgIpl->widthStep = 4 * _width;
			memcpy(imgIpl->channelSeq, "RGBA", 4);
#endif
			this->width = _width;
			this->height = _height;
			targetBuffer = new BYTE[_width * _height * 4];
			return TRUE;
		}
		void ShowImage()
		{
			BasicSupport::ShowImageForm^ frm = gcnew BasicSupport::ShowImageForm();
			System::Drawing::Bitmap^ image = System::Drawing::Bitmap::FromHbitmap(this->ImageBitmap);
			frm->DisplayImage = image;
			//image->Dispose();
			frm->ShowDialog();
		}
		BYTE* ToRRGGBBPattern()
		{
			int len = width * height;
			byte* rPtr = targetBuffer;
			byte* gPtr = rPtr + len;
			byte* bPtr = gPtr + len;
			byte* pt = imgBuffer;
			for (int i = 0;i < len; i ++)
			{
				rPtr[i] = pt[2];
				gPtr[i] = pt[1];
				bPtr[i] = pt[0];
				pt += 4;
			}
			return targetBuffer;

		}
		//RRGGBB data pattern is an data arrangement in which all data of each channel are organized in consecutive memories
		//september 30th,2011,16:24
		BOOL FromRRGGBBPatternData(byte* dataPtr)
		{
			if (dataPtr == NULL)
			{
				return FALSE;
			}
			if (imgBuffer == NULL)
			{
				return FALSE;
			}
			int len = width * height;
			
			byte* rPtr = dataPtr;
			byte* gPtr = rPtr + len;
			byte* bPtr = gPtr + len;
			byte* pt = imgBuffer;
			for (int i = 0;i < len; i ++)
			{
				pt[2] = rPtr[i];
				pt[1] = gPtr[i];
				pt[0] = bPtr[i];
				pt += 4;
			}
			return TRUE;
		}
		//Scale the r,g,b value from scale 0-255 to  0-1
		//Halley September 30th, 2011 @ ShiTong L.T.D
		float* ScaleToUnit()
		{
			if (width == 0 || height == 0)
			{
				return NULL;
			}
			if(colorSpaceBuffer == NULL)
			{
				colorSpaceBuffer = new float[width * height * 3];
			}
			int len = width * height;
			byte* ptr1 = ToRRGGBBPattern();
			if (ptr1 == NULL)
			{
				return NULL;
			}
			byte* ptr2 = ptr1 + len;
			byte* ptr3 = ptr2 + len;
			float* pt1 = colorSpaceBuffer;
			float* pt2 = pt1 + len;
			float* pt3 = pt2 + len;

			for (int i = 0; i < len;i ++)
			{
				pt1[i] = (float)ptr1[i] / 255.f;
				pt2[i] = (float)ptr2[i] / 255.f;
				pt2[i] = (float)ptr3[i] / 255.f;
			}

		}
		float* ConvertToHSV()
		{
			if (width == 0 || height == 0)
			{
				return NULL;
			}
			if(colorSpaceBuffer == NULL)
			{
				colorSpaceBuffer = new float[width * height * 3];
			}
			float* ptr1 = ScaleToUnit();
			if (ptr1 == NULL)
			{
				return NULL;
			}
			int len = width * height;
			float* ptr2 = ptr1 + len;
			float* ptr3 = ptr2 + len;
			ColorSpaceConverter::RGBtoHSV(ptr1,ptr2,ptr3,ptr1,ptr2,ptr3,len);
			return ptr1;
		}
		float* ConvertToYIQ()
		{
			if (width == 0 || height == 0)
			{
				return NULL;
			}
			if(colorSpaceBuffer == NULL)
			{
				colorSpaceBuffer = new float[width * height * 3];
			}
			float* ptr1 = ScaleToUnit();
			if (ptr1 == NULL)
			{
				return NULL;
			}
			int len = width * height;
			float* ptr2 = ptr1 + len;
			float* ptr3 = ptr2 + len;
			ColorSpaceConverter::RGBtoYIQ(ptr1,ptr2,ptr3,ptr1,ptr2,ptr3,len);
			return ptr1;
		}
		float* ConvertToXYZ()
		{
			if (width == 0 || height == 0)
			{
				return NULL;
			}
			if(colorSpaceBuffer == NULL)
			{
				colorSpaceBuffer = new float[width * height * 3];
			}
			float* ptr1 = ScaleToUnit();
			if (ptr1 == NULL)
			{
				return NULL;
			}
			int len = width * height;
			float* ptr2 = ptr1 + len;
			float* ptr3 = ptr2 + len;
			ColorSpaceConverter::RGBtoXYZ(ptr1,ptr2,ptr3,ptr1,ptr2,ptr3,len);
			return ptr1;
		}
		float* ConvertToLAB()
		{
			if (width == 0 || height == 0)
			{
				return NULL;
			}
			if(colorSpaceBuffer == NULL)
			{
				colorSpaceBuffer = new float[width * height * 3];
			}
			float* ptr1 = ScaleToUnit();
			if (ptr1 == NULL)
			{
				return NULL;
			}
			int len = width * height;
			float* ptr2 = ptr1 + len;
			float* ptr3 = ptr2 + len;
			ColorSpaceConverter::RGBtoLAB(ptr1,ptr2,ptr3,ptr1,ptr2,ptr3,len);
			return ptr1;

		}
		BOOL FromHSVData(float* hsvData)
		{
			if (imgBuffer == NULL)
			{
				return FALSE;
			}
			if(colorSpaceBuffer == NULL)
			{
				colorSpaceBuffer = new float[width * height * 3];
			}
			int len = width * height;
			float* ptr1 = hsvData;
			float* ptr2 = ptr1 + len;
			float* ptr3 = ptr2 + len;
			float* pt1 = colorSpaceBuffer;
			float* pt2 = pt1 + len;
			float* pt3 = pt2 + len;

			ColorSpaceConverter::HSVtoRGB(ptr1,ptr2,ptr3,pt1,pt2,pt3,len);
			for (int i = 0;  i < len * 3; i ++)
			{
//				assert(colorSpaceBuffer[i] >=0 && colorSpaceBuffer[i] <= 1.f);
				targetBuffer[i] = (BYTE)(colorSpaceBuffer[i] * 255.f);
			}
			return FromRRGGBBPatternData(targetBuffer);
		}
		BOOL FromYIQData(float* yiqData)
		{
			if (imgBuffer == NULL)
			{
				return FALSE;
			}
			if(colorSpaceBuffer == NULL)
			{
				colorSpaceBuffer = new float[width * height * 3];
			}
			int len = width * height;
			float* ptr1 = yiqData;
			float* ptr2 = ptr1 + len;
			float* ptr3 = ptr2 + len;
			float* pt1 = colorSpaceBuffer;
			float* pt2 = pt1 + len;
			float* pt3 = pt2 + len;

			ColorSpaceConverter::YIQtoRGB(ptr1,ptr2,ptr3,pt1,pt2,pt3,len);
			for (int i = 0; i < len * 3; i ++)
			{
//				assert(colorSpaceBuffer[i] >=0 && colorSpaceBuffer[i] <= 1.f);
					targetBuffer[i] = (BYTE)(colorSpaceBuffer[i] * 255.f);
			}
			return FromRRGGBBPatternData(targetBuffer);
		}
		BOOL FromXYZData(float* xyzData)
		{
			if (imgBuffer == NULL)
			{
				return FALSE;
			}
			if(colorSpaceBuffer == NULL)
			{
				colorSpaceBuffer = new float[width * height * 3];
			}
			int len = width * height;
			float* ptr1 = xyzData;
			float* ptr2 = ptr1 + len;
			float* ptr3 = ptr2 + len;
			float* pt1 = colorSpaceBuffer;
			float* pt2 = pt1 + len;
			float* pt3 = pt2 + len;

			ColorSpaceConverter::XYZtoLAB(ptr1,ptr2,ptr3,pt1,pt2,pt3,len);
			for (int i = 0; i < len * 3; i ++)
			{
//				assert(colorSpaceBuffer[i] >=0 && colorSpaceBuffer[i] <= 1.f);
					targetBuffer[i] = (BYTE)(colorSpaceBuffer[i] * 255.f);
			}
			return FromRRGGBBPatternData(targetBuffer);
		}
		BOOL FromLABData(float* labData)
		{
			if (imgBuffer == NULL)
			{
				return FALSE;
			}
			if(colorSpaceBuffer == NULL)
			{
				colorSpaceBuffer = new float[width * height * 3];
			}
			int len = width * height;
			float* ptr1 = labData;
			float* ptr2 = ptr1 + len;
			float* ptr3 = ptr2 + len;
			float* pt1 = colorSpaceBuffer;
			float* pt2 = pt1 + len;
			float* pt3 = pt2 + len;

			ColorSpaceConverter::LABtoRGB(ptr1,ptr2,ptr3,pt1,pt2,pt3,len);
			for (int i = 0;  i < len * 3; i ++)
			{
//				assert(colorSpaceBuffer[i] >=0 && colorSpaceBuffer[i] <= 1.f);
					targetBuffer[i] = (BYTE)(colorSpaceBuffer[i] * 255.f);
			}
			return FromRRGGBBPatternData(targetBuffer);
		}
//#pragma unmanaged
		void Release()
		{
			if(hBitmap)
			{
				BOOL ret = ::DeleteObject(hBitmap);
				if(ret == FALSE)
					return;
				
				hBitmap = NULL;
				imgBuffer = NULL;
			}
			if(targetBuffer)
			{
				delete[] targetBuffer;
				targetBuffer = NULL;
			}
			if (colorSpaceBuffer)
			{
				delete[]colorSpaceBuffer;
				colorSpaceBuffer = NULL;
			}
#ifdef _OPEN_CV_
			if(imgIpl)
			{
				memset(imgIpl,0,sizeof(IplImage));
				delete imgIpl;
				imgIpl = NULL;
			}/**/
#endif
			width = 0;
			height = 0;
		}
		unsigned char* GetChannel(ChannelType id)
		{
			switch(id)
			{
			case ChannelType::RedChannel:
				{
					BYTE* pt = imgBuffer;
					for (int i = 0; i < width * height; i ++)
					{
						targetBuffer[i] = *pt;
						pt += 4;
					}
					break;
				}
			case  ChannelType::GreenChannel:
				{
					BYTE* pt = imgBuffer + 1;
					for (int i = 0; i < width * height; i ++)
					{
						targetBuffer[i] = *pt;
						pt += 4;
					}
					break;
				}
			case  ChannelType::BlueChannel:
				{
					BYTE* pt = imgBuffer + 2;
					for (int i = 0; i < width * height; i ++)
					{
						targetBuffer[i] = *pt;
						pt += 4;
					}
					break;
				}
			case ChannelType::GrayChannel:
				{
					ToGrayImage();
					BYTE* pt = imgBuffer;
					for (int i = 0; i < width * height; i ++)
					{
						targetBuffer[i] = *pt;
						pt += 4;
					}
					break;
				}
			default:
				{
					return NULL;
				}
			}
			return targetBuffer;
		}
		unsigned char* GetCompactFormat()
		{
			int* pt = (int*)imgBuffer;
			byte* dst = targetBuffer + width * height;
			int value = 0;
			for (int i = 0; i < width * height; i ++)
			{
				value = pt[i];
				
				dst[2] = (byte)value;
				value >>= 8;
				dst[1] = (byte)value;
				value >>= 8;
				dst[0] = (byte)value;
				dst += 3;
			}
			return targetBuffer + width * height;
		}
		public:
#ifdef _OPEN_CV_
		static void SaveAsGrayBmp(System::Drawing::Bitmap^ inputImage,System::String^ path)
			{
				ImageAdapter^ temp = gcnew ImageAdapter();
				temp->CreateAdapterImage(inputImage->Width,inputImage->Height);
				temp->SetImageData(inputImage);
				int index = 0;
				
				IplImage* img = ::cvCreateImage(cvSize(inputImage->Width,inputImage->Height),8, 1);
				BYTE* buffer = (BYTE*)img->imageData;
				int* pt = (int*) temp->ImageBuffer;
				index = -img->widthStep;
				int n = 0;
				for(int i = 0 ; i < inputImage->Height ; i ++)
				{
					index += img->widthStep;
					for(int j = 0;j  < inputImage->Width; j ++)
					{
						buffer[index + j] = (BYTE)pt[ i * inputImage->Width + j];
					}
				}
				::cvFlip(img);
				char p[1024];
				CommonUtil::StringConvertor::From_STRING_To_CHAR(path,p,1024);
				temp->Release();
				::cvSaveImage(p,img);
				::cvRelease((VOID**)&img);

			}
#endif
		static void GrayImage(int* data, int width, int height,short r,short g,short b)
		{
			_GrayImage(data,width,height,r,g,b);
		}
		static void AverageGrayImage(int* data,int width,int height)
		{
			short int r = 85;
			short int g = 85;
			short int b = 85;
			return GrayImage(data,width,height,r,g,b);
		}
		static void BinarizationImage(int* data,int width, int height,BYTE nMin,BYTE nMax)
		{
			_Binarization(data,width,height,nMin,nMax);
		}
		static void StandardGrayImage(int* data,int width,int height)
		{
			_StandardGrayImage(data,  width, height);
		}
		static void EdgeDetectPrewitt(int* data,int width,int height)
		{
			_EdgeDetectPrewitt( data,width,height);
		}
		static void EdgeDetectDifferential(int* data,int width,int height)
		{
			 _EdgeDetectDifferential(data,width,height);
		}
		static void TemperEdgeDetectDifferential(int* data,int* background,int width,int height)
		{
			_TemperEdgeDetectDifferential(data,background,width,height);
		}
		static void EdgeDetectCanny(int* data,int width,int height)
		{
			 _EdgeDetectCanny(data,width,height);
		}
		static void EdgeDetectDifferential2(int* data,int width,int height)
		{
			 _EdgeDetectDifferential2(data,width,height);
		}
		static void GaussianSmooth(int* data,int width,int height)
		{
			_GaussianBlurImage(data,width,height);
		}
};
	/*public ref class CVImage:public IDisposable
	{
	private:
		IplImage* cvImage;
		BOOL created;
	public:
		CVImage(IplImage* internal_image)
		{
			cvImage = internal_image;
			created = FALSE;
		}
		CVImage(char* filename)
		{
			this->Release();
			cvImage = ::cvLoadImage(filename);
			created = TRUE;
		}
		void Release()
		{
			if (!created) return;

			IplImage* ptr = cvImage;
			cvReleaseImage(&ptr);
		}
		int GetWidth()
		{
			if(cvImage)
				return cvImage->width;
			return -1;
		}
		int GetHeight()
		{
			if(cvImage)
				return cvImage->height;
			return -1;
		}
		IplImage* GetCopyImage()
		{
			if(cvImage == NULL)
				return NULL;
			
			return cvCloneImage(cvImage);
		}
		virtual ~CVImage()
		{
			this->Release();
		}
		//static CommonUtil::ImageInfo^ ConvertToHBitmap(IplImage* img)
		//{
		//	if(img == NULL)
		//		return nullptr;

		//	SIZE size = { 0, 0 };
		//	BYTE* dst_ptr = 0;
		//	size.cx = img->width;
		//	size.cy = img->height;
	
		//	CvvImage cvImg;//(*img);
		//	cvImg.CopyOf(img);
		//	
		//	HDC hdc = ::CreateCompatibleDC(NULL);
		//	HBITMAP hBitmap = ::CreateImage(hdc,(VOID**)&dst_ptr,size.cx,size.cy);
		//	if(!hBitmap)
		//		return nullptr;
		//	HGDIOBJ obj = ::SelectObject(hdc,hBitmap);
		//	RECT rect;
		//	rect.left = 0;
		//	rect.top = 0;
		//	rect.right = img->width;
		//	rect.bottom = img->height;
		//	cvImg.DrawToHDC(hdc,&rect);
		//	CommonUtil::ImageInfo^ info = gcnew CommonUtil::ImageInfo();
		//	info->buffer = dst_ptr;
		//	info->width = img->width;
		//	info->height = img->height;
		//	info->imgPtr = System::IntPtr(hBitmap);
		//	cvImg.Destroy();
		//	::DeleteDC(hdc);
		//	return info;

		//	
		//	return info;
		//}
		/*static System::Drawing::Bitmap^ ConvertToBitmap(IplImage* img)
		{
			CommonUtil::ImageInfo^ info = ConvertToHBitmap(img);
			if(info == nullptr)
				return nullptr;
			Drawing::Bitmap^ bip = Image::FromHbitmap(info->imgPtr);
			CommonUtil::ImageFunction::ReleaseImage(info->imgPtr);
			return bip;

		}
		static System::Drawing::Bitmap^ ConvertToBitmap(CVImage^ img)
		{
			return ConvertToBitmap(img->cvImage);
		}*/
	//};*/
}