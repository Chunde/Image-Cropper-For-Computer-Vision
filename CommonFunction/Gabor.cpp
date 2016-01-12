#include "StdAfx.h"
#include "Gabor.h"
#include "math.h"
#include "Common.h"
namespace CommonUtil

{
	GaborFilter::GaborFilter(void)
	{
	
		frameSize = -1;
		scaleCount = 5;
		orientCount = 8;
		frameWidth = 64;
		frameHeight = 64;
		flag = FALSE;
		realBitmap = NULL;
		imageBitmap = NULL;
		magnitudeBitmap = NULL;
		featureBitmap = NULL;
		imageBackBuffer = NULL;
		imageWorkBuffer = NULL;
		featureData = NULL;
		featureBuffer = NULL;
		FilterArray = NULL;
		off = 3;
		color = 0x00ff0000;
	}
	GaborFilter::~GaborFilter(void)
	{
		this->Release();

	}

	void GaborFilter::Comfigure(int scale,int orient,int w,int h)
	{

		if(scale < 0 || orient < 0 || w < 0 || h < 0)
			throw gcnew System::Exception(L"Configure parameters error.");
		this->Release();
		//#pragma unmanaged
		this->FilterArray = new Complex**[scale];
		for(int i = 0;i < scale; i ++)
			FilterArray[i] = new Complex*[orient];
		for(int i = 0;i < scale; i ++)
			for(int j = 0; j < orient;j ++)
				FilterArray[i][j] = NULL;
		frameWidth = w;
		frameHeight = h;
		scaleCount = scale;
		orientCount = orient;
		for(int i = 0 ; i < scaleCount ; i ++)
		{
			for(int j = 0;j < orientCount;j ++)
			{
				FilterArray[i][j] = new Complex[ w * h];
				memset(FilterArray[i][j],0,sizeof(Complex) * w * h);
			}
		}

		imageBackBuffer = new Complex[w * h];
		imageWorkBuffer = new Complex[w * h];
		featureBuffer = new double[w * w * scale * orient];

		this->GenerateFilter(w,h);
		
		FFT.ConfigureFFTW(w,h);
		flag = TRUE;
		this->GetRealPartImage();
		this->GetImagePartImage();
		this->GetMagnitudeImage();
		for(int i = 0;i < scaleCount; i ++)
			for(int j = 0;j < orientCount ;j ++)
			{
				Complex* filter = this->FilterArray[i][j];
				FFT.FFTW2DX(filter,filter);
				//CFFT::FFTW2D(filter,filter,frameWidth,frameHeight);
				//FFT.FFT2D(filter);
			}
		

	}
	void GaborFilter::Comfigure(int size)
	{
		this->Comfigure(5,8,size,size);
	/*	int t = size;
		int n = 0;
		int s = sizeof(int) * 8;
		for (int i = 0; i < s; i++)
		{
			if ((t & 1) == 1)
			{
				n++;
			}
			t >>= 1;
		}
		if (n > 1)
		{
			return;
		}


		if(size != frameSize)
		{
			this->Release();
		}
		frameSize = size;
		
		for(int i = 0 ; i < 5 ; i ++)
		{
			for(int j = 0;j < 8;j ++)
			{
				FilterArray[i][j] = new Complex[ size * size];
				memset(FilterArray[i][j],0,sizeof(Complex) * size * size);
			}
		}

		imageBackBuffer = new Complex[size * size];
		imageWorkBuffer = new Complex[size * size];
		featureBuffer = new double[size * size * 40];

		this->GenerateFilter(size);
		
		FFT.Configure(size);
		flag = TRUE;
		this->GetRealPartImage();
		this->GetImagePartImage();
		this->GetMagnitudeImage();
		for(int i = 0;i < 5; i ++)
			for(int j = 0;j < 8 ;j ++)
			{
				Complex* filter = this->FilterArray[i][j];
				FFT.FFT2D(filter);
			}*/
		
	}
	//要再检验一下

