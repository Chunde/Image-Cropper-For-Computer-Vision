#ifndef _GLOBAL_H__
#define  _GLOBAL_H__
//namespace CommonUtil
//{


	/*typedef struct
	{
		HBITMAP		bitmap;
		LPVOID		buffer;
		int			width;
		int			height;
	}ImageDescriptor, FAR *LPImageDescriptor;*/


	typedef struct
	{
		double		real;
		double		image;
	}Complex,*PComplex;

#pragma make_public(Complex)

//}
#ifndef  pi
#define pi   3.14159265358979323846264338327
#endif

#define FILTER_SIZE 64
#define HALF_FILTER_SIZE 32
#endif