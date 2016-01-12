#pragma once
#include "StdAfx.h"
#include <cv.h>
#include <cxcore.h>
#include <highgui.h>
#include <vcclr.h>
#include "CvCaptureDevice.h"

	//CvCaptureDevice::CvCaptureDevice()
	//{
	//}
	//CvCaptureDevice::CvCaptureDevice(int cameraID)
	//{
	//	capDev = cvCreateCameraCapture(cameraID);
	//}
	//CvCaptureDevice::CvCaptureDevice(System::String^ fileName)
	//{
	//	System::String^ ext = System::IO::Path::GetExtension(fileName);
	//	if(ext->ToUpper()->CompareTo(".AVI") == 0)
	//	{
	//		char ch[256];
	//		Common::StringConvertor::From_STRING_To_CHAR(fileName,ch,256);
	//		capDev = cvCreateFileCapture(ch);
	//	}

	//}

	//void CvCaptureDevice::Release()
	//{
	//	if(capDev != NULL)
	//	{
	//		cvReleaseCapture(&capDev);
	//		capDev = NULL;
	//	}

	//}
	//BOOL CvCaptureDevice::GrabFrame()
	//{
	//	if(cvGrabFrame(capDev) == 0)
	//		return FALSE;
	//	else
	//		return TRUE;
	//}