	//*********************************************************************************************
	//*********************************************************************************************
	void GaborFilter::GenerateFilter(int w,int h)
	{
		for(int scale = 0; scale < scaleCount; ++scale)
		{
			for(int orient = 0; orient < orientCount; ++orient)
			{
				int		x, y;
				double	c, s;
				double	variance = 2.0 * pi / pow(1.0, scale);
				double	k = pi / pow(2.0, (double)scale / 2.0);
				double	k2 = k * k;
				double	v2 = variance * variance;

				c = cos(orient * pi / orientCount);
				s = sin(orient * pi / orientCount);
				
				int filterSize = w;
				if(w < h)
					filterSize = h;
				

				int halfFilterSize = filterSize / 2;
				int halfFilterSizeX = w / 2;
				int halfFilterSizeY = h / 2;
				int index = 0;
				for(y = 0; y < h; y++)
				{
					index = y * w;
					for(x = 0; x < w; x++)
					{

						double XValue = (double)(x - halfFilterSizeX) * c
							+ (double)(y - halfFilterSizeY) * s;
						double YValue = (double)(x - halfFilterSizeX) * s
							- (double)(y - halfFilterSizeY) * c;
						double G = exp(-0.5 * k2 * (XValue * XValue + YValue * YValue) / v2);

						FilterArray[scale][orient][index + x].real =
							G * (cos(k * XValue) - exp(-0.5 * v2)) * k2 / v2;
						FilterArray[scale][orient][index + x].image = G * sin(k * XValue) * k2 / v2;
					}
				}
				double dbMean = 0.0f;

				for(x = 0; x < h; x++)
				{
					index = x * w;
					for(y = 0; y < w; y++)
						dbMean += FilterArray[scale][orient][index + y].real;
				}

				dbMean /= w * h;

				for(y = 0; y < h; y++)
				{
					index = y * w;
					for(x = 0; x < w; x++)
						FilterArray[scale][orient][index + x].real -= dbMean;
				}
			}
		}
	}
	void GaborFilter::GenerateFilter(int size)
	{
		this->GenerateFilter(size,size);
		/*for(int scale = 0; scale < 5; ++scale)
		{
			for(int orient = 0; orient < 8; ++orient)
			{
				int		x, y;
				double	c, s;
				double	variance = 2.0 * pi / pow(1.0, scale);
				double	k = pi / pow(2.0, (double)scale / 2.0);
				double	k2 = k * k;
				double	v2 = variance * variance;

				c = cos(orient * pi / 8);
				s = sin(orient * pi / 8);

				int filterSize = size;
				int halfFilterSize = size / 2;
				int index = 0;
				for(y = 0; y < filterSize; y++)
				{
					index = y * filterSize;
					for(x = 0; x < filterSize; x++)
					{

						double XValue = (double)(x - halfFilterSize) * c
							+ (double)(y - halfFilterSize) * s;
						double YValue = (double)(x - halfFilterSize) * s
							- (double)(y - halfFilterSize) * c;
						double G = exp(-0.5 * k2 * (XValue * XValue + YValue * YValue) / v2);

						FilterArray[scale][orient][index + x].real =
							G * (cos(k * XValue) - exp(-0.5 * v2)) * k2 / v2;
						FilterArray[scale][orient][index + x].image = G * sin(k * XValue) * k2 / v2;
					}
				}
				double dbMean = 0.0f;

				for(x = 0; x < filterSize; x++)
				{
					index = x * filterSize;
					for(y = 0; y < filterSize; y++)
						dbMean += FilterArray[scale][orient][index + y].real;
				}

				dbMean /= filterSize * filterSize;

				for(y = 0; y < filterSize; y++)
				{
					index = y * filterSize;
					for(x = 0; x < filterSize; x++)
						FilterArray[scale][orient][index + x].real -= dbMean;
				}
			}
		}*/
	}
	void GaborFilter::ComplexToImage(Complex* src,BYTE* des,int width,int height,ViewStyle style)
	{
		int len = width * height;
		double* temp = new double[len];
		for(int i = 0;i < len; i ++)
		{
			if(style == ViewStyle::RealMode)
				temp[i] = src[i].real;
			else if(style == ViewStyle::ImageMode)
				temp[i] = src[i].image;
			else
				temp[i] = sqrt(src[i].real * src[i].real + src[i].image * src[i].image);
		}

		DoubleToImage(temp,des,width,height);
	}
	void GaborFilter::DoubleToImage(double *src, BYTE *des, int width, int height)
	{
		double max = -1e34;
		double min = 1e34;
		int index = 0;

		for(int i = 0; i < height; i ++)
			for(int j = 0;j < width; j ++)
			{
				if(src[index] > max) max = src[index];
				if(src[index] < min) min = src[index];
				index ++;
			}
		index = 0;
		BYTE gray = 0;
		double range = max - min;
		int index1 = 0;
		for(int i = 0;i < height; i ++)
		{
			for(int j = 0; j < width;j ++)
			{
				gray = (BYTE)(((src[index] - min) * 255.0) / range);
			//	index1 = (index << 2);
				index1 = (height - 1 - i) * width + j;
				index1 <<= 2;

				des[index1++] = gray;
				des[index1++] = gray;
				des[index1] = gray;
				index ++;

			}
		}

	}
	void GaborFilter::DoubleToImage(double *scr, BYTE *des, int width, int height,ViewStyle style)
	{
		Complex* data = (Complex*) scr;
		ComplexToImage(data,des,width,height,style);
	}
	HBITMAP GaborFilter::GetImage(ViewStyle style)
	{
		HDC hdc = ::CreateCompatibleDC(NULL);
		BYTE* realBuffer = NULL;
		//const int off = 5;
		HBITMAP image = CommonUtil::ImageFunction::CreateImage(orientCount * (frameWidth + off) + off,scaleCount * (frameHeight + off) + off,realBuffer);
		if(image == NULL)
			throw gcnew System::Exception(L"Create  bitmap failed!");


		BYTE* buffer = NULL;
		HBITMAP bitmap = ImageFunction::CreateImage(frameWidth,frameHeight,buffer);
		

		if(bitmap == NULL)
			throw gcnew System::Exception(L"Create temp image bitmap failed!");


		int* p = (int*) buffer;
		int index1 = 0;
		int index2 = 0;
		int index0 = 0;
		int* p1 = (int*) realBuffer;
		for(int i = 0; i < ((frameWidth + off) * orientCount + off ) * ((frameHeight + off) * scaleCount + off); i ++)
			p1[i] = color;

		int* p2 = (int*) buffer;
		int scale = (frameWidth + off)* orientCount + off;
		for(int i = 0;i < scaleCount; i ++)
		{
			index0 = i * (frameHeight + off) * scale + off * scale;
			for(int j = 0;j < orientCount;j ++)
			{
				this->ComplexToImage(this->FilterArray[scaleCount - 1 - i][j],buffer,frameWidth,frameHeight,style);
				index1 =  index0 + j * (frameWidth + off) + off;
				for(int h = 0; h < frameHeight; h ++)
				{
					index2 = h * frameWidth;
					for(int w = 0; w < frameWidth; w++)
					{
						p1[h * scale  + index1 + w] = p2[index2++];
					}
				}
			}
		}

		::DeleteObject(bitmap);
		return image;
	}
	HBITMAP GaborFilter::GetRealPartImage()
	{
		if(flag == FALSE)
			throw gcnew System::Exception(L"Please configure the instance before use it");


		if(realBitmap)
			return realBitmap;

		/*HDC hdc = ::CreateCompatibleDC(NULL);
		BYTE* realBuffer = NULL;
		realBitmap = Common::ImageFunction::CreateImage(8 * frameSize,5 * frameSize,realBuffer);
		if(realBitmap == NULL)
			throw gcnew System::Exception(L"Create real bitmap failed!");

		BYTE* buffer = NULL;
		HBITMAP bitmap = ImageFunction::CreateImage(frameSize,frameSize,buffer);
		

		if(bitmap == NULL)
			throw gcnew System::Exception(L"Create temp image bitmap failed!");


		int* p = (int*) buffer;
		int index1 = 0;
		int index2 = 0;
		int index0 = 0;
		int* p1 = (int*) realBuffer;
		int* p2 = (int*) buffer;
		int scale = frameSize * 8;
		for(int i = 0;i < 5; i ++)
		{
			index0 = i * frameSize * scale;
			for(int j = 0;j < 8;j ++)
			{
				this->ComplexToImage(this->FilterArray[4 - i][j],buffer,frameSize,frameSize,ViewStyle::RealMode);
				index1 =  index0 + j * frameSize;
				for(int h = 0; h < frameSize; h ++)
				{
					index2 = h * frameSize;
					for(int w = 0; w < frameSize; w++)
					{
						p1[h * scale  + index1 + w] = p2[index2++];
					}
				}
			}
		}

		::DeleteObject(bitmap);*/
		realBitmap = this->GetImage(ViewStyle::RealMode);
		return realBitmap;
	}

