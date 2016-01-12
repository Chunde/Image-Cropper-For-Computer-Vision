// CommonFunction.h

#pragma once
using namespace System;
using namespace System::Drawing;
#include "winnls.h"
namespace CommonUtil {
	public ref class Memory
	{
		
		public:static BYTE* Allacate(long ByteSize)
			   {
				   try
				   {
					   BYTE* buffer = NULL;
					   buffer = new BYTE[ByteSize];
					   return buffer;
				   }
				   catch(System::Exception^ ex)
				   {
					   System::Windows::Forms::MessageBox::Show(ex->Message->ToString());
					   return NULL;
				   }
			   }
		public:static void DeAllocate(BYTE* buffer)
			   {
				   try
				   {
					if(buffer)
					   delete[] buffer;
				   }
				   catch(System::Exception^ ex)
				   {
					   System::Windows::Forms::MessageBox::Show(ex->Message->ToString());
				   }

				   
			   }
	public:static void MemSet(BYTE* buffer,BYTE value,LONG len)
		   {
			   ::memset(buffer,value,len);
		   }
	};
	public ref class ImageInfo
	{
	public:
		ImageInfo()
		{
			imgPtr =System::IntPtr::Zero;
			width = 0;
			height = 0;
			buffer = NULL;
		};
		~ImageInfo()
		{
			if((VOID*)imgPtr)
				::DeleteObject((HGDIOBJ)imgPtr);
		}
		void Release()
		{
			if((VOID*)imgPtr)
				::DeleteObject((HGDIOBJ)imgPtr);
		}
	public:
		System::IntPtr imgPtr;
		int width;
		int height;
		BYTE* buffer;
		/*property System::IntPtr ImageHandle
		{
			System::IntPtr get()
			{return imgPtr;}
		}
		property System::Int32 Height
		{
			System::Int32 get()
			{
				return height;
			}
		}
		property System::Int32 Width
		{
			System::Int32 get()
			{
				return width;
			}
		}

		property System::IntPtr DataBuffer
		{
			System::IntPtr get()
			{
				return System::IntPtr(buffer);
			}
		}*/
	//	friend class ImageFunction;

	};
	public class UnManager
	{
		public:static HBITMAP CreateImage(HDC hDC, VOID** pBuf,LONG nWidth, LONG nHeight)
			{
				BITMAPINFO info;
				::ZeroMemory(&info,sizeof(info));

				info.bmiHeader.biSize = sizeof(info);
				info.bmiHeader.biBitCount = 32;
				info.bmiHeader.biWidth = nWidth;
				info.bmiHeader.biHeight = nHeight;
				info.bmiHeader.biPlanes = 1;
				info.bmiHeader.biCompression = BI_RGB;
				info.bmiHeader.biSizeImage = 0;

				return ::CreateDIBSection(hDC,&info,DIB_RGB_COLORS,pBuf,NULL,NULL);
			}
		public:static HBITMAP CreateImage(int Width,int Height,BYTE*& DataBuffer)
		   {
				HDC hdc = CreateCompatibleDC(NULL);
				BITMAPINFO bitInfo;
				::ZeroMemory(&bitInfo,sizeof(BITMAPINFO));
				bitInfo.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
				bitInfo.bmiHeader.biWidth = Width;
				bitInfo.bmiHeader.biHeight = Height;
				bitInfo.bmiHeader.biPlanes = 1;
				bitInfo.bmiHeader.biBitCount = 32;
				bitInfo.bmiHeader.biCompression = BI_RGB;
				HBITMAP hBitmap = ::CreateDIBSection(hdc,&bitInfo,DIB_RGB_COLORS,(VOID**)&DataBuffer,0,0);
						
				return hBitmap;

		   }
		//public:static ImageDescriptor CreateImage(LPCTSTR filename)
		//		{
		//			ImageDescriptor des;
		//			::ZeroMemory(&des,sizeof(ImageDescriptor));
		//			CImage img;
		//			img.Load(filename);
		//			if(img.IsNull())
		//				return des;

		//			HDC hdc = img.GetDC();

