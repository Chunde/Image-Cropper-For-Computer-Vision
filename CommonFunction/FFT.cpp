#include "StdAfx.h"
#include "FFT.h"

using namespace System;

namespace CommonUtil
{
	CFFT::CFFT()
	{
		flag = false;
		workBuffer = NULL;
		weightBuffer = NULL;
		tempBuffer = NULL;

		wideForwardPlan = NULL;
		highForwardPlan = NULL;
		wideBackwardPlan = NULL;
		highBackwardPlan = NULL;
		wideBuffer = NULL;
		highBuffer = NULL;

		frameWidth = 64;
		frameHeight = 64;
	}
	CFFT::CFFT(int size)
	{
		workBuffer = NULL;
		weightBuffer = NULL;
		tempBuffer = NULL;
		this->Configure(size);

	}
	CFFT::~CFFT()
	{
		if(workBuffer)
			delete[] workBuffer;
		if(weightBuffer)
			delete[] weightBuffer;
		if(tempBuffer)
			delete[] tempBuffer;
		ReleaseFFTW();
	}
	void CFFT::Configure(int size)
	{
		int t = size;
		int level = 0;
		if (t <= 0)
			throw gcnew System::Exception("The frame size should  be greater than zero");
		int s = sizeof(int);
		s *= 8;
		int n = 0;
		for (int i = 0; i < s; i++)
		{
			if ((t & 1) == 1)
			{
				n++;
				level = i;
			}
			t >>= 1;
		}
		if (n > 1)
			throw gcnew Exception("Frame size incorrect,should be pow of 2");


		frameSize = size;
		layerNum = level;

		if(workBuffer)
			delete[] workBuffer;
		if(weightBuffer)
			delete[] weightBuffer;
		if(tempBuffer)
			delete[] tempBuffer;

		workBuffer = new Complex[size];
		weightBuffer = new Complex[size];
		tempBuffer = new Complex[size];
		invertCode = new int[size];
		::ZeroMemory(workBuffer,sizeof(Complex) * size);
		::ZeroMemory(weightBuffer,sizeof(Complex) * size);
		::ZeroMemory(tempBuffer,sizeof(Complex) * size);
		::ZeroMemory(invertCode,sizeof(int));
		this->Inital(size);
		flag = true;
	}
	void CFFT::Reset(int size)
	{
		this->Configure(size);
	}
	void CFFT::Inital(int N)
	{
		GenerateWeight(N);
		GenerateInvertCode(N);
	}
	void CFFT::GenerateWeight(int N)
	{
		double angle = 2.00 * pi / (double)N;
		double  ang = 0.0;
		for (int i = 0; i < N; i++)
		{
			ang = i * angle;
			weightBuffer[i].real = cos(ang);
			weightBuffer[i].image = -sin(ang);
		}
	}

	void CFFT::GenerateInvertCode(int N)
	{
				invertCode[0] = 0;
				invertCode[N - 1] = N - 1;
				int p = 0;
				int t = 0;
				for (int i = 1; i < N - 1; i++)
				{
					t = i;
					p = 0;
					p = t & 1;
					for (int j = 0; j < layerNum - 1; j++)
					{
						t >>= 1;
						p <<= 1;
						p |= (t & 1);
					}

					invertCode[i] = p; 
				}
	}

	void CFFT::GenerateFirstLayer(Complex *DataBuffer)
	{
		int n = frameSize / 2;
		Complex t1, t2;
		int index = 0;
		int index3 = -1;
		for (int i = 0; i < n; i++)
		{
			index = 2 * i;
			index3 = invertCode[index];
			t1 = DataBuffer[index3];


			index3 = invertCode[index + 1];
			t2 = DataBuffer[index3];


			workBuffer[index].image = t1.image + t2.image;// = t1 + t2;
			workBuffer[index].real = t1.real + t2.real;
			index ++;
			workBuffer[index].real = t1.real - t2.real;
			workBuffer[index].image = t1.image - t2.image;
		}
		for (int i = 0; i < frameSize; i++)
			DataBuffer[i] = workBuffer[i];
	}