	HBITMAP GaborFilter::GetImagePartImage()
	{
		if(flag == FALSE)
			throw gcnew System::Exception(L"Please configure the instance before use it");

		if(imageBitmap)
			return imageBitmap;

		//HDC hdc = ::CreateCompatibleDC(NULL);
		//BYTE* imageBuffer = NULL;
		//imageBitmap = Common::ImageFunction::CreateImage(8 * frameSize,5 * frameSize,imageBuffer);
		//if(imageBitmap == NULL)
		//	throw gcnew System::Exception(L"Create real bitmap failed!");

		//BYTE* buffer = NULL;
		//HBITMAP bitmap = ImageFunction::CreateImage(frameSize,frameSize,buffer);
		//

		//if(bitmap == NULL)
		//	throw gcnew System::Exception(L"Create temp image bitmap failed!");



		//int* p = (int*) buffer;
		//int index1 = 0;
		//int index2 = 0;
		//int index0 = 0;
		//int* p1 = (int*) imageBuffer;
		//int* p2 = (int*) buffer;
		//int scale = frameSize * 8;
		//for(int i = 0;i < 5; i ++)
		//{
		//	index0 = i * frameSize * scale;
		//	for(int j = 0;j < 8;j ++)
		//	{
		//		this->ComplexToImage(this->FilterArray[4 - i][j],buffer,frameSize,frameSize,ViewStyle::ImageMode);
		//		index1 =  index0 + j * frameSize;//i * frameSize * 8 + j * frameSize;
		//		for(int h = 0; h < frameSize; h ++)
		//		{
		//			index2 = h * frameSize;
		//			for(int w = 0; w < frameSize; w++)
		//			{
		//				p1[h * scale  + index1 + w] = p2[index2++];
		//			}
		//		}
		//	}
		//}

		//::DeleteObject(bitmap);
		imageBitmap = this->GetImage(ViewStyle::ImageMode);

		return imageBitmap;
	}
	HBITMAP GaborFilter::GetMagnitudeImage()
	{
		if(flag == FALSE)
			throw gcnew System::Exception(L"Please configure the instance before use it");

		if(magnitudeBitmap)
			return magnitudeBitmap;

		//HDC hdc = ::CreateCompatibleDC(NULL);
		//BYTE* magnitudeBuffer = NULL;
		//magnitudeBitmap = Common::ImageFunction::CreateImage(8 * frameSize,5 * frameSize,magnitudeBuffer);
		//if(magnitudeBitmap == NULL)
		//	throw gcnew System::Exception(L"Create real bitmap failed!");

		//BYTE* buffer = NULL;
		//HBITMAP bitmap = ImageFunction::CreateImage(frameSize,frameSize,buffer);
		//

		//if(bitmap == NULL)
		//	throw gcnew System::Exception(L"Create temp image bitmap failed!");

		//HDC mdc = ::CreateCompatibleDC(hdc);
		//HGDIOBJ obj = NULL;
		//HGDIOBJ obj1 = NULL;

		//if(mdc == NULL)
		//	throw gcnew System::Exception(L"Create dc failed!");
		//int* p = (int*) buffer;
		//int index1 = 0;
		//int index2 = 0;
		//int index0 = 0;
		//int* p1 = (int*) magnitudeBuffer;
		//int* p2 = (int*) buffer;
		//int scale = frameSize * 8;
		//for(int i = 0;i < 5; i ++)
		//{
		//	index0 = i * frameSize * scale;
		//	for(int j = 0;j < 8;j ++)
		//	{
		//		this->ComplexToImage(this->FilterArray[4- i][j],buffer,frameSize,frameSize,ViewStyle::MagnitudeMode);
		//		index1 =  index0 + j * frameSize;//i * frameSize * 8 + j * frameSize;
		//		for(int h = 0; h < frameSize; h ++)
		//		{
		//			index2 = h * frameSize;
		//			for(int w = 0; w < frameSize; w++)
		//			{
		//				//p1[index1 + h * frameSize * 8 + w] = p2[index2++];
		//				p1[h * scale  + index1 + w] = p2[index2++];
		//			}
		//		}
		//	}
		//}

		//::DeleteObject(bitmap);
		magnitudeBitmap = this->GetImage(ViewStyle::MagnitudeMode);

		return magnitudeBitmap;
	}
	HBITMAP GaborFilter::GetFeatureImage(double* featureBuffer)
	{
		if(flag == FALSE)
			throw gcnew System::Exception(L"Please configure the instance before use it");
		//off = 0;
		if(!featureBitmap)
		{
			BYTE* buffer = NULL;
			featureBitmap = ImageFunction::CreateImage( (frameWidth + off)* orientCount + off,(frameHeight + off) * scaleCount + off,buffer);
			featureData = buffer;
		}
		if(!featureBitmap)
			throw gcnew System::Exception(L"Create feature bitmap failed!");// correct for falied to failed October 8th, 2011 by Hally

		//return featureBitmap;

		int index0 = 0;
		int index1 = 0;
		int index2 = 0;
		int index3 = 0;
		int rowLen = (frameWidth) * orientCount;//(frameSize << 3);
		int rowLen1 = (frameWidth + off) * orientCount + off;//(frameSize << 3);
		int scaleLen = rowLen * (frameHeight);
		int scaleLen1 = rowLen1 * (frameHeight + off);
		int imageLen = frameWidth * frameHeight;
		int* tempImage = new int[imageLen];
		int* p = (int*) featureData;
		int upper = ((frameWidth + off)* orientCount + off) * ((frameHeight + off) * scaleCount + off);
		for(int i = 0; i < upper; i ++)
			p[i] = color;
		int index = 0;
		
		try
		{
			for(int scale = 0; scale < scaleCount; scale ++)
			{
				index0 = scaleLen1 * scale + off * rowLen1;//scale * rowLen * frameWidth;
				
				for(int orient = 0; orient < orientCount; orient ++)
				{
					DoubleToImage(featureBuffer + (scaleCount - 1 - scale) * scaleLen + orient * imageLen,(BYTE*)tempImage,frameWidth,frameHeight);

//					this->FlipImage((BYTE*)tempImage);

					index1 = index0 + orient * (frameWidth + off)+ off;
					index3 = 0;
					for(int h = 0; h < frameHeight; h ++)
					{
						index = index1 + h * rowLen1;
						
						for(int w = 0; w < frameWidth; w ++)
						{
							/*if((index + w) >= upper)
								System::Windows::Forms::MessageBox::Show(L"Hello");*/
							p[index + w] = tempImage[index3++];
						}
					}


				}
			}
		}
		catch(System::Exception^ ex)
		{
			System::Windows::Forms::MessageBox::Show(ex->Message->ToString());
		}
		finally
		{
			if(tempImage)
				delete[] tempImage;
		}

		return featureBitmap;
	}
	HBITMAP GaborFilter::GetFeatureImage(BYTE* imageData,ViewStyle style)
	{
		if(imageData == NULL)
			return NULL;
		if(flag == FALSE)
			throw gcnew System::Exception(L"Please configure the instance before use it");

		//int range = frameSize * frameSize;

		try
		{
			/*for(int i = 0; i < range; i ++)
			{
				imageWorkBuffer[i].real = (double)imageData[(i<<2)];
				imageWorkBuffer[i].image = 0.0;
			}*/
			int index = 0;
			for(int i = 0; i < frameHeight; i ++)
			{
				for(int j = 0;j < frameWidth;j ++)
				{
					int t = (frameHeight - 1 - i ) * frameWidth + j;
					imageWorkBuffer[index].real = (double)imageData[(t<<2)];
					imageWorkBuffer[index].image = 0.0;
					index ++;
				}
			}
			//FFT.FFT2D(imageWorkBuffer);
			//CFFT::FFTW2D(imageWorkBuffer,imageWorkBuffer,frameWidth,frameHeight);
			FFT.FFTW2DX(imageWorkBuffer,imageWorkBuffer);
			GetFeature(imageWorkBuffer,featureBuffer,style);
			return GetFeatureImage(featureBuffer);
			
		
		}
		catch(System::Exception^ ex)
		{
			System::Windows::Forms::MessageBox::Show(ex->Message->ToString());
			return NULL;
		}
		
	}