		//			BYTE* p = (BYTE*)img.GetBits();
		//			LONG ww = img.GetWidth();
		//			LONG hh = img.GetHeight();
		//			HBITMAP hbitmap = NULL;
		//			BYTE* buffer = NULL;
		//			hbitmap = CreateImage(hdc,(VOID**)&buffer,ww,hh);
		//			HDC dc = ::CreateCompatibleDC(hdc);
		//			HGDIOBJ obj = ::SelectObject(dc,hbitmap);
		//			int flag = img.Draw(dc,0,0,ww,hh);
		//			::SelectObject(dc,obj);
		//			
		//		des.bitmap = hbitmap;
		//		des.buffer = buffer;
		//		des.width = ww;
		//		des.height = hh;
		//		img.ReleaseDC();
		//		img.Destroy();
		//		return des;
		//			
		//		}//create image
		
	};
	public ref class StringConvertor
	{
		public: static void From_CHAR_To_WCHAR(char* str,wchar_t* w,int bufferLen)
			{
				int len = strlen(str) + 1;
				//const int newlen = 1024;
				//wchar_t w[newlen];
				size_t convertedChars = 0;

				mbstowcs_s(&convertedChars, w, bufferLen, str, _TRUNCATE);
				//return w;
				
			}
		public:static void  From_WCHAR_To_CHAR(wchar_t* orig,char* c,int bufferLen)
			   {
				   WideCharToMultiByte(CP_ACP,  WC_COMPOSITECHECK,orig,-1,c,bufferLen,NULL,NULL);

			   }
		public:static System::String^ From_CHAR_To_STRING(char* ch)
			   {
				   return gcnew System::String(ch);
			   }
		public: static void From_STRING_To_CHAR(System::String^ orig,char* nstring,int newsize)
			   {
				  
				   
					pin_ptr<const wchar_t> wch =PtrToStringChars(orig);

					WideCharToMultiByte(CP_ACP,  WC_COMPOSITECHECK,wch,-1,nstring,newsize,NULL,NULL);

					
			   }
		public:static void From_STRING_To_WCHAR(System::String^ orig,wchar_t* nstring,int len)
		   {
				//wchar_t wcstring[newsize];
			   pin_ptr<const wchar_t> wch = PtrToStringChars(orig);


				wcscpy_s(nstring,len,wch);
	
		   }
		public:static System::String^ From_CSTRING_to_STRING(CString str)
			   {
				   return gcnew System::String(str);
			   }
		public:static void  From_CSTRING_to_CHAR(CString str,char* ch,int bufferLen)
		   {
			   wchar_t* wc =  str.GetBuffer();
			   From_WCHAR_To_CHAR(wc,ch,bufferLen);
		   }
	};