	void CFFT::FFT(Complex *DataBuffer)
	{
		if(!flag)
			throw gcnew System::Exception(L"Instance is not properly configure!,Please reset it");

		
		int secLen = 2;
		int secNum = frameSize >> 1;
		int halfSecLen = secLen >> 1;
		int from = 0;
		int index = 0;
		int step = 0;
		Complex a,b;
		//int from = 0;
		Complex t1;// = new Complex();
		Complex t2;// = new Complex();
		step = frameSize >> 1;
			
	try
		{	
		GenerateFirstLayer(DataBuffer);
		
		for (int i = 0; i < layerNum - 1; i++)
		{
			step >>= 1;
			secLen <<= 1;
			secNum >>= 1;
			halfSecLen = secLen >> 1;
	        
			for (int j = 0; j < secNum; j++)
			{
				index = j * secLen;
				from = 0;
				for (int k = 0; k < halfSecLen; k++)
				{
					t1 = DataBuffer[index + k];
					t2 = DataBuffer[index + k + halfSecLen];
					a = t2;// = weightBuffer[from];
					b = weightBuffer[from];

				   // t2 = t2 * weightBuffer[from];
					t2.real = a.real * b.real - a.image * b.image;
					t2.image = a.real * b.image + a.image * b.real;
					//DataBuffer[index + k] = t1 + t2;
					a.real = t1.real + t2.real;
					a.image = t1.image + t2.image;
					DataBuffer[index + k] = a;

					//DataBuffer[index + k + halfSecLen] = t1 - t2;
					a.real = t1.real - t2.real;
					a.image = t1.image - t2.image;
					DataBuffer[index + k + halfSecLen] = a;
					from += step;
				}

			}

		}
		}
		catch(System::Exception^ ex)
		{System::Windows::Forms::MessageBox::Show(ex->Message->ToString());

		}
	}

	void CFFT::IFFT(Complex *DataBuffer)
	{
		if(!flag)
			throw gcnew System::Exception(L"Instance is not properly configure!,Please reset it");

		

		 for (int i = 0; i < frameSize; i++)
			 weightBuffer[i].image = -weightBuffer[i].image;
		this->FFT(DataBuffer);

		double t = 1.0 / frameSize;
		for (int k = 0; k < frameSize; k++)
		{
			DataBuffer[k].real *= t;
			DataBuffer[k].image *= t;
		}

		for (int i = 0; i < frameSize; i++)
			weightBuffer[i].image = -weightBuffer[i].image;

	}

	void CFFT::FFT2D(Complex *DataBuffer)
	{
		/*this->FFTW2D(DataBuffer,DataBuffer,frameSize,frameSize);
		return;*/

		if(!flag)
			throw gcnew System::Exception(L"Instance is not properly configure!,Please reset it");


		for(int i = 0; i < frameSize; i ++)
		{
			this->FFT(&DataBuffer[frameSize * i]);
		}
		for(int i = 0;i < frameSize; i ++)
		{
			for(int j = 0;j < frameSize;j ++)
			{
				tempBuffer[j] = DataBuffer[(j << layerNum) + i];
			}
			FFT(tempBuffer);
		//	FFTW(tempBuffer,frameSize);
			for(int k = 0; k < frameSize;k ++)
				DataBuffer[(k << layerNum) + i] = tempBuffer[k];
		}
		

	}
	void CFFT::IFFT2D(Complex *DataBuffer)
	{
		if(!flag)
			throw gcnew System::Exception(L"Instance is not properly configure!,Please reset it");
		

		for(int i = 0; i < frameSize; i ++)
		{
			
			this->IFFT(DataBuffer + frameSize * i);
		}

		for(int i = 0;i < frameSize; i ++)
		{
			for(int j = 0; j < frameSize;j ++)
			{
				tempBuffer[j] = DataBuffer[(j << layerNum) + i];
			}
			this->IFFT(tempBuffer);
			for(int k = 0; k < frameSize;k ++)
				DataBuffer[(k << layerNum) + i] = tempBuffer[k];
		}

	}