	//获取单个特征图像
	HBITMAP GaborFilter::GetFeatureImage(BYTE* imageData,int scaleIndex,int orientIndex,ViewStyle style)
	{
		HBITMAP hbitmap = NULL;
		BYTE* Buffer = NULL;
		hbitmap = CommonUtil::ImageFunction::CreateImage(frameWidth,frameHeight,Buffer);
		if(hbitmap == NULL)
			return NULL;
		int index = 0;
		for(int i = 0; i < frameHeight; i ++)
		{
			for(int j = 0;j < frameWidth;j ++)
			{
				int t = (frameHeight - i - 1) * frameWidth + j;
				imageBackBuffer[index].real = (double) imageData[t << 2];
				imageBackBuffer[index].image = 0.0;
				index++;
			}
		}
		//for(int i = 0; i < frameSize * frameSize; i ++)
		//{
		//	//imageWorkBuffer[i].real = (double) imageData[(i << 2)];
		//	//imageWorkBuffer[i].image = 0.0;
		//	imageBackBuffer[i].real = (double) imageData[i << 2];
		//	imageBackBuffer[i].image = 0.0;
		//}
		//FFT.FFT2D(imageBackBuffer);
		CFFT::FFTW2D(imageBackBuffer,imageBackBuffer,frameWidth,frameHeight);
		double* feature = new double[frameWidth * frameHeight];
		this->GetFeature(feature,scaleIndex,orientIndex,style);
		//FilterImage(imageWorkBuffer,scaleIndex,orientIndex,FALSE);
		//this->ComplexToImage(imageWorkBuffer,Buffer,frameSize,frameSize,style);
		this->DoubleToImage(feature,Buffer,frameWidth,frameHeight);
		delete[] feature;
		//this->FlipImage(Buffer);
		return hbitmap;
	}
	System::IntPtr GaborFilter::getFeatureImage(double* featureBuffer)
	{
		return System::IntPtr(GetFeatureImage(featureBuffer));
	}
	System::IntPtr GaborFilter::getRealPartImage()
	{
		return System::IntPtr(this->GetRealPartImage());
	}
	System::IntPtr GaborFilter::getImagePartImage()
	{
		return System::IntPtr(this->GetImagePartImage());
	}
	System::IntPtr GaborFilter::getMagnitudeImage()
	{
		return System::IntPtr(this->GetMagnitudeImage());
	}

