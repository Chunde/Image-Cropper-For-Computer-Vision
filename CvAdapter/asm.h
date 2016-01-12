#include "Canny.h"
//#define  _ASM_
//#include "stdlib.h"
//#include "stdio.h"
#include "math.h"
inline int GetImagePixel( int* pt, int w, int h, int x,int y)
{
	if(x < 0 || y < 0)
		return 0;
	if(x >= w|| y >= h)
		return 0;
	return pt[y * w + x];
}

inline int GetInterpolateImagePixel(int*pt,int w,int h, double x,double y)
{
	if(x < 0 || y < 0)
		return 0;
	if(x >= w || y > h)
		return 0;
	
	
	int x0 = floor(x);
	int y0 = float(y);
	double dx = x - x0;
	double dy = y - y0;

	int value00 = GetImagePixel(pt,w,h,x0,y0);
	int value01 = GetImagePixel(pt,w,h,x0,y0 + 1);
	int value10 = GetImagePixel(pt,w,h,x0 + 1,y0);
	int value11 = GetImagePixel(pt,w,h,x0 + 1, y0 + 1);

	double _w11 = dx * dy;
	double _w01 = dy - _w11;		//;dy * (1.0 - dx);
	double _w10 = dx - _w11;		//dx * (1.0 - dy);
	double _w00 = 1.0 - dx - _w01;	//(1.0 - dx) * (1.0 - dy);

	int w11 = (int)(_w11 * 256.0);
	int w01 = (int)(_w01 * 256.0);
	int w10 = (int)(_w10 * 256.0);
	int w00 = (int)(_w00 * 256.0);

	int v00 = value00 & 0xFF;
	int v01 = value01 & 0xFF;
	int v10 = value10 & 0xFF;
	int v11 = value11 & 0xFF;

	int r = v00 * w00 + v01 * w01 + v10 * w10 + v11 * w11;
	r >>= 8;
	r &= 0xFF;

	v00 = value00 & 0x0000FF00;
	v01 = value01 & 0x0000FF00;
	v10 = value10 & 0x0000FF00;
	v11 = value11 & 0x0000FF00;

	int g = v00 * w00 + v01 * w01 + v10 * w10 + v11 * w11;
	g >>= 8;
	g &= 0xFF00;

	v00 = value00 & 0x00FF0000;
	v01 = value01 & 0x00FF0000;
	v10 = value10 & 0x00FF0000;
	v11 = value11 & 0x00FF0000;

	v00 >>= 8;
	v11 >>= 8;
	v10 >>= 8;
	v01 >>= 8;
	int b = v00 * w00 + v01 * w01 + v10 * w10 + v11 * w11;
	b &= 0xFF0000;

	int v = (r | b | g) | 0xFF000000;
	return v;

}
HBITMAP CreateImage(HDC hDC, VOID** pBuf,LONG nWidth, LONG nHeight)
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
void _Binarization(int* data,int width, int height,BYTE nMin,BYTE nMax)
		{
 
			if (nMin < 0 || nMax < 0 || nMin >255 || nMax > 255 || nMin > nMax)
				return;
			

			
			int pSize =  width * height;
			LPVOID p = data;
#ifdef _ASM_
			__asm
			{
				mov esi,p
				mov ecx,pSize

			next:
				mov eax,[esi];
				cmp al,nMin
				jb	black
				cmp al,nMax
				ja black

				mov DWORD ptr [esi],0x00ffffff
				jmp goon
		black:
				mov DWORD ptr [esi],0x00000000
		goon:	
				add esi,4
				loop next
		
			}
#else
			for (int i = 0; i < pSize;i ++)
			{
				if (data[i] < nMin)
				{
					data[i] = 0;
				}
				else
				{
					data[i] = 0x00ffffff;
				}
			}
#endif
		}