	void CFFT::FFT(double* Buffer)
	{
		if(!flag)
			throw gcnew System::Exception(L"Instance is not properly configure!,Please reset it");

		Complex* DataBuffer = (Complex*) Buffer;
		this->FFT(DataBuffer);
	}
	void CFFT::IFFT(double* Buffer)
	{
		if(!flag)
			throw gcnew System::Exception(L"Instance is not properly configure!,Please reset it");

		Complex* DataBuffer = (Complex*) Buffer;
		this->IFFT(DataBuffer);
	}
	void CFFT::FFT2D(double* Buffer)
	{
		if(!flag)
			throw gcnew System::Exception(L"Instance is not properly configure!,Please reset it");

		Complex* DataBuffer = (Complex*) Buffer;
		this->FFT2D(DataBuffer);
		//this->FFTW2D(DataBuffer,DataBuffer,frameSize,frameSize);
	}
	void CFFT::IFFT2D(double* Buffer)
	{
		if(!flag)
			throw gcnew System::Exception(L"Instance is not properly configure!,Please reset it");

		Complex* DataBuffer = (Complex*) Buffer;
		this->IFFT2D(DataBuffer);
	}
	int CFFT::AlignNum(int N)
	{
				if (N < 0)
					N = -N;
				int t = 1;

				while (t < N)
					t <<= 1;
				return t;
	}


//New vision for adapt FFTW3 functions
	//static mathods
	void CFFT::FFTW(Complex* input,Complex* output,int n)
	{
		fftw_plan p;
		fftw_complex* in = (fftw_complex*)input;
		fftw_complex* out = (fftw_complex*)output;
		p = ::fftw_plan_dft_1d(n,in,out,FFTW_FORWARD,FFTW_ESTIMATE);
		::fftw_execute(p);
		::fftw_destroy_plan(p);
	}
	void CFFT::IFFTW(Complex* input,Complex* output,int n)
	{
		fftw_plan p;
		fftw_complex* in = (fftw_complex*)input;
		fftw_complex* out = (fftw_complex*)output;
		p = ::fftw_plan_dft_1d(n,in,out,FFTW_BACKWARD,FFTW_ESTIMATE);
		::fftw_execute(p);
		::fftw_destroy_plan(p);
	}
	void CFFT::FFTW(Complex* DataBuffer,int n)
	{
		fftw_plan p;
		fftw_complex* buf = (fftw_complex*)DataBuffer;
		p = ::fftw_plan_dft_1d(n,buf,buf,FFTW_FORWARD, FFTW_ESTIMATE);
		::fftw_execute(p);
		::fftw_destroy_plan(p);
	}
	void CFFT::IFFTW(Complex* DataBuffer,int n)
	{
		fftw_plan p;
		fftw_complex* buf = (fftw_complex*)DataBuffer;
		p = ::fftw_plan_dft_1d(n,buf,buf,FFTW_BACKWARD, FFTW_ESTIMATE);
		::fftw_execute(p);
		::fftw_destroy_plan(p);
	}
	void CFFT::FFTW(Complex* input,Complex* output,Complex* workBuf,int n,int step,int index)
	{
		for(int i = 0; i < n ; i ++)
		{
			workBuf[i] = input[i * step + index];
		}
		fftw_plan p;
		fftw_complex* buf = (fftw_complex*)workBuf;
		p = ::fftw_plan_dft_1d(n,buf,buf,FFTW_FORWARD,FFTW_ESTIMATE);
		::fftw_execute(p);
		for(int j = 0; j < n; j ++)
		{
			output[j * step + index] = workBuf[j];
		}
		::fftw_destroy_plan(p);
	}
	void CFFT::IFFTW(Complex* input,Complex* output,Complex* workBuf,int n,int step,int index)
	{
		for(int i = 0; i < n ; i ++)
		{
			workBuf[i] = input[i * step + index];
		}
		fftw_plan p;
		fftw_complex* buf = (fftw_complex*)workBuf;
		p = ::fftw_plan_dft_1d(n,buf,buf,FFTW_BACKWARD,FFTW_ESTIMATE);
		::fftw_execute(p);
		for(int i = 0; i < n; i ++)
		{
			output[i * step + index] = workBuf[i];
		}
		::fftw_destroy_plan(p);
	}
	void CFFT::FFTW2D(Complex* input,Complex* output,int w,int h)
	{
		Complex* buf1;
		Complex* buf2;

		Complex* workBuf2 = new Complex[h];
		Complex* workBuf1= new Complex[w];

		fftw_plan plan1 = ::fftw_plan_dft_1d(w,(fftw_complex*)workBuf1,(fftw_complex*)workBuf1,FFTW_FORWARD,FFTW_ESTIMATE);
		fftw_plan plan2 = ::fftw_plan_dft_1d(h,(fftw_complex*)workBuf2,(fftw_complex*)workBuf2,FFTW_FORWARD,FFTW_ESTIMATE);
		buf1 = input;
		buf2 = output;
		for(int i = 0; i < h ; i ++)
		{
			for(int k = 0; k < w;k ++)
			{
				workBuf1[k] = buf1[k];
			}
			::fftw_execute(plan1);
			for(int k = 0; k < w; k ++)
			{
				buf2[ k] = workBuf1[k];
			}
			buf1 += w;
			buf2 += w;
		//	memcpy(output + size1 * i,workBuf1,size1);

		}
		for(int i = 0; i < w; i ++)
		{
			buf1 = input;
			buf2 = output;
			for(int k = 0 ; k < h; k ++)
			{
				//workBuf2[k] = input[k * w + i];
				workBuf2[k] = buf1[i];
				buf1 += w;
			}
				::fftw_execute(plan2);
			for(int k = 0; k < h; k ++)
			{
				//output[k * w + i] = workBuf2[k];
				buf2[i] = workBuf2[k];
				buf2 += w;
			}
		}
		::fftw_destroy_plan(plan1);
		::fftw_destroy_plan(plan2);
		delete[] workBuf1;
		delete[] workBuf2;
		/*for(int i = 0; i < h; i ++)
		{
			buf1 = input + i * w;
			buf2 = output + i * w;
			CFFT::FFTW(buf1,buf2,w);
		}
		Complex* workBuf = new Complex[h];
		for(int j = 0; j < w; j ++)
		{
			CFFT::FFTW(input,output,workBuf,h,w,j);
		}
		delete[] workBuf;*/
		/*fftw_plan p;
		fftw_complex* in = (fftw_complex*)input;
		fftw_complex* out = (fftw_complex*)output;
		p = ::fftw_plan_dft_2d(w,h,in,out,FFTW_FORWARD,FFTW_ESTIMATE);
		::fftw_execute(p);
		::fftw_destroy_plan(p);*/
	}
	void CFFT::IFFTW2D(Complex* input,Complex* output,int w,int h)
	{
		Complex* buf1;
		Complex* buf2;

		Complex* workBuf2 = new Complex[h];
		Complex* workBuf1= new Complex[w];

		fftw_plan plan1 = ::fftw_plan_dft_1d(w,(fftw_complex*)workBuf1,(fftw_complex*)workBuf1,FFTW_BACKWARD,FFTW_ESTIMATE);
		fftw_plan plan2 = ::fftw_plan_dft_1d(h,(fftw_complex*)workBuf2,(fftw_complex*)workBuf2,FFTW_BACKWARD,FFTW_ESTIMATE);
		buf1 = input;
		buf2 = output;
		for(int i = 0; i < h ; i ++)
		{
			for(int k = 0; k < w;k ++)
			{
				workBuf1[k] = buf1[k];
			}
			::fftw_execute(plan1);
			for(int k = 0; k < w; k ++)
			{
				buf2[ k] = workBuf1[k];
			}
			buf1 += w;
			buf2 += w;
		//	memcpy(output + size1 * i,workBuf1,size1);

		}
		for(int i = 0; i < w; i ++)
		{
			buf1 = input;
			buf2 = output;
			for(int k = 0 ; k < h; k ++)
			{
				//workBuf2[k] = input[k * w + i];
				workBuf2[k] = buf1[i];
				buf1 += w;
			}
				::fftw_execute(plan2);
			for(int k = 0; k < h; k ++)
			{
				//output[k * w + i] = workBuf2[k];
				buf2[i] = workBuf2[k];
				buf2 += w;
			}
		}
		::fftw_destroy_plan(plan1);
		::fftw_destroy_plan(plan2);
		delete[] workBuf1;
		delete[] workBuf2;
		/*for(int i = 0; i < h; i ++)
		{
			buf1 = input + i * w;
			buf2 = output + i * w;
			CFFT::IFFTW(buf1,buf2,w);
		}
		Complex* workBuf = new Complex[h];
		for(int j = 0; j < w; j ++)
		{
			CFFT::IFFTW(input,output,workBuf,h,w,j);
		}
		delete[] workBuf;*/
		/*fftw_plan p;
		fftw_complex* in = (fftw_complex*)input;
		fftw_complex* out = (fftw_complex*)output;
		p = ::fftw_plan_dft_2d(w,h,in,out,FFTW_BACKWARD,FFTW_ESTIMATE);
		::fftw_execute(p);
		::fftw_destroy_plan(p);*/
	}
	void CFFT::FFTW2D(Complex* DataBuffer,int w,int h)
	{
		fftw_plan p;
		fftw_complex* buf = (fftw_complex*)DataBuffer;
		p = ::fftw_plan_dft_2d(w,h,buf,buf,FFTW_FORWARD, FFTW_ESTIMATE);
		::fftw_execute(p);
		::fftw_destroy_plan(p);

	}
	void CFFT::IFFTW2D(Complex* DataBuffer,int w,int h)
	{
		fftw_plan p;
		fftw_complex* buf = (fftw_complex*)DataBuffer;
		p = ::fftw_plan_dft_2d(w,h,buf,buf,FFTW_BACKWARD, FFTW_ESTIMATE);
		::fftw_execute(p);
		::fftw_destroy_plan(p);
	}