	System::IntPtr GaborFilter::getFeatureImage(BYTE *imageData,ViewStyle style)
	{
		return System::IntPtr(GetFeatureImage(imageData,style));
	}

	System::IntPtr GaborFilter::getFeatureImage(BYTE* imageData,int scaleIndex,int orientIndex,ViewStyle style)
	{
		return (System::IntPtr)(this->GetFeatureImage(imageData,scaleIndex,orientIndex,style));
	}
	//************************************************************************************************************************
	//核心算法
	//************************************************************************************************************************
	void GaborFilter::FilterImage(Complex* dataBuffer,int scaleIndex,int orientIndex,BOOL PressessedFlag )
	{
		if(flag == FALSE)
			throw gcnew System::Exception(L"Please configure the instance before use it");
		int index = 0;
		if(!PressessedFlag)
			FFT.FFTW2DX(dataBuffer,dataBuffer);
			//CFFT::FFTW2D(dataBuffer,dataBuffer,frameWidth,frameHeight);
			//FFT.FFT2D(dataBuffer);
		//NFFT->fft2d(dataBuffer);

		Complex* filter = FilterArray[scaleIndex][orientIndex];
		Complex temp;

		index = 0;

		for(int i = 0;i < frameWidth; i ++)
		{
			for(int j = 0;j < frameHeight; j ++)
			{
				temp = dataBuffer[index];
				dataBuffer[index].real = temp.real * filter[index].real - temp.image * filter[index].image;
				dataBuffer[index].image = temp.real * filter[index].image + temp.image * filter[index].real;
				//dataBuffer[index].real = dataBuffer[index].real * filter[index].real - dataBuffer[index].image * filter[index].image;
				//dataBuffer[index].image = dataBuffer[index].real * filter[index].image + dataBuffer[index].image * filter[index].real;
				index ++;
			}
		}

		//FFT.IFFT2D(dataBuffer);
		//CFFT::IFFTW2D(dataBuffer,dataBuffer,frameWidth,frameHeight);
		FFT.IFFTW2DX(dataBuffer,dataBuffer);
		

	}
	void GaborFilter::FilterImage(BYTE *imageData, Complex *outputBuffer, int scaleIndex, int orientIndex)
	{
		if(flag == FALSE)
			throw gcnew System::Exception(L"Please configure the instance before use it");
		try
		{
			::ZeroMemory(outputBuffer,sizeof(Complex) * frameWidth * frameHeight);
		}
		catch(System::Exception^ ex)
		{
			System::Windows::Forms::MessageBox::Show(ex->Message->ToString());
			return;
		}
		int index = 0;
		for(int i = 0; i < frameHeight; i ++)
			for(int j = 0;j < frameWidth; j ++)
			{
				outputBuffer[index].real = (double) imageData[index];
				index ++;
			}
			//FFT.FFT2D(outputBuffer);
			CFFT::FFTW2D(outputBuffer,outputBuffer,frameWidth,frameHeight);
			Complex* filter = FilterArray[scaleIndex][orientIndex];
			Complex temp;

			index = 0;

			for(int i = 0;i < frameHeight; i ++)
			{
				for(int j = 0;j < frameWidth; j ++)
				{
					temp = outputBuffer[index];
					outputBuffer[index].real = temp.real * filter[index].real - temp.image * filter[index].image;
					outputBuffer[index].image = temp.real * filter[index].image + temp.image * filter[index].real;
					index ++;
				}
			}

			//FFT.IFFT2D(outputBuffer);
			CFFT::IFFTW2D(outputBuffer,outputBuffer,frameWidth,frameHeight);


	}
	void GaborFilter::GetFeature(double *featureBuffer, int scaleIndex, int orientIndex, ViewStyle style)
	{
		if(flag == FALSE)
			throw gcnew System::Exception(L"Please configure the instance before use it");
		int range = frameWidth * frameHeight;
		double value = 0.0;
		Complex temp;
		this->FromBackBufferToWorkBuffer();
		this->FilterImage(imageWorkBuffer,scaleIndex,orientIndex,TRUE);
		//double total = 0.0;
		double sum = 0.0;
		for(int i = 0;i < range;i ++)
		{
			if(style == ViewStyle::RealMode)
				value = imageWorkBuffer[i].real;
			else if(style == ViewStyle::ImageMode)
				value = imageWorkBuffer[i].image;
			else
			{
				temp = imageWorkBuffer[i];
				value = sqrt(temp.real * temp.real + temp.image  * temp.image);
			}

			featureBuffer[i] = value;
			sum += value;
		}

		//归一化
		if(sum == 0.0)
			sum = 1.0;
		for(int i = 0; i < range;i ++)
		{
			featureBuffer[i] /= sum;
		}

		int index = 0;
		int x,y;
		int len = frameHeight / 2;
		double t = 0.0;
		for(int i = 0; i < len; i ++)
		{
			y = i + len;
			for(int j = 0; j < frameWidth; j ++)
			{
				x = (j + frameWidth/2) % frameWidth;
				int id = y * frameWidth + x;
				t = featureBuffer[index];
				featureBuffer[index] = featureBuffer[id];
				featureBuffer[id] = t;
				index++;

			}
		}
	}
	void GaborFilter::GetFeature(Complex *imageData, double *featureBuffer, ViewStyle style)
	{
		if(flag == FALSE)
			throw gcnew System::Exception(L"Please configure the instance before use it");

		try
		{
			for(int i = 0;i < frameWidth * frameHeight ; i ++)
				imageBackBuffer[i] = imageData[i];

			int index = 0;

			int len = frameWidth * frameHeight;

			for(int scale = 0; scale < scaleCount; scale ++)
			{
				index = scale * orientCount * len;

				for(int orient = 0; orient < orientCount; orient ++)
				{
					this->GetFeature(featureBuffer + index + len * orient,scale,orient,style);
				}
			}

		}
		catch(System::Exception^ ex)
		{
			System::Windows::Forms::MessageBox::Show(ex->Message->ToString());
		}
	}
	void GaborFilter::GetFeature(BYTE* imageData,double* featureBuffer)
	{
		int index = 0;
		int index1 = 0;
		int t;
		int* P = (int*)imageData;
		int value;
		int temp;
		for(int i = 0; i < frameHeight; i ++)
		{
			index1 = (frameHeight - 1 - i) * frameWidth;
			for(int j = 0;j < frameWidth; j ++)
			{
				t = index1 + j;
				temp = P[t];
				value = ((temp & 0xff) >> 2) + ((temp &0xFF00) >> 9) + ((temp & 0xFF0000) >> 18);
				imageBackBuffer[index].real = (double)value;//(double)imageData[(t<<2)];
				imageBackBuffer[index].image = 0.0;
				index ++;
			}
		}
		//FFT.FFT2D(imageBackBuffer);
		//CFFT::FFTW2D(imageBackBuffer,imageBackBuffer,frameWidth,frameHeight);
		FFT.FFTW2DX(imageBackBuffer,imageBackBuffer);
		 index = 0;

			int len = frameWidth * frameHeight;

			for(int scale = 0; scale < scaleCount; scale ++)
			{
				index = scale * orientCount * len;

				for(int orient = 0; orient < orientCount; orient ++)
				{
					this->GetFeature(featureBuffer + index + len * orient,scale,orient,CommonUtil::ViewStyle::MagnitudeMode);
				}
			}

	}