void _GrayImage(int* data, int width, int height,short r,short g,short b)
		{
			int *Buf = (int*)data;
			int value = 0;
			for(int i = 0; i < height;i ++)
			{
				for(int j = 0; j < width ; j ++)
				{
					long index =  i * width + j ;
					value = Buf[index];
					int sum = 0;
					BYTE tmp = (BYTE)value;
					int R = tmp * r;
					sum += R;

					value >>=8;
					tmp = (BYTE)value;
					int G = tmp * g;
					sum += G;

					value >>= 8;
					tmp = (BYTE)value;
					int B = tmp * b;
					sum += b;

					sum >>= 8;

					value = sum;
					value <<=8;
					value |= sum;
					value <<= 8;
					value |= sum;

					Buf[index] = value;


																													/*__asm
				{
					mov value,0
					mov edi,buf
					add edi,index
					mov ecx,[edi]
					movzx ax,cl
					mul r
					add value,eax
					shr edx,8
					movzx ax,cl
					mul g
					add value,eax
					shr edx,8
					movzx ax,bl
					mul b
					add value,eax

					mov eax,value
					shr eax,8
					mov cl,al
					shl ecx,8
					mov cl,al
					shl ecx,8
					mov cl,al

					mov [edi], ecx*/
					}
				}
			}
void _AverageGrayImage(int* data,int width,int height)
		{
			short int r = 85;
			short int g = 85;
			short int b = 85;
			return _GrayImage(data,width,height,r,g,b);
		}