	void CFFT::FFTW(double* input,Complex* output,int n)
	{
		fftw_plan p;
		fftw_complex* out = (fftw_complex*)output;
		p = ::fftw_plan_dft_r2c_1d(n,input,out,FFTW_ESTIMATE);
		::fftw_execute(p);
		::fftw_destroy_plan(p);
	}
	void CFFT::FFTW(double* input,double* output,int n)
	{
		fftw_plan p;
		fftw_complex* out = (fftw_complex*)output;
		p = ::fftw_plan_dft_r2c_1d(n,input,out,FFTW_ESTIMATE);
		::fftw_execute(p);
		::fftw_destroy_plan(p);
	}
	void CFFT::FFTW2D(double* input,Complex* output,int w,int h)
	{
		fftw_plan p;
		fftw_complex* out = (fftw_complex*)output;
		p = ::fftw_plan_dft_r2c_2d(w,h,input,out,FFTW_ESTIMATE);
		::fftw_execute(p);
		::fftw_destroy_plan(p);
	}


	//*******************************************************
	//*用于快速变换调用的成员。    .						*
	//*2009年6月14号11时19分，黄纯得						*
	//*******************************************************
	void CFFT::ReleaseFFTW()
	{
		if(wideForwardPlan != NULL )
		{
			::fftw_destroy_plan(wideForwardPlan);
			wideForwardPlan = NULL;
		}
		if(highForwardPlan != NULL)
		{
			::fftw_destroy_plan(highForwardPlan);
			highForwardPlan = NULL;
		}
		if(wideBackwardPlan != NULL )
		{
			::fftw_destroy_plan(wideForwardPlan);
			wideForwardPlan = NULL;
		}
		if(highBackwardPlan != NULL)
		{
			::fftw_destroy_plan(highForwardPlan);
			highForwardPlan = NULL;
		}
		if(wideBuffer != NULL)
		{
			delete[] wideBuffer;
			wideBuffer = NULL;
		}
		if(highBuffer != NULL)
		{
			delete[] highBuffer;
			highBuffer = NULL;
		}
	}
	void CFFT::ConfigureFFTW(int w, int h)
	{
		if(w < 0 || h < 0)
			return;
		ReleaseFFTW();
		frameWidth = w;
		frameHeight = h;
		/*wideForwardBuffer = (fftw_complex*) fftw_malloc(sizeof(fftw_complex) * w);
		highForwardBuffer = (fftw_complex*) fftw_malloc(sizeof(fftw_complex) * h);
		wideBackwardBuffer = (fftw_complex*) fftw_malloc(sizeof(fftw_complex) * w);
		highBackwardBuffer = (fftw_complex*) fftw_malloc(sizeof(fftw_complex) * h);*/
		wideBuffer = new Complex[w];
		highBuffer = new Complex[h];
	//*******************************************************
	//*找了两天，才知道以下四个Plan的尺度都写成w，真是痛苦	*
	//*2009年6月14号19时28分，黄纯得						*
	//*******************************************************

		wideForwardPlan = ::fftw_plan_dft_1d(w,(fftw_complex*)wideBuffer,(fftw_complex*)wideBuffer,FFTW_FORWARD,FFTW_ESTIMATE);
		highForwardPlan = ::fftw_plan_dft_1d(h,(fftw_complex*)highBuffer,(fftw_complex*)highBuffer,FFTW_FORWARD,FFTW_ESTIMATE);
		wideBackwardPlan = ::fftw_plan_dft_1d(w,(fftw_complex*)wideBuffer,(fftw_complex*)wideBuffer,FFTW_BACKWARD,FFTW_ESTIMATE);
		highBackwardPlan = ::fftw_plan_dft_1d(h,(fftw_complex*)highBuffer,(fftw_complex*)highBuffer,FFTW_BACKWARD,FFTW_ESTIMATE);

	}
	void CFFT::FFTWX(Complex* input,Complex* output,BOOL wideFlag)
	{
		
		
		int i,j;
		Complex* WFBuf = (Complex*)wideBuffer;
		Complex* HFBuf = (Complex*) highBuffer;

		if(wideFlag)
		{
			for(i = 0; i < frameWidth; i ++)
			{
				WFBuf[i]=input[i];
			}
			::fftw_execute(wideForwardPlan);
			for(j = 0; j < frameWidth;j ++)
			{
				output[j] = WFBuf[j];
			}
		}
		else
		{
			for(i = 0; i < frameHeight; i ++)
			{
				HFBuf[i] = input[i];
			}
			::fftw_execute(wideForwardPlan);
			for(j = 0; j < frameHeight;j ++)
			{
				output[j] = HFBuf[j];
			}

		}
	}
	void CFFT::IFFTWX(Complex *input, Complex *output, BOOL wideFlag)
	{
		int i,j;
		Complex* WBBuf = (Complex*) wideBuffer;
		Complex* HBBuf = (Complex*) highBuffer;
		if(wideFlag)
		{
			for(i = 0; i < frameWidth; i ++)
			{
				WBBuf[i]=input[i];
			}
			::fftw_execute(wideBackwardPlan);
			for(j = 0; j < frameWidth;j ++)
			{
				output[j] = WBBuf[j];
			}
		}
		else
		{
			for(i = 0; i < frameHeight; i ++)
			{
				HBBuf[i] = input[i];
			}
			::fftw_execute(wideBackwardPlan);
			for(j = 0; j < frameHeight;j ++)
			{
				output[j] = HBBuf[j];
			}

		}
	}
	void CFFT::FFTWX(Complex* buf,BOOL wideFlag)
	{
		FFTWX(buf,buf,wideFlag);
	}
	void CFFT::IFFTWX(Complex* buf,BOOL wideFlag)
	{
		IFFTWX(buf,buf,wideFlag);
	}
	void CFFT::FFTW2DX(Complex *input, Complex *output)
	{
		Complex* buf1;
		Complex* buf2;
		Complex* workBuf1= wideBuffer;
		Complex* workBuf2 = highBuffer;
		int w = frameWidth;
		int h = frameHeight;
		//fftw_plan plan1 = ::fftw_plan_dft_1d(w,(fftw_complex*)workBuf1,(fftw_complex*)workBuf1,FFTW_FORWARD,FFTW_ESTIMATE);
		//fftw_plan plan2 = ::fftw_plan_dft_1d(h,(fftw_complex*)workBuf2,(fftw_complex*)workBuf2,FFTW_FORWARD,FFTW_ESTIMATE);
		buf1 = input;
		buf2 = output;
		for(int i = 0; i < h ; i ++)
		{
			for(int k = 0; k < w;k ++)
			{
				workBuf1[k] = buf1[k];
			}
			::fftw_execute(wideForwardPlan);
			for(int k = 0; k < w; k ++)
			{
				buf2[ k] = workBuf1[k];
			}
			buf1 += w;
			buf2 += w;

		}
		for(int i = 0; i < w; i ++)
		{
			buf1 = input;
			buf2 = output;
			for(int k = 0 ; k < h; k ++)
			{
				//workBuf2[k] = input[k * w + i];
				workBuf2[k] = buf1[i];
				buf1 += w;
			}
				::fftw_execute(highForwardPlan);
			for(int k = 0; k < h; k ++)
			{
				//output[k * w + i] = workBuf2[k];
				buf2[i] = workBuf2[k];
				buf2 += w;
			}
		}
		//::fftw_destroy_plan(plan1);
		//::fftw_destroy_plan(plan2);
		//Complex* pt = input;
		//Complex* pt1 = output;
		//int upper = frameWidth * frameHeight;
		//Complex* up1 = input + upper;
		//Complex* up2 = output + upper;
		//Complex* WFBuf = (Complex*)wideForwardBuffer;
		//Complex* HFBuf = (Complex*) highForwardBuffer;

		//for(int i = 0; i < frameHeight;i++)
		//{
		//	//将输入的数据一行行的复制到工作空间
		//	for(int j = 0; j < frameWidth; j ++)
		//	{
		//		WFBuf[j] = pt[j];
		//	}
		//	//::fftw_execute(wideForwardPlan);
		//	//将处理后的数据复制到输出空间
		//	for(int k = 0; k < frameWidth; k ++)
		//	{
		//		if((pt1 + k)>=up2)
		//		{
		//			this->ShowMessage(L"");
		//		}
		//		pt1[k] = WFBuf[k];
		//	}
		//	//输入和输入的指针前移一行的大小
		//	pt +=  frameWidth;
		//	pt1 += frameWidth;
		//}
		////对列处理，一列列地复制到工作空间，然后处理
		//for(int i = 0; i < frameWidth; i ++)
		//{
		//	pt = input;
		//	pt1 = output;
		//	//复制一列数据到处理空间
		//	for(int j = 0 ; j < frameHeight; j ++)
		//	{
		//		if((pt + i)>=up1)
		//		{
		//			this->ShowMessage(L"");
		//		}
		//		HFBuf[j] = pt[i];
		//		pt += frameWidth;
		//	}
		//	::fftw_execute(highForwardPlan);
		//	//将处理后的数据复制到输入空间的对应的列位置
		//	for(int k = 0;k < frameHeight; k ++)
		//	{
		//		if((pt1 + i)>=up2)
		//		{
		//			this->ShowMessage(L"");
		//		}
		//		pt1[i] = HFBuf[k];
		//		pt1 += frameWidth;
		//	}
		//}
	}
	void CFFT::IFFTW2DX(Complex* input,Complex* output)
	{
		Complex* buf1;
		Complex* buf2;

		Complex* workBuf1= wideBuffer;
		Complex* workBuf2 = highBuffer;
		int w = frameWidth;
		int h = frameHeight;

		//fftw_plan plan1 = ::fftw_plan_dft_1d(w,(fftw_complex*)workBuf1,(fftw_complex*)workBuf1,FFTW_BACKWARD,FFTW_ESTIMATE);
		//fftw_plan plan2 = ::fftw_plan_dft_1d(h,(fftw_complex*)workBuf2,(fftw_complex*)workBuf2,FFTW_BACKWARD,FFTW_ESTIMATE);
		buf1 = input;
		buf2 = output;
		for(int i = 0; i < h ; i ++)
		{
			for(int k = 0; k < w;k ++)
			{
				workBuf1[k] = buf1[k];
			}
			::fftw_execute(wideBackwardPlan);
			for(int k = 0; k < w; k ++)
			{
				buf2[ k] = workBuf1[k];
			}
			buf1 += w;
			buf2 += w;

		}
		for(int i = 0; i < w; i ++)
		{
			buf1 = input;
			buf2 = output;
			for(int k = 0 ; k < h; k ++)
			{
				//workBuf2[k] = input[k * w + i];
				workBuf2[k] = buf1[i];
				buf1 += w;
			}
				::fftw_execute(highBackwardPlan);
			for(int k = 0; k < h; k ++)
			{
				//output[k * w + i] = workBuf2[k];
				buf2[i] = workBuf2[k];
				buf2 += w;
			}
		}
		//::fftw_destroy_plan(plan1);
		//::fftw_destroy_plan(plan2);
		/*Complex* pt = input;
		Complex* pt1 = output;
		int upper = frameWidth * frameHeight;
		Complex* up1 = input + upper;
		Complex* up2 = output + upper;
		Complex* WBBuf = (Complex*)wideBuffer;
		Complex* HBBuf = (Complex*) highBuffer;

		for(int i = 0; i < frameHeight;i++)
		{
			for(int j = 0; j < frameWidth; j ++)
			{
				WBBuf[j] = pt[j];

			}
			::fftw_execute(wideBackwardPlan);
			for(int k = 0; k < frameWidth; k ++)
			{
				if((pt1 + k)>=up2)
				{
					this->ShowMessage(L"");
				}
				pt1[ k] = WBBuf[k];
			}
			pt += frameWidth;
			pt1 += frameWidth;
		}
		for(int i = 0; i < frameWidth; i ++)
		{
			pt = input;
			pt1 = output;
			for(int j = 0 ; j < frameHeight; j ++)
			{
				if((pt + i)>=up1)
				{
					this->ShowMessage(L"");
				}
				HBBuf[j] = pt[i];
				pt += frameWidth;
			}
			::fftw_execute(highBackwardPlan);
			for(int k = 0;k < frameHeight; k ++)
			{
				if((pt1 + i)>=up2)
				{
					this->ShowMessage(L"");
				}
				pt1[i] = HBBuf[k];
				pt1 += frameWidth;
			}
		}*/

	}
	void CFFT::FFTW2DX(Complex* buf)
	{
		FFTW2DX(buf,buf);
	}
	void CFFT::IFFTW2DX(Complex* buf)
	{
		IFFTW2DX(buf,buf);
	}
	void CFFT::ShowMessage(System::String^ str)
	{
		System::Windows::Forms::MessageBox::Show(str);
	}
}