	public ref class ImageFunction
	{
		//for dot net release
		public:static void ReleaseImage(System::IntPtr ptr)
		   {
			   System::Int32 bitmap = (System::Int32) ptr;
			   HBITMAP hbitmap = (HBITMAP) bitmap;
			   try
			   {
				   if(!::DeleteObject(hbitmap))
					   throw gcnew System::Exception(L"Delete bitmap object failed");
			   }
			   catch(System::Exception^ ex)
			   {
				   System::Windows::Forms::MessageBox::Show(ex->Message->ToString());
			   }
		   }
		public:static HBITMAP CreateImage(int Width,int Height,BYTE*& DataBuffer)
		   {
				HDC hdc = CreateCompatibleDC(NULL);
				BITMAPINFO bitInfo;
				::ZeroMemory(&bitInfo,sizeof(BITMAPINFO));
				bitInfo.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
				bitInfo.bmiHeader.biWidth = Width;
				bitInfo.bmiHeader.biHeight = Height;
				bitInfo.bmiHeader.biPlanes = 1;
				bitInfo.bmiHeader.biBitCount = 32;
				bitInfo.bmiHeader.biCompression = BI_RGB;
				HBITMAP hBitmap = ::CreateDIBSection(hdc,&bitInfo,DIB_RGB_COLORS,(VOID**)&DataBuffer,0,0);
						
				return hBitmap;

		   }
		//public:static void CreateImageSize(int Width,int Height,void* t)
		//   {
		//	   ImageDescriptor* s = (ImageDescriptor*) t;
		//	   BYTE* Buffer = NULL;
		//	   HBITMAP hbitmap = CreateImage(Width,Height,Buffer);
		//	   s->buffer = (VOID*)Buffer;
		//	   s->bitmap = hbitmap;
		//	   s->width = Width;
		//	   s->height = Height;
		//	   //return s;
		//   }
		/*public:static void CreateImageFromFile(char* str,void* t)
		   {
			   wchar_t w[256];
			   StringConvertor::From_CHAR_To_WCHAR(str,w,256);
			   ImageDescriptor* s = (ImageDescriptor*) t;

			   *s = UnManager::CreateImage(w);

		   }*/
		public:static void  CreateImageFromFile(CString str,void* s)
		   {
			   char ch[1024];
				   StringConvertor::From_CSTRING_to_CHAR(str,ch,1024);
				 CreateImageFromFile(ch,s);
			   
		   }
		public:static void CreateImageFromFile(System::String ^ str,void* s)
		   {
			   char ch[1024];
				StringConvertor::From_STRING_To_CHAR(str,ch,1024);
				return CreateImageFromFile(ch,s);
			 
		   }
		public:static System::IntPtr CreateImageCRL(int Width,int Height,BYTE* DataBuffer)
		   {
			   HBITMAP hBitmap = CreateImage(Width,Height,DataBuffer);
			   return System::IntPtr(hBitmap);
		   }
		/*public:static CommonUtil::ImageInfo^ CreateImageFromFile(System::String^ fileName)
		   {
				wchar_t ch[256];
				StringConvertor::From_STRING_To_WCHAR(fileName,ch,256);
				ImageDescriptor des = UnManager::CreateImage(ch);
				ImageInfo^ info = gcnew ImageInfo();
				info->buffer = (BYTE*)des.buffer;
				info->width = des.width;
				info->height = des.height;
				info->imgPtr = (System::IntPtr) des.bitmap;
				return info;
		   }*/
		
	};
	public ref class ColorSpace
	{
		public:
			/*void GetColorHSL(int color,double& hue,double& bright,double& saturation)
			{
				
					
				static double ic = 0.57735026918962576450914878050196;
				int ib = color & 0xFF;
				int ig = ((color & 0xFF00) >> 8);
				int ir = ((color & 0xFF0000) >> 16);
				double b = (double)ib;
				double g = (double)ig;
				double r = (double)ir;
				if((color & 0xFF000000) == 0)
				{
					hue = 0;
				}
				else
				{

					double m = 0;

					m = r * ic + g * ic + b * ic;

					r -= m * ic;
					g -= m * ic;
					b -= m * ic;

					m = b * b + g * g + r * r;
					m = sqrt(m);

					b /= m;
					r /= m;
					g /= m;

					double r0 = 1;
					double g0 = 0;
					double b0 = 0;

					m = r0 * ic + g0 * ic + b0 * ic;

					r0 -= m * ic;
					g0 -= m * ic;
					b0 -= m * ic;

					m = b0 * b0 + g0 * g0 + r0 * r0;
					m = sqrt(m);

					b0 /= m;
					r0 /= m;
					g0 /= m;

					hue = acos(r * r0  + b * b0 + g * g0);

				}
				
			}*/
			static void RGB2HSL(int color, double &H,double &S,double &L)
			{
				double R,G,B,Max,Min,del_R,del_G,del_B,del_Max;
				R = ((color & 0x00FF0000 )>> 16) / 255.0;       
				G = ((color & 0xFF00) >> 8) / 255.0;
				B = (color & 0xFF) / 255.0;

				Min = min(R, min(G, B));   
				Max = max(R, max(G, B));  
				del_Max = Max - Min;       

				L = (Max + Min) / 2.0;

				if (del_Max == 0)          
				{
					
					H = 0;                  
					S = 0;
				}
				else                        
				{
					if (L < 0.5) S = del_Max / (Max + Min);
					else         S = del_Max / (2 - Max - Min);

					del_R = (((Max - R) / 6.0) + (del_Max / 2.0)) / del_Max;
					del_G = (((Max - G) / 6.0) + (del_Max / 2.0)) / del_Max;
					del_B = (((Max - B) / 6.0) + (del_Max / 2.0)) / del_Max;

					if      (R == Max) H = del_B - del_G;
					else if (G == Max) H = (1.0 / 3.0) + del_R - del_B;
					else if (B == Max) H = (2.0 / 3.0) + del_G - del_R;
					H += 0.001;
					if (H < 0)  H += 1;
					if (H > 1)  H -= 1;
				}
			}
			static int HSL2RGB(double H,double S,double L)
			{
				double R,G,B;
				double var_1, var_2;
				if (S == 0)                      
				{
					R = L * 255.0;                   
					G = L * 255.0;
					B = L * 255.0;
				}
				else
				{
					if (L < 0.5) var_2 = L * (1 + S);
					else         var_2 = (L + S) - (S * L);

					var_1 = 2.0 * L - var_2;

					R = 255.0 * Hue2RGB(var_1, var_2, H + (1.0 / 3.0));
					G = 255.0 * Hue2RGB(var_1, var_2, H);
					B = 255.0 * Hue2RGB(var_1, var_2, H - (1.0 / 3.0));
				}
				return (RGB(R,G,B));
			}
			static double Hue2RGB(double v1, double v2, double vH)
			{
				if (vH < 0) vH += 1;
				if (vH > 1) vH -= 1;
				if (6.0 * vH < 1) return v1 + (v2 - v1) * 6.0 * vH;
				if (2.0 * vH < 1) return v2;
				if (3.0 * vH < 2) return v1 + (v2 - v1) * ((2.0 / 3.0) - vH) * 6.0;
				return (v1);
			}


	};
}