void _StandardGrayImage(int*data, int width,int height)
{
	short int r = (short int)(0.299 * 256);
	short int g = (short int) (0.587 * 256);
	short int b = (short int) (0.114 * 256);
	_GrayImage(data,width,height,r,g,b);
}
void _EdgeDetectCanny(int* data,int width,int height)
{
	
	//由于下面的处理是把图片当成32们的来处理
	//如果检测到图像的深度不合，不能用下面的
	//的处理方式，该方法将不以生理，退出～
	
	_StandardGrayImage(data,width,height);
	BYTE* workBuf = new BYTE[width * height * 2];
	BYTE* GrayBuf = workBuf;
	BYTE* pResult = GrayBuf + width * height;
	int* p = (int*)data;
	for(int i = 0;i < height;i ++)
	{
		for(int j = 0; j < width;j ++)
		{
			GrayBuf[i * width + j] = (BYTE)p[(height - i - 1) * width + j];
		}
	}
	tagSIZE size;
	size.cx = width;
	size.cy = height;
	
	::Canny(GrayBuf,size,0.1,0.9,0.76,pResult);
	int tmp;
	BYTE t;
    for(int i = 0; i < height; i ++)
	{
		for(int j = 0; j < width;j ++)
		{
			t = pResult[i * width + j];
			tmp = 0;
			tmp |= t;
			tmp<<= 8;
			tmp |= t;
			tmp<<= 8;
			tmp |= t;
			p[(height - i - 1) * width + j] = tmp;

		}
	}
	delete[] workBuf;
}
void _SmoothAverageFilte(int* data,int width,int height)
{
 

	
	int index = 0;
	unsigned int value = 0;
	unsigned int Buf[9];
	::ZeroMemory(Buf,sizeof(Buf));
	int* p = (int*) data;

	for(int i = 1; i < height - 1 ; i ++)
	{
		for(int j = 1; j < width - 1;j++)
		{
			int count = 0;
			//先读取处理点周边的9个点，包含其自身
			for(int m = i - 1;m < i + 2; m++)
			{
				for(int n = j - 1; n < j + 2; n ++)
				{
					index = m * width + n;
					Buf[count ++] = p[index];				
				}
			}
			//从小到大排序，可用改用快速排序
			//但似乎没有必要
			for(int m = 0; m < 9; m ++)
				for(int n = m + 1 ; n < 9 ;n ++)
				{
					if(Buf[m] > Buf[n])
					{
						value = Buf[m];
						Buf[m] = Buf[n];
						Buf[n] = value;
					}
				}
			//把中间值赋于当前点
			index = i * width + j;
			p[index] = Buf[4];
		}
	}
}
void _EdgeDetectPrewitt(int* data,int width,int height)
{
	_AverageGrayImage(data,width,height);
	long index = 0;
	int value = 0;
	BYTE Buf[9];
	int m[8];
	::ZeroMemory(Buf,sizeof(Buf));
	long S = width * height;
	int W = width * 4;
	long size = W * height;
	int* p = (int*)::GlobalAlloc(GPTR,size);
	if(!p)
		return ;
	BYTE* pt = (BYTE*)data;
	for(int i = 1; i < height - 1; i++)
	{
		for(int j =  1; j < width -1; j++)
		{

			int count = 0;
			
			//先读取处理点周边的9个点，包含其自身
			for(int M = i - 1;M < i + 2; M++)
				for(int n = j - 1; n < j + 2; n ++)
				{
					//由于在调用CreateDBISection创建的内存区域中，
					//第一个读入的是最后一行第一个相素，而下面的
					//SetBitmapBits设置图片相素时顺序上并非那样，
					//如果index = m * W + n * Bits，处理后的图像
					//是关第水平180度对称的，于是我们在处理一行时
					//用下面的index = m * W + W - n * Bits,从右到
					//左处理，这样结果正好和原图像的方位是一样的
					//当然，在处理中，在写回缓冲时，在垂直方向上也
					//要进行翻转，于是有本模块中的p[ S - index ] = value; 
					//可以试验后得出正确的方式，这样做免去了在处理完成
					//后再重新来一次翻转操作
					index = M * W + n * 4 ;
					Buf[count ++] = pt[index];				
				}

				m[0] = Buf[0] + Buf[1] + Buf[2] + Buf[3] - 2 * Buf[4] + Buf[5] - Buf[6] - Buf[7] - Buf[8];
				m[1] = Buf[0] + Buf[1] + Buf[2] + Buf[3] - 2 * Buf[4] - Buf[5] + Buf[6] - Buf[7] - Buf[8];
				m[2] = Buf[0] + Buf[1] - Buf[2] + Buf[3] - 2 * Buf[4] - Buf[5] + Buf[6] + Buf[7] - Buf[8];
				m[3] = Buf[0] - Buf[1] - Buf[2] + Buf[3] - 2 * Buf[4] - Buf[5] + Buf[6] + Buf[7] + Buf[8];
				m[4] =- Buf[0] - Buf[1] - Buf[2] + Buf[3] - 2 * Buf[4] + Buf[5] + Buf[6] + Buf[7] + Buf[8];
				m[5] =- Buf[0] - Buf[1] + Buf[2] - Buf[3] - 2 * Buf[4] + Buf[5] + Buf[6] + Buf[7] + Buf[8];
				m[6] =- Buf[0] + Buf[1] + Buf[2] - Buf[3] - 2 * Buf[4] + Buf[5] - Buf[6] + Buf[7] + Buf[8];
				m[7] = Buf[0] + Buf[1] + Buf[2] - Buf[3] - 2 * Buf[4] + Buf[5] - Buf[6] - Buf[7] + Buf[8];

				int max = m[0];
				for(int k = 1; k < 8 ; k ++)
					if(m[k]> max)
						max = m[k];

				if(max < 0)
					max = - max;
				if(max > 255)
					max = 255;
#ifdef _ASM_
				__asm
				{
					mov eax,max
					mov ah,al
					shl eax,8
					mov al,ah
					mov max,eax

				}
				
#else
				int t = max & 0xff;
				max = (t| (t << 8)|(t << 16));
#endif

				index =  i * width + j ;

				p[ index] = max; 

		}
	}
			for(int i = 0; i < width * height;i ++)
			data[i] = p[i];
		::GlobalFree(p);


}
void _EdgeDetectDifferential(int* data,int width,int height)
{
	_AverageGrayImage(data,width,height);
	long index = 0;
	int value = 0;
	BYTE Buf[9];
	::ZeroMemory(Buf,sizeof(Buf));
	long S = width * height;
	int W = width * 4;
	long size = W * height;
	int* p = new int[width * height];//(int*)::GlobalAlloc(GPTR,size);
	if(!p)
		return ;

	BYTE* pt = (BYTE*)data;

	const int cx[9] = {0,0,0,0,1,0,0,0,-1};
	const int cy[9] = {0,0,0,0,0,1,0,-1,0};
		

	for(int i = 1; i < height - 1; i++)
	{
		for(int j =  1; j < width -1; j++)
		{

			int count = 0;
			//先读取处理点周边的9个点，包含其自身
			for(int m = i - 1;m < i + 2; m++)
				for(int n = j - 1; n < j + 2; n ++)
				{
					//由于在调用CreateDBISection创建的内存区域中，
					//第一个读入的是最后一行第一个相素，而下面的
					//SetBitmapBits设置图片相素时顺序上并非那样，
					//如果index = m * W + W - n * Bits - Bits;，处理后的图像
					//是关第水平180度对称的，于是我们在处理一行时
					//用下面的index = m * W + W - n * Bits,从右到
					//左处理，这样结果正好和原图像的方位是一样的
					//当然，在处理中，在写回缓冲时，在垂直方向上也
					//要进行翻转，于是有本模块中的p[ S - index ] = value; 
					//可以试验后得出正确的方式，这样做免去了在处理完成
					//后再重新来一次翻转操作
					index = m * W + n * 4 ;
					Buf[count ++] = pt[index];				
				}

				int fx = 0;
				int fy = 0;
				for(int k = 0;k < 9; k++)
				{
					fx += cx[k] * Buf[k];
					fy += cy[k] * Buf[k];
				}

				value = fx * fx + fy * fy;
				value = (int)sqrt((double)value);
#ifdef _ASM_
				__asm
				{
					mov eax,value
					cmp al,255
					ja pro
					jmp pas
					pro:
					mov al,255
					pas:
					mov ah,al
					shl eax,8
					mov al,ah
					mov value,eax

				}
#else
				int t = value & 0xff;
				value = (t| (t << 8)|(t << 16));
#endif
				index =  i * width + j ;
				p[index] = value;
		}
	}

		for(int i = 0; i < width * height;i ++)
			data[i] = p[i];
		//::GlobalFree(p);
		delete[] p;

}
void _TemperEdgeDetectDifferential(int* data, int* background,int width,int height)
{
	_AverageGrayImage(data,width,height);
	_AverageGrayImage(background,width,height);
	long index = 0;
	int value = 0;
	BYTE Buf[9];
	::ZeroMemory(Buf,sizeof(Buf));
	long S = width * height;
	int W = width * 4;
	long size = W * height;
	int* p = new int[width * height];//(int*)::GlobalAlloc(GPTR,size);
	if(!p)
		return ;

	BYTE* pt = (BYTE*)background;

	const int cx[9] = {0,0,0,0,1,0,0,0,-1};
	const int cy[9] = {0,0,0,0,0,1,0,-1,0};


	for(int i = 1; i < height - 1; i++)
	{
		for(int j =  1; j < width -1; j++)
		{

			int count = 0;
			//先读取处理点周边的9个点，包含其自身
			for(int m = i - 1;m < i + 2; m++)
				for(int n = j - 1; n < j + 2; n ++)
				{
					//由于在调用CreateDBISection创建的内存区域中，
					//第一个读入的是最后一行第一个相素，而下面的
					//SetBitmapBits设置图片相素时顺序上并非那样，
					//如果index = m * W + W - n * Bits - Bits;，处理后的图像
					//是关第水平180度对称的，于是我们在处理一行时
					//用下面的index = m * W + W - n * Bits,从右到
					//左处理，这样结果正好和原图像的方位是一样的
					//当然，在处理中，在写回缓冲时，在垂直方向上也
					//要进行翻转，于是有本模块中的p[ S - index ] = value; 
					//可以试验后得出正确的方式，这样做免去了在处理完成
					//后再重新来一次翻转操作
					index = m * W + n * 4 ;
					Buf[count ++] = pt[index];				
				}
				Buf[4] = (BYTE)(data[i * width + j] & 0xFF);//This is the main and only difference of the algorithm compared to the time-indepent version. Halley 2011/07/04 16:53
				int fx = 0;
				int fy = 0;
				for(int k = 0;k < 9; k++)
				{
					fx += cx[k] * Buf[k];
					fy += cy[k] * Buf[k];
				}

				value = fx * fx + fy * fy;
				value = (int)sqrt((double)value);
#ifdef _ASM_
				__asm
				{
					mov eax,value
						cmp al,255
						ja $pro
						jmp $pas
$pro:
					mov al,255
$pas:
					mov ah,al
						shl eax,8
						mov al,ah
						mov value,eax

				}
#else
				int t = value & 0xff;
				value = (t| (t << 8)|(t << 16));
#endif
				index =  i * width + j ;
				p[index] = value;
		}
	}

	for(int i = 0; i < width * height;i ++)
		data[i] = p[i];
	//::GlobalFree(p);
	delete[] p;

}
void _EdgeDetectDifferential2(int* data,int width,int height)
{
 
_AverageGrayImage(data,width,height);
	long index = 0;
	int value = 0;
	BYTE Buf[9];
	::ZeroMemory(Buf,sizeof(Buf));
	long S = width * height;
	int W = width * 4;
	long size = W * height;
	int* p = (int*)::GlobalAlloc(GPTR,size);
	BYTE* pt = (BYTE*)data;
	if(!p)
		return ;
	if(!p)
		return;

	const int c[9] = {-1,-1,-1,-1,8,-1,-1,-1,-1};

		for(int i = 1; i < height - 1; i++)
	{
		for(int j =  1; j < width -1; j++)
		{

			int count = 0;
			
			//先读取处理点周边的9个点，包含其自身
			for(int m = i - 1;m < i + 2; m++)
				for(int n = j - 1; n < j + 2; n ++)
				{
					//由于在调用CreateDBISection创建的内存区域中，
					//第一个读入的是最后一行第一个相素，而下面的
					//SetBitmapBits设置图片相素时顺序上并非那样，
					//如果index = m * W + n * Bits，处理后的图像
					//是关第水平180度对称的，于是我们在处理一行时
					//用下面的index = m * W + W - n * Bits,从右到
					//左处理，这样结果正好和原图像的方位是一样的
					//当然，在处理中，在写回缓冲时，在垂直方向上也
					//要进行翻转，于是有本模块中的p[ S - index ] = value; 
					//可以试验后得出正确的方式，这样做免去了在处理完成
					//后再重新来一次翻转操作
					index = m * W + n * 4 ;
					Buf[count ++] = pt[index];				
				}
				
			int value = 0;

			for(int k = 0; k < 9 ; k++)
				value += Buf[k] * c[k];

			if(value < 0)
				value = -value;
			if(value > 255)
				value = 255;

#ifdef _ASM_
			__asm
				{
					mov eax,value
					mov ah,al
					shl eax,8
					mov al,ah
					mov value,eax

				}
#else
			int t = value & 0xff;
			value = (t| (t << 8)|(t << 16));
#endif

				index =  i * width + j ;

				p[index] = value; 
		}
	}
			for(int i = 0; i < width * height;i ++)
			data[i] = p[i];
		::GlobalFree(p);


}
void _GaussianBlurImage(int* data,int width,int height)
{
	static double mask[] = 
	{
		0.00000067,0.00002292,0.00019117,0.00038771,0.00019117,0.00002292,0.00000067,

		0.00002292,0.00078633,0.00655965,0.01330373,0.00655965,0.00078633,0.00002292,

		0.00019117,0.00655965,0.05472157,0.11098164,0.05472157,0.00655965,0.00019117,

		0.00038771,0.01330373,0.11098164,0.22508352,0.11098164,0.01330373,0.00038771,

		0.00019117,0.00655965,0.05472157,0.11098164,0.05472157,0.00655965,0.00019117,

		0.00002292,0.00078633,0.00655965,0.01330373,0.00655965,0.00078633,0.00002292,

		0.00000067,0.00002292,0.00019117,0.00038771,0.00019117,0.00002292,0.00000067,
	};

	int* buffer = new int[width * height];
	double r = 0;
	double g = 0;
	double b = 0;
	double m = 0;
	int v = 0;
	int* pt = buffer;
	int id = 0;
	for(int i = 0; i < height; i ++)
	{
		for (int j = 0; j < width; j ++)
		{
			r = 0;
			g = 0;
			b = 0;
			id = 0;
			for (int y = i - 3; y <= i + 3; y ++)
			{
				for (int x = j - 3; x <= j + 3; x ++)
				{
					m = mask[id ++];
					v =GetImagePixel(data,width,height,x,y);
					r += ((double)(v & 0xFF) * m );
					g += ((double)((v & 0xFF00) >> 8) * m);
					b += ((double)((v & 0xFF0000) >> 16) * m);
				}
			}
			v = (((int)r) | (((int)g) << 8)| (((int)b) << 16) | 0xFF000000);
			*pt = v;
			pt ++;

		}
	}
	memcpy(data,buffer,width * height * sizeof(int));
	delete[] buffer;
}
void _GaussianNoiseImage(int* data,int width,int height)
{

}