	void GaborFilter::FromBackBufferToWorkBuffer()
	{
		for(int i = 0; i < frameWidth * frameHeight ; i ++)
			imageWorkBuffer[i] = imageBackBuffer[i];
	}
	void GaborFilter::Release()
	{
		if(FilterArray)
		{
		for(int i = 0;i < scaleCount; i ++)
				for(int j = 0;j < orientCount; j ++)
					if(FilterArray[i][j])
					{
						delete[] FilterArray[i][j];
						FilterArray[i][j] = NULL;
					}
			FilterArray = NULL;
		}
					if(realBitmap)
					{
						if(!::DeleteObject(realBitmap))
							throw gcnew System::Exception(L"Delete real bitmap failed!");
						realBitmap = NULL;
					}
					if(imageBitmap)
					{
						if(!::DeleteObject(imageBitmap))
							throw gcnew System::Exception(L"Delete image bitmap failed!");
						imageBitmap = NULL;
					}

					if(featureBitmap)
					{
						if(!::DeleteObject(featureBitmap))
							throw gcnew System::Exception(L"Delete feature bitmap failed!");
						featureBitmap = NULL;
					}

					if(magnitudeBitmap)
					{
						if(!::DeleteObject(magnitudeBitmap))
							throw gcnew System::Exception(L"Delete real bitmap failed!");
						magnitudeBitmap = NULL;
					}
					if(imageBackBuffer)
					{
						delete[] imageBackBuffer;
						imageBackBuffer = NULL;
					}
					if(imageWorkBuffer)
					{
						delete[] imageWorkBuffer;
						imageWorkBuffer = NULL;
					}
					if(featureBuffer)
					{
						delete[] featureBuffer;
						featureBuffer = NULL;
					}

					flag = FALSE;

	}
	void GaborFilter::FlipImage(BYTE* data)
	{
		if(data == NULL)
			return;
		int len = frameSize / 2;
		int row1 = 0;
		int row2 = 0;
		int col1 = 0;
		int col2 = 0;
		int temp = 0;
		int add1 = 0;
		int add2 = 0;
		int* p = (int*) data;


		int index = 0;
		int y;
		int x;
		try
		{
			for(int i = 0; i < len; i ++)
			{
				for(int j = 0; j < frameSize; j ++)
				{
					x = i + len;
					y = (j + len) % frameSize;
					int id = x * frameSize  + y;
					int temp = p[index];
					p[index] = p[id];
					p[id] = temp;
					index ++;

				}
			}
		}
		catch(System::Exception^ ex)
		{
			System::Windows::Forms::MessageBox::Show(ex->Message->ToString());
		}
	}
}