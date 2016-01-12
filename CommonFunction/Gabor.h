#pragma once

#define pi  3.14159265358979323846264338327
#include "FFT.H"
namespace CommonUtil
{
	public enum class ViewStyle
	{

		RealMode = 0,
		ImageMode = 1,
		MagnitudeMode = 2
	};

	public  ref class GaborFilter
	{
	private:
		int off;
		int color;
		int scaleCount;
		int orientCount;
		int frameWidth;
		int frameHeight;


		BOOL flag;
		Complex*** FilterArray;
		Complex* imageBackBuffer;
		Complex* imageWorkBuffer;
		int frameSize;
		HBITMAP realBitmap;
		HBITMAP imageBitmap;
		HBITMAP magnitudeBitmap;

		BYTE* featureData;
		HBITMAP featureBitmap;

		double* featureBuffer;
		CFFT FFT;

		//Complex* wTemp;
	public:
		GaborFilter(void);
		~GaborFilter(void);
		void Comfigure(int size);
		void Comfigure(int scale,int orient,int w,int h);
		static void DoubleToImage(double* src,BYTE* des,int width,int height);
		static void DoubleToImage(double* scr,BYTE* des,int width,int height,ViewStyle style);
		static void ComplexToImage(Complex* src,BYTE* des,int width,int height,ViewStyle style);

		HBITMAP GetRealPartImage();
		HBITMAP GetImagePartImage();
		HBITMAP GetMagnitudeImage();
		HBITMAP GetImage(ViewStyle style);

		HBITMAP GetFeatureImage(double* featureBuffer);
		HBITMAP GetFeatureImage(BYTE* imageData,ViewStyle style);
		HBITMAP GetFeatureImage(BYTE* imageData,int scaleIndex,int orientIndex,ViewStyle style);
		//void GetFeatureImage(BYTE* imageData,int scaleIndex,int orientIndex,ViewSytle style);
		System::IntPtr getFeatureImage(BYTE* imageData,ViewStyle style);
		System::IntPtr getFeatureImage(BYTE* imageData,int scaleIndex,int orientIndex,ViewStyle style);
		System::IntPtr getRealPartImage();
		System::IntPtr getImagePartImage();
		System::IntPtr getMagnitudeImage();
		System::IntPtr getFeatureImage(double* featureBuffer);

		
		void FilterImage(Complex* dataBuffer,int scaleIndex,int orientIndex,BOOL PressessedFlag/*数据是否事先有做过FFT变换*/);
		void FilterImage(BYTE* imageData,Complex* outputBuffer,int scaleIndex,int orientIndex);
		void GetFeature(Complex* imageData,double* featureBuffer,ViewStyle style);
		void GetFeature(BYTE* imageData,double* featureBuffer);
		void FlipImage(BYTE* imageData);
	private:
		void inline GetFeature(double* featureBuffer,int scaleIndex,int orientIndex,ViewStyle style);
		void GenerateFilter(int size);
		void GenerateFilter(int w,int h);
		void FromBackBufferToWorkBuffer();
		void Release();
	};

	}