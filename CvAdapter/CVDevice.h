#pragma once
#include "FaceDetector.h"
using namespace System;

namespace CvAdapter {

	public ref class CVDevice:public IDisposable
	{
	private:
		CvCapture* capDev;
		FaceDetector^ faceDetector;
		//CvAdapter::ImageAdapter^ imgAdapter;
		BYTE* DetectResult;

	public:
		~CVDevice()
		{
			this->Release();
		}
		CVDevice()
		{
			this->Release();
			capDev = NULL;
			faceDetector = nullptr;
			//imgAdapter = nullptr;
			capDev = ::cvCreateCameraCapture(CV_CAP_ANY);
			if(capDev == NULL)
				{
					throw gcnew System::Exception("Open Vedio device failed!");
				}
			DetectResult = new BYTE[sizeof(CvAdapter::Result) * 512];
		}
		CVDevice(int camID)
		{
			this->Release();
			capDev = cvCreateCameraCapture(camID);
			if(capDev == NULL)
				{

					throw gcnew System::Exception("Create Capture from file failed!");
				}
			DetectResult = new BYTE[sizeof(CvAdapter::Result) * 512];
		}
		CVDevice(String^ filename)
		{
			this->Release();
			String^ ext = System::IO::Path::GetExtension(filename);
			if(ext->ToUpper()->CompareTo(".AVI") == 0)
			{
				char ch[256];
				capDev = NULL;
				CommonUtil::StringConvertor::From_STRING_To_CHAR(filename,ch,256);
				capDev = cvCreateFileCapture(ch);
				if(capDev == NULL)
				{
					throw gcnew System::Exception("Create Capture from file failed!");
				}
			}
			DetectResult = new BYTE[sizeof(CvAdapter::Result) * 512];

			
		}
	public:
		FaceDetector^ GetFaceDetector()
		{
			return faceDetector;
		}
		int GetFPS()
		{
			if(capDev == NULL)
				return 0;
				
				return (int) cvGetCaptureProperty(capDev, CV_CAP_PROP_FPS);

		}
		int GetFrameWidth()
		{
			if(capDev == NULL)
				return 0;
			return (int) cvGetCaptureProperty(capDev,CV_CAP_PROP_FRAME_WIDTH);
		}
		int GetFrameHeight()
		{
			if(capDev == NULL)
				return 0;
			return (int) cvGetCaptureProperty(capDev,CV_CAP_PROP_FRAME_HEIGHT);
		}
		void Release()
		{
			if(capDev)
			{
				pin_ptr<CvCapture*> cap = &capDev;
				::cvReleaseCapture(cap);
				capDev = NULL;
			}
			if(DetectResult)
			{
				delete[] DetectResult;
				DetectResult = NULL;
			}

		}
		BOOL GrabFrame()
		{
			if(capDev)
			{
				if(::cvGrabFrame(capDev) == 0)
					return FALSE;
				return TRUE;
			}
			return FALSE;
		}
		void ConfigureFaceDetector(String^ path,int DetectSize/*,int ImageSize*/)
		{
			if(faceDetector == nullptr)
			{
				faceDetector = gcnew CvAdapter::FaceDetector();
				
			}
			//if(imgAdapter == nullptr)
			//{
			//	imgAdapter = gcnew CvAdapter::ImageAdapter();
			//	imgAdapter->CreateAdapterImage(ImageSize,ImageSize);
			//}
			faceDetector->Configure(path,DetectSize/*,this->GetFrameWidth(),this->GetFrameHeight()*/);
		}
		System::Drawing::Bitmap^ RetrieveFrame()
		{
			IplImage* frame = ::cvQueryFrame(capDev);
			if(frame == NULL)
				return nullptr;
			return CVImage::ConvertToBitmap(frame);
		}
		System::Drawing::Bitmap^ RetrieveFrame(int cx,int cy)
		{
			if(cx < 1 || cy < 1)
				return nullptr;
			IplImage* frame = ::cvQueryFrame(capDev);
			if(frame == NULL)
				return nullptr;
			IplImage* temp = ::cvCreateImage(cvSize(cx,cy),frame->depth,frame->nChannels);
			if(temp == NULL)
				return nullptr;
			::cvResize(frame,temp,CV_INTER_LINEAR);
			if(temp->origin == IPL_ORIGIN_TL)
				::cvFlip(temp);
			System::Drawing::Bitmap^ bitmap = CVImage::ConvertToBitmap(temp);
			::cvReleaseImage(&temp);
			return bitmap;

		}
		System::Drawing::Bitmap^ RetrieveDetectedFrame([Runtime::InteropServices::Out] array<System::Drawing::Rectangle^>^ %rect,
			[Runtime::InteropServices::Out] int64 %DetectTime,bool DrawInteral)
		{
			  static CvScalar colors[] = 
				 {
					{{0,0,255}},
					{{0,128,255}},
					{{0,255,255}},
					{{0,255,0}},
					{{255,128,0}},
					{{255,255,0}},
					{{255,0,0}},
					{{255,0,255}}
				 };
			  static double frequence = cvGetTickFrequency() * 1000.0;
			  int64 time = ::cvGetTickCount();
			if(this->faceDetector == nullptr)
				return nullptr;
			IplImage* frame = ::cvQueryFrame(capDev);
			if(frame == NULL)
				return nullptr;
			CvSeq* faces = faceDetector->DetectFace(frame);
			if(faces->total != 0)
			{
					rect = gcnew array<System::Drawing::Rectangle^>(faces->total);
					CvRect* r = NULL;
					CvPoint pt1,pt2;
					for(int i = 0; i < faces->total; i ++)
					   {
						   r = (CvRect*)::cvGetSeqElem(faces,i);
						   if(DrawInteral)
						   {
						   pt1.x =  r->x;
						   pt1.y =  frame->height - r->y;
						   pt2.x=	r->x + r->width;
						   pt2.y = frame->height - r->y - r->height;
						   ::cvDrawCircle(frame,pt1,5,colors[5],4);
						   ::cvDrawCircle(frame,pt2,5,colors[0],4);
						   ::cvDrawRect(frame,pt1,pt2,colors[i % 8]);
						   
						   }
						   
						   rect[i] = gcnew System::Drawing::Rectangle(r->x,r->y,r->width,r->height);
					}
			}
			DetectTime = (int64)((double)(::cvGetTickCount() - time)  / frequence); 
			return CVImage::ConvertToBitmap(frame);
		}


		System::Drawing::Bitmap^ RetrieveDetectedFrame([Runtime::InteropServices::Out] array<CvAdapter::DetectResult^>^ %DetectedResult,
			[Runtime::InteropServices::Out] int64 %DetectTime,bool DrawInteral)
		{
			static CvScalar colors[] = 
				 {
					{{0,0,255}},
					{{0,128,255}},
					{{0,255,255}},
					{{0,255,0}},
					{{255,128,0}},
					{{255,255,0}},
					{{255,0,0}},
					{{255,0,255}}
				 };
			  static double frequence = cvGetTickFrequency() * 1000.0;
			  int64 time = ::cvGetTickCount();
			if(this->faceDetector == nullptr)
				return nullptr;
			IplImage* frame = ::cvQueryFrame(capDev);
			if(frame == NULL)
				return nullptr;
			//BYTE* result = new BYTE[sizeof(CvAdapter::Result) * 128];
			int n = faceDetector->DetectFaceAndEyes(frame,(int*)DetectResult);
			
			DetectedResult = gcnew array<CvAdapter::DetectResult^>(n);
			Result* R = (Result*)DetectResult;
			for(int i = 0; i < n ; i ++)
			{
				DetectedResult[i] = gcnew CvAdapter::DetectResult();
				  DetectedResult[i]->x1 = R[i].x1;
				  DetectedResult[i]->x2 = R[i].x2;
				  DetectedResult[i]->y1 = R[i].y1;
				  DetectedResult[i]->y2 = R[i].y2;
				  DetectedResult[i]->left = R[i].left;
				  DetectedResult[i]->top = R[i].top;
				  DetectedResult[i]->right = R[i].right;
				  DetectedResult[i]->bottom = R[i].bottom;
			}
			if(DrawInteral)
			{
				CvPoint pt1,pt2;


				for(int i = 0; i < n; i ++)
				{
					pt1.x = R[i].x1 + R[i].left;
					pt2.x = R[i].x2 + R[i].left;
					pt1.y = frame->height  - (R[i].y1 + R[i].top);
					pt2.y = frame->height - (R[i].y2 + R[i].top);

				   ::cvDrawCircle(frame,pt1,3,colors[i % 8]);
				   ::cvDrawCircle(frame,pt2,3,colors[i % 8]);
				   pt1.x = R[i].left;
				   pt1.y = frame->height - R[i].top;
				   pt2.x = R[i].right;
				   pt2.y = frame->height  - R[i].bottom;
				   ::cvDrawRect(frame,pt1,pt2,colors[i % 8]);
				}
			}

			//delete[] result;

			return CVImage::ConvertToBitmap(frame);
		}

	};
}