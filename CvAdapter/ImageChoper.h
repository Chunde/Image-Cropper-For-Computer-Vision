#pragma once
using namespace System;
#include "CVImage.h"

namespace CvAdapter {
	public ref class ImageChoper
	{
	private:
		int wide;
		int high;
		int eyeDis;
		int topDis;
		int flag;
		ImageAdapter^ imageAdapter;
	public:
		property int Width
		{
			int get()
			{
				return wide;
			}
		}
		property int Height
		{
			int get()
			{
				return high;
			}
		}
	public:
		ImageChoper()
		{
			wide = 96;
			high = 96;
			flag = FALSE;
			eyeDis = (int)( 64.0 / 2.28);
			topDis = (int)((double) eyeDis * 0.43);
			imageAdapter = gcnew ImageAdapter();
		}
	public:
		void Configure(int w,int h,int ed,int td)
		{
			if(w < 0 || h < 0 || ed < 0 || td < 0)
				return;
			if(ed > w)
				return;
			if(td > h)
				return;
			wide = w;
			high = h;
			eyeDis = ed;
			topDis = td;
			imageAdapter->CreateAdapterImage(w,h);
			flag = TRUE;
		}
		void Configure(int w,int h)
		{
			int ed = (int)((double) w / 2.28);
			int td = (int)((double)ed  * 0.43);
			Configure(w,h,ed,td);
		}
		System::Drawing::Bitmap^ GetNomalizedImage(System::Drawing::Bitmap^ inputBitmap,int x1,int x2,int y1,int y2)
		{
			
			ImageAdapter^ ada = gcnew ImageAdapter();
			ada->CreateAdapterImage(inputBitmap->Width,inputBitmap->Height);
			ada->SetImageData(inputBitmap->GetHbitmap(),true);
			
			System::Drawing::Bitmap^ bitmap = this->GetNomalizedImage(ada,x1,x2,y1,y2);
			
			 //System::Drawing::Bitmap::FromHbitmap(imageAdapter->ImageBitmap);
			ada->Release();
			return bitmap;
			
		}
		void GetNomalizeImageGrayData(System::Drawing::Bitmap^ inputBitmap,array<System::Byte,1>^ outData, int x1,int x2,int y1,int y2)
		{
			if(outData->Length != wide * high)
				throw gcnew System::Exception(L"Invalide Output Buffer");

			ImageAdapter^ ada = gcnew ImageAdapter();
			ada->CreateAdapterImage(inputBitmap->Width,inputBitmap->Height);
			ada->SetImageData(inputBitmap->GetHbitmap(),true);
			NomalizeImage(ada,x1,x2,y1,y2);
			int* pt = (int*)imageAdapter->ImageBuffer;
			int t = 0;
			for(int i = 0; i < outData->Length;i++)
			{
				t = pt[i];
				outData[i] = (byte)t;
			}
			ada->Release();

		}
		void GetNomalizeImageGrayData(System::Drawing::Bitmap^ inputBitmap,System::IntPtr outData, int x1,int x2,int y1,int y2)
		{
			ImageAdapter^ ada = gcnew ImageAdapter();
			ada->CreateAdapterImage(inputBitmap->Width,inputBitmap->Height);
			ada->SetImageData(inputBitmap->GetHbitmap(),true);
			NomalizeImage(ada,x1,x2,y1,y2);
			int* pt = (int*)imageAdapter->ImageBuffer;
			int add = (int)outData;
			BYTE* outByte = NULL;
			outByte=(BYTE*)add;
			for(int i = 0; i < wide * high;i++)
			{
				outByte[i] = (byte)pt[i];
			}
			ada->Release();

		}
		void NomalizeImage(ImageAdapter^ workAdapter,int x1,int x2,int y1,int y2)
		{
			if(flag == FALSE)
				throw gcnew System::Exception(L"Please configure the image nomalizer!");
			
			SIZE size;
			SIZE size1;
			size1.cx = wide;
			size1.cy = high;
			size.cx = workAdapter->Width;
			size.cy = workAdapter->Height;
			POINT pt1;
			POINT pt2;
			pt1.x = x1;
			pt1.y = y1;
			pt2.x = x2;
			pt2.y = y2;
			int* srcBuf = (int*)workAdapter->ImageBuffer;
			int* desBuf = (int*)imageAdapter->ImageBuffer;
			//ChopNomalImage(srcBuf,size,desBuf,pt1,pt2);
			this->NomalizeImage(srcBuf,size,desBuf,size1,pt1,pt2,eyeDis,topDis);

		}
		System::Drawing::Bitmap^ GetNomalizedImage(ImageAdapter^ workAdapter,int x1,int x2,int y1,int y2)
		{
			NomalizeImage(workAdapter,x1,x2,y1,y2);
			System::Drawing::Bitmap^ bitmap =  System::Drawing::Bitmap::FromHbitmap(imageAdapter->ImageBitmap);
			return bitmap;
			
		}
		

	public:
		static void ChopNomalImage(int* srcData,SIZE srcSize,int* desData,POINT leftPoint,POINT rightPoint)
		{
			static const double hD = 0.64;
			static const double tD = 0.43;
			static const double bD = 0.185;
			double difX = (double)(rightPoint.x - leftPoint.x) ;
			double difY = (double)(rightPoint.y - leftPoint.y);
			double disEye = sqrt(difX * difX + difY * difY);
			double EyeLen = 64.0 / 2.28;
			double scaleRate =   disEye/EyeLen;

			double v_X = difX / disEye;
			double v_Y = difY / disEye;
			double v_rotX = 0.43 * v_Y - 0.64 * v_X;
			double v_rotY = -0.43 * v_X - 0.64 * v_Y;

			int rotX = leftPoint.x + (int)(disEye * v_rotX);
			int rotY = leftPoint.y + (int)(disEye * v_rotY);

			double cosP = scaleRate * v_X;
			double sinP = -scaleRate * v_Y;

			int X0 = 0;
			int Y0 = 0;
			for(int y = 0; y < 64; y ++)
			{
				for(int x = 0;x < 64; x ++)
				{
					X0 = (int)(x * cosP + y * sinP) + rotX;
					Y0 = (int)(y * cosP - x * sinP) + rotY;
					if(Y0 < 0 || X0 < 0 || X0 > srcSize.cx - 1 || Y0 > srcSize.cy - 1)
						desData[(64 - 1 - y) * 64 + x] = 0;
					else
						desData[(64 - 1 - y) * 64 + x] = srcData[(srcSize.cy - 1 - Y0) * srcSize.cx + X0];
				}
			}



		}
		static void NomalizeImage(int* srcData,SIZE srcSize,int* desData,SIZE desSize,POINT leftPoint,POINT rightPoint,int eyeDistance,int topDistance)
		{
			if(leftPoint.x > rightPoint.x)
			{
				POINT pt = leftPoint;
				leftPoint = rightPoint;
				rightPoint = pt;
			}
			 double hD = 0.0;
			 double tD = 0.0;
			 tD = (double)topDistance/(double) eyeDistance;
			 hD = (double)(( desSize.cx - eyeDistance)/2)/eyeDistance;
			double difX = (double)(rightPoint.x - leftPoint.x) ;
			double difY = (double)(rightPoint.y - leftPoint.y);
			double disEye = sqrt(difX * difX + difY * difY);
			double EyeLen = eyeDistance;
			double scaleRate =   disEye/EyeLen;

			double v_X = difX / disEye;
			double v_Y = difY / disEye;
			double v_rotX = tD * v_Y - hD * v_X;
			double v_rotY = -tD * v_X - hD * v_Y;

			int rotX = leftPoint.x + (int)(disEye * v_rotX);//计算出左顶点的坐标，然后绕这个点旋转。
			int rotY = leftPoint.y + (int)(disEye * v_rotY);

			double cosP = scaleRate * v_X;
			double sinP = -scaleRate * v_Y;

			int X0 = 0;
			int Y0 = 0;
			for(int y = 0; y < desSize.cy; y ++)
			{
				for(int x = 0;x < desSize.cx; x ++)
				{
					X0 = (int)(x * cosP + y * sinP) + rotX;
					Y0 = (int)(y * cosP - x * sinP) + rotY;
					if(Y0 < 0 || X0 < 0 || X0 > srcSize.cx - 1 || Y0 > srcSize.cy - 1)
						desData[(desSize.cy - 1 - y) * desSize.cx + x] = 0;
					else
						desData[(desSize.cy - 1 - y) * desSize.cx + x] = srcData[(srcSize.cy - 1 - Y0) * srcSize.cx + X0];
				}
			}




		}
		static void NomalizeImage(int* srcData,SIZE srcSize,int* desData,SIZE desSize,POINT leftPoint,POINT rightPoint,int eyeDistance)
		{
			int topDis = (int)((double)eyeDistance * 0.43);
			NomalizeImage(srcData,srcSize,desData,desSize,leftPoint,rightPoint,eyeDistance,topDis);

		}
		static CvAdapter::ImageAdapter^ GetChopedImage(System::Drawing::Bitmap^ inputBitmap,int x1,int x2,int y1,int y2)
		{
			ImageAdapter^ ada = gcnew ImageAdapter();
			ada->CreateAdapterImage(inputBitmap->Width,inputBitmap->Height);
			ada->SetImageData(inputBitmap->GetHbitmap(),true);
			ImageAdapter^ des = gcnew ImageAdapter();
			des->CreateAdapterImage(64,64);
			SIZE size;
			size.cx = inputBitmap->Width;
			size.cy = inputBitmap->Height;
			POINT pt1;
			POINT pt2;
			pt1.x = x1;
			pt1.y = y1;
			pt2.x = x2;
			pt2.y = y2;
			int* srcBuf = (int*)ada->ImageBuffer;
			int* desBuf = (int*)des->ImageBuffer;
			ChopNomalImage(srcBuf,size,desBuf,pt1,pt2);
			ada->Release();
			return des;
		}
		static System::Drawing::Bitmap^ GetChopBitmap(System::Drawing::Bitmap^ inputBitmap,int x1,int x2,int y1,int y2)
		{
			CvAdapter::ImageAdapter^ ada = GetChopedImage( inputBitmap, x1, x2, y1, y2);
			System::Drawing::Bitmap^ bitmap =  System::Drawing::Bitmap::FromHbitmap(ada->ImageBitmap);
			return bitmap;
		}

	};

}