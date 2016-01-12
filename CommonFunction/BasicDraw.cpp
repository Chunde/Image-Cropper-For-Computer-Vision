// BasicDraw.cpp: implementation of the CBasicDraw class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "BasicDraw.h"
#include "math.h"
//#include "afx.h"
#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

#define DwordAlign(P)			((3 + (P)) & (~3))
#define GetBuffer(image, x, y)	((LPBYTE)image.buffer +	(image.height - 1 - y) * \
								DwordAlign(image.width * 3) + 3 * x)


CBasicDraw::CBasicDraw()
{
	m_transparent_color = 0xFF00FF;
	m_color = 0;
}

CBasicDraw::~CBasicDraw()
{

}

ImageDescriptor CBasicDraw::create_image(LPCTSTR filename)
{
	HANDLE				file;
	ImageDescriptor		image;
	BITMAPFILEHEADER	bmphdr;
	BITMAPINFO			bmpinfo;
	LPBITMAPINFOHEADER	pbih;
	LPVOID				src_buffer;
	LPVOID				dest_buffer;
	HBITMAP				bitmap;
	DWORD				totalbytes;
	DWORD				dest_widthbytes;
	DWORD				src_widthbytes;
	DWORD				totalread;
	int					src_dib_size;
	int					src_bit_count;
	int					width;
	int					height;

	image.buffer = image.bitmap = NULL;
	image.width = image.height = 0;

	file=CreateFile(filename, GENERIC_READ, FILE_SHARE_READ, NULL,
		OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL | FILE_FLAG_SEQUENTIAL_SCAN, NULL);
	if(file == INVALID_HANDLE_VALUE) return image;

	totalbytes = GetFileSize(file, NULL);

	if(!ReadFile(file, &bmphdr, sizeof(BITMAPFILEHEADER), &totalread, NULL)) return image;
	if(sizeof(BITMAPFILEHEADER) != totalread)
	{
		CloseHandle(file);
		return image;
	}

	if(bmphdr.bfType != 0x4D42)
	{
		CloseHandle(file);
		return image;
	}

	if(!ReadFile(file, &bmpinfo, sizeof(BITMAPINFO), &totalread, NULL))
	{
		CloseHandle(file);
		return image;
	}

	if(sizeof(BITMAPINFO) != totalread)
	{
		CloseHandle(file);
		return image;
	}

	pbih = &bmpinfo.bmiHeader;
	src_bit_count = pbih->biBitCount;
	src_dib_size = pbih->biSizeImage;
	switch(src_bit_count)
	{
	case 8:
	case 16:
	case 24:
	case 32:
		break;
	default:
		CloseHandle(file);
		return image;
	}

	pbih->biBitCount = 24;
	dest_widthbytes = DwordAlign(pbih->biWidth * 3);
	pbih->biSizeImage = dest_widthbytes * pbih->biHeight;
	width = pbih->biWidth;
	height = pbih->biHeight;

	if(src_dib_size < pbih->biWidth * pbih->biHeight * (src_bit_count >> 3))
		src_dib_size = totalbytes - sizeof(BITMAPFILEHEADER) - sizeof(BITMAPINFO);

	bitmap = CreateDIBSection(GetDC(NULL), &bmpinfo,
		DIB_RGB_COLORS,	(LPVOID*)&dest_buffer, NULL, 0);

	if(bitmap == NULL)
	{
		CloseHandle(file);
		return image;
	}

	if(bmphdr.bfOffBits != 0L)
	{
		SetFilePointer(file, bmphdr.bfOffBits, NULL, FILE_BEGIN);
		src_dib_size = totalbytes - bmphdr.bfOffBits;
	}

	src_buffer = GlobalAlloc(GMEM_FIXED, DwordAlign(src_dib_size));
	if(src_buffer == NULL)
	{
		CloseHandle(file);
		return image;
	}
	src_widthbytes = src_dib_size / height;

	ReadFile(file, (LPBYTE)src_buffer, src_dib_size, &totalread, NULL);
	image.bitmap = bitmap;
	image.buffer = dest_buffer;
	image.width = width;
	image.height = height;

	switch(src_bit_count)
	{
	case 24:
		__asm{
			mov		esi,		src_buffer
			mov		edi,		dest_buffer
			mov		edx,		dest_widthbytes
			shr		edx,		2
			mov		ebx,		height
$row_lp24:
			push	esi
			push	edi
			mov		ecx,		edx
$col_lp24:
			mov		eax,		[esi]
			mov		[edi],		eax
			add		esi,		4
			add		edi,		4
			loop	$col_lp24
			pop		edi
			pop		esi
			add		edi,		dest_widthbytes
			add		esi,		src_widthbytes;
			dec		ebx
			jnz		$row_lp24
		}
		break;

	case 32:
		__asm{
			mov		esi,		src_buffer
			mov		edi,		dest_buffer
			mov		edx,		width
			mov		ebx,		height
$row_lp32:
			push	esi
			push	edi
			mov		ecx,		edx
$col_lp32:
			mov		eax,		[esi]
			mov		[edi],		ax
			shr		eax,		16
			mov		[edi+2],	al
			add		esi,		4
			add		edi,		3
			loop	$col_lp32
			pop		edi
			pop		esi
			add		edi,		dest_widthbytes
			add		esi,		src_widthbytes
			dec		ebx
			jnz		$row_lp32
		}
		break;

	case 16:
		__asm{
			mov		esi,		src_buffer
			mov		edi,		dest_buffer
			mov		edx,		width
$row_lp16:
			push	esi
			push	edi
			mov		ecx,		edx
$col_lp16:
			mov		bx,			[esi]
			mov		al,			bl
			shl		al,			3
			mov		[edi],		al
			inc		edi
			mov		ax,			bx
			shr		ax,			2
			and		al,			~7
			mov		[edi],		al
			inc		edi
			shl		bh,			1
			and		bh,			~7
			mov		[edi],		bh
			inc		edi
			inc		esi
			inc		esi
			loop	$col_lp16
			pop		edi
			pop		esi
			add		edi,		dest_widthbytes
			add		esi,		src_widthbytes;
			dec		height
			jnz		$row_lp16
		}
		break;
	case 8:
		{
			LPBYTE	src_buf = (LPBYTE)src_buffer;
			LPBYTE	dest_buf = (LPBYTE)dest_buffer;
			for(int i = 0; i < height; ++i)
			{
				for(int j = 0; j < width; ++j)
				{
					dest_buf[3 * j] = dest_buf[3 * j + 1]
						= dest_buf[3 * j + 2] = src_buf[j];
				}
				src_buf += src_widthbytes;
				dest_buf += dest_widthbytes;
			}
		}
		break;
	}

	GlobalFree(src_buffer);
	CloseHandle(file);
	return image; 
}

ImageDescriptor CBasicDraw::create_image(int width, int height)
{
	BITMAPINFO			info;
	BITMAPINFOHEADER*	pbih;
	HBITMAP				bitmap;
	LPVOID				buffer;
	int					widthbytes;
	ImageDescriptor		image;

	pbih = &info.bmiHeader;
	pbih->biSize = sizeof(BITMAPINFOHEADER);
	pbih->biWidth = width;
	pbih->biHeight = height;
	pbih->biPlanes = 1;
	pbih->biBitCount = 24;
	pbih->biCompression = BI_RGB;
	pbih->biClrImportant = 0;
	widthbytes = DwordAlign(width * 3);
	pbih->biSizeImage = widthbytes * height;

	bitmap = CreateDIBSection(GetDC(NULL), &info,
		DIB_RGB_COLORS, (LPVOID*)&buffer, NULL, 0);
	if(!bitmap)
	{
		//debug_msg("Cannot create background image!");
		PostQuitMessage(1);
	}
	image.bitmap = bitmap;
	image.buffer = buffer;
	image.width = width;
	image.height = height;
	return image;
}

void CBasicDraw::set_transparent_color(COLORREF color)
{
	switch(color)
	{
	case TRANSPARENT_COLOR_ENABLE:
		m_transparent_color &= 0x00FFFFFF;
		break;
	case TRANSPARENT_COLOR_DISABLE:
		m_transparent_color |= 0xCC000000;
		break;
	default:
		m_transparent_color &= 0xFF000000;
		m_transparent_color |= (color & 0x00FFFFFF);
		break;
	}
}

void CBasicDraw::release_image(ImageDescriptor image)
{
	if(image.bitmap == NULL) return;
	DeleteObject(image.bitmap);
}

void CBasicDraw::clear_image(ImageDescriptor image, COLORREF color)
{
	LPVOID		buffer;
	int			widthbytes;

	buffer = image.buffer;
	if(buffer == NULL) return;
	widthbytes = get_linesize(image);

	__asm{
		mov		edi,		buffer
		mov		ecx,		image.width
		mov		ebx,		image.height
		mov		esi,		edi
		mov		edx,		widthbytes
		mov		eax,		color
$row_loop:
		push	ecx
$line_loop:
		mov		[edi],		ax
		ror		eax,		16
		inc		edi
		inc		edi
		mov		[edi],	al
		ror		eax,		16
		inc		edi
		loop	$line_loop
		pop		ecx
		add		esi,		edx
		mov		edi,		esi
		dec		ebx
		jnz		$row_loop
	}
}

void CBasicDraw::draw(HDC device, ImageDescriptor image, int x, int y)
{
	HDC			memory_dc;
	HANDLE		object;

	memory_dc = CreateCompatibleDC(device);
	object = SelectObject(memory_dc, image.bitmap);
	BitBlt(device, x, y, image.width, image.height, memory_dc, 0, 0, SRCCOPY);
	SelectObject(memory_dc, object);
	DeleteDC(memory_dc);
}

inline bool CBasicDraw::clip_coordinate_and_size(ImageDescriptor src_image,
							ImageDescriptor dest_image, int& src_x, int& src_y,
							int& src_width, int& src_height, int& dest_x, int& dest_y)
{
	return clip_coordinate_and_size(src_image.width, src_image.height,
		dest_image.width, dest_image.height, src_x, src_y, src_width, src_height,
		dest_x, dest_y);
}

inline bool CBasicDraw::clip_coordinate_and_size(int src_image_width, int src_image_height,
							int dest_image_width, int dest_image_height,
							int& src_x, int& src_y, int& src_width, int& src_height,
							int& dest_x, int& dest_y)
{
	if(dest_x >= dest_image_width || dest_y >= dest_image_height) return false;
	src_width += src_x;
	src_height += src_y;
	if(dest_x < 0)
	{
		src_x -= dest_x;
		dest_x = 0;
	}
	if(dest_y < 0)
	{
		src_y -= dest_y;
		dest_y = 0;
	}
	if(src_x >= src_image_width || src_y >= src_image_height) return false;
	if(src_width > src_image_width) src_width = src_image_width;
	if(src_height > src_image_height) src_height = src_image_height;
	if(src_x < 0)
	{
		dest_x -= src_x;
		src_x = 0;
	}
	if(src_y < 0)
	{
		dest_y -= src_y;
		src_y = 0;
	}
	src_width -= src_x;
	src_height -= src_y;
	if(src_width <= 0 || src_height <= 0) return false;
	if(src_width > dest_image_width - dest_x) src_width = dest_image_width - dest_x;
	if(src_height > dest_image_height - dest_y) src_height = dest_image_height - dest_y;
	return true;
}

void CBasicDraw::blend(ImageDescriptor src_image, ImageDescriptor dest_image,
					   int src_x, int src_y, int src_width, int src_height,
					   int dest_x, int dest_y, short alpha)
{
	COLORREF	tp_color;
	int			src_line_size;
	int			dest_line_size;

	if(alpha < 0) return;
	if(clip_coordinate_and_size(src_image, dest_image,
		src_x, src_y, src_width, src_height, dest_x, dest_y) == false) return;
	if(alpha > 256)
	{
		paste_image(src_image, dest_image, src_x, src_y,
			src_width, src_height, dest_x, dest_y);
		return;
	}
	tp_color = m_transparent_color;
	src_line_size = get_linesize(src_image);
	dest_line_size = get_linesize(dest_image);

	__asm{
		mov		esi,		src_image.buffer
		mov		eax,		src_image.height
		dec		eax
		sub		eax,		src_y
		imul	eax,		src_line_size
		add		esi,		eax
		mov		eax,		src_x
		imul	eax,		3
		add		esi,		eax

		mov		edi,		dest_image.buffer
		mov		eax,		dest_image.height
		dec		eax
		sub		eax,		dest_y
		imul	eax,		dest_line_size
		add		edi,		eax
		mov		eax,		dest_x
		imul	eax,		3
		add		edi,		eax

$row_loop:
		push	esi
		push	edi
		mov		ecx,		src_width
$col_loop:
		mov		ah,			[esi + 2]
		shl		eax,		8
		mov		ax,			[esi]
		and		eax,		0FFFFFFH
		cmp		eax,		tp_color
		jne		$blend
		add		esi,		3
		add		edi,		3
		jmp		$skip
$blend:
		mov		ebx,		eax

		xor		ah,			ah
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			alpha
		add		[edi],		ah
		inc		edi
		inc		esi

		shr		ebx,		8
		movzx	ax,			bl
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			alpha
		add		[edi],		ah
		inc		edi
		inc		esi

		movzx	ax,			bh
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			alpha
		add		[edi],		ah

		inc		edi
		inc		esi
$skip:
		dec		ecx
		jnz		$col_loop
		pop		edi
		pop		esi
		sub		esi,		src_line_size
		sub		edi,		dest_line_size
		dec		src_height
		jnz		$row_loop
	}
}

void CBasicDraw::paste_image(ImageDescriptor src_image, ImageDescriptor dest_image,
					   int src_x, int src_y, int src_width, int src_height,
					   int dest_x, int dest_y)
{
	COLORREF	tp_color;
	int			src_line_size;
	int			dest_line_size;

	tp_color = m_transparent_color;

	if(clip_coordinate_and_size(src_image, dest_image,
		src_x, src_y, src_width, src_height, dest_x, dest_y) == false) return;
	src_line_size = get_linesize(src_image);
	dest_line_size = get_linesize(dest_image);

	__asm{
		mov		esi,		src_image.buffer
		mov		eax,		src_image.height
		dec		eax
		sub		eax,		src_y
		imul	eax,		src_line_size
		add		esi,		eax
		mov		eax,		src_x
		imul	eax,		3
		add		esi,		eax

		mov		edi,		dest_image.buffer
		mov		eax,		dest_image.height
		dec		eax
		sub		eax,		dest_y
		imul	eax,		dest_line_size
		add		edi,		eax
		mov		eax,		dest_x
		imul	eax,		3
		add		edi,		eax
		mov		edx,		src_width

$row_loop:
		push	esi
		push	edi
		mov		ecx,		edx
$col_loop:
		mov		al,			[esi + 2]
		shl		eax,		16
		mov		ax,			[esi]
		and		eax,		0FFFFFFH
		cmp		eax,		tp_color
		jne		$paste
		jmp		$skip

$paste:
		mov		word ptr[edi],	0
		mov		byte ptr[edi + 2], 0
		or		[edi],		ax
		shr		eax,		16
		or		[edi + 2],	al
$skip:
		add		esi,		3
		add		edi,		3
		loop	$col_loop
		pop		edi
		pop		esi
		sub		esi,		src_line_size
		sub		edi,		dest_line_size
		dec		src_height
		jnz		$row_loop
	}
}

void CBasicDraw::replace_color(ImageDescriptor image, COLORREF ori_color, COLORREF color)
{
	LPVOID		buffer;
	int			widthbytes;

	buffer = image.buffer;
	widthbytes = get_linesize(image);

	__asm{
		mov		edi,		buffer
		mov		ecx,		image.width
		mov		ebx,		image.height
		mov		esi,		edi
		mov		edx,		widthbytes
$row_loop:
		push	ecx
$line_loop:
//		xor		ax,			ax
		movzx	ax,			byte ptr[edi+2]
		shl		eax,		16
		mov		ax,			[edi]
		cmp		ori_color,	eax
		jne		$next
		mov		eax,		color
		mov		[edi],		ax
		shr		eax,		16
		mov		[edi+2],	al
$next:
		add		edi,		3
		loop	$line_loop
		pop		ecx
		add		esi,		edx
		mov		edi,		esi
		dec		ebx
		jnz		$row_loop
	}
}

void CBasicDraw::save_image(ImageDescriptor image, CString filename)
{
	CFile				file;
	BITMAPFILEHEADER	bmphdr;
	BITMAPINFO			bmpinfo;

	if(file.Open(filename, CFile::modeCreate | CFile::modeWrite) == FALSE) return;

	bmpinfo.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
	bmpinfo.bmiHeader.biWidth = image.width;
	bmpinfo.bmiHeader.biHeight = image.height;
	bmpinfo.bmiHeader.biPlanes = 1;
	bmpinfo.bmiHeader.biBitCount = 24;
	bmpinfo.bmiHeader.biCompression = BI_RGB;
	bmpinfo.bmiHeader.biClrImportant = 0;
	bmpinfo.bmiHeader.biClrUsed = 0;
	bmpinfo.bmiHeader.biXPelsPerMeter = 0;
	bmpinfo.bmiHeader.biYPelsPerMeter = 0;
	bmpinfo.bmiHeader.biSizeImage = DwordAlign(image.width * 3) * image.height;
	bmphdr.bfType = 0x4D42;
	bmphdr.bfSize = (DWORD)(sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER));
	bmphdr.bfReserved1 = bmphdr.bfReserved2 = 0;
	bmphdr.bfOffBits = (DWORD)(sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFO));
	file.SeekToBegin();
	file.Write(&bmphdr, sizeof(BITMAPFILEHEADER));
	file.Write(&bmpinfo, sizeof(BITMAPINFO));
	file.Write(image.buffer, bmpinfo.bmiHeader.biSizeImage);
	file.Close();
}

void CBasicDraw::set_pixel(ImageDescriptor image, int x, int y, COLORREF color)
{
	COLORREF*	pc;
	if( y < 0 || y >= image.height) return;
	if(x < 0 || x >= image.width) return;
	pc = (COLORREF*)get_buffer(image, x, y);
	color &= 0xFFFFFF;
	set_pixel(pc, color);
}

COLORREF CBasicDraw::get_pixel(ImageDescriptor image, int x, int y)
{
	COLORREF	color;
	LPVOID		buffer;
	if( y < 0 || y >= image.height) return 0L;
	if(x < 0 || x >= image.width) return 0L;
	buffer = get_buffer(image, x, y);
	color = (((DWORD)*((BYTE*)buffer + 2)) << 16) + *(WORD*)buffer;
	return color;
}

void CBasicDraw::divide_rgb_color(COLORREF color, BYTE &red, BYTE &green, BYTE &blue)
{
	red = (BYTE)(color >> 16);
	green = (BYTE)(color >> 8);
	blue = (BYTE)color;
}

COLORREF CBasicDraw::compose_rgb_color(BYTE red, BYTE green, BYTE blue)
{
	return ((COLORREF)blue | ((COLORREF)green << 8) | ((COLORREF)red << 16));
}

ImageDescriptor CBasicDraw::copy_image(ImageDescriptor image)
{
	ImageDescriptor		res_image;

	res_image = create_image(image.width, image.height);
	if(res_image.bitmap == NULL) return res_image;
	memcpy(res_image.buffer, image.buffer, get_linesize(image) * image.height);
	return res_image;
}

void CBasicDraw::rectangle(ImageDescriptor image, int x, int y,
						   int width, int height, bool fill, short alpha)
{
	int			t;
	LPVOID		buffer;
	int			widthbytes;
	COLORREF	color;

	if(width == 0 || height == 0) return;
	if(alpha <= 0) return;
	width += x;
	height += y;
	if(width < x)
	{
		t = x;
		x = width;
		width = t;
	}
	if(height < y)
	{
		t = y;
		y = height;
		height = t;
	}
	if(width < 0 || height < 0) return;
	if(x >= image.width || y >= image.height) return;
	if(fill == false)
	{
		--width;
		--height;
		line(image, x, y, width, y, alpha);
		line(image, x, y, x, height, alpha);
		line(image, width, y, width, height, alpha);
		line(image, x, height, width, height, alpha);
		return;
	}
	if(x < 0) x = 0;
	if(y < 0) y = 0;
	if(width >= image.width) width = image.width - 1;
	if(height >= image.height) height = image.height - 1;
	width -= x;
	height -= y;
	if(width <= 0 || height <= 0) return;

	buffer = image.buffer;
	widthbytes = get_linesize(image);

	if(alpha > 256) alpha = 256;
	color = m_color;
	__asm{
		mov		edi,		buffer
		mov		eax,		widthbytes
		mov		ecx,		image.height
		sub		ecx,		y
		dec		ecx
		mul		ecx
		add		edi,		eax
		mov		eax,		x
		imul	eax,		3
		add		edi,		eax
		mov		esi,		edi

$row_loop:
		mov		ecx,		width
$line_loop:
		mov		ebx,		color

		movzx	ax,			bl
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			alpha
		add		[edi],		ah
		inc		edi

		shr		ebx,		8
		movzx	ax,			bl
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			alpha
		add		[edi],		ah
		inc		edi

		movzx	ax,			bh
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			alpha
		add		[edi],		ah
		inc		edi

		loop	$line_loop
		sub		esi,		widthbytes
		mov		edi,		esi
		dec		height
		jnz		$row_loop
	}
}

void CBasicDraw::line(ImageDescriptor image, int x1, int y1, int x2, int y2, short alpha)
{
	int			t, m;
	int			x, y;
	int			_dl, _ds;
	int			rm;
	int			line_size;
	COLORREF	color;

	if(image.buffer == NULL) return;
	if(alpha <= 0) return;
	if(clip_line(image, x1, y1, x2, y2, _dl, _ds, rm, t) == false) return;
	if(x1 == x2)
	{
		vertical_line(image, x1, y1, y2, alpha);
		return;
	}
	if(y1 == y2)
	{
		horizontal_line(image, x1, x2, y1, alpha);
		return;
	}

	line_size = get_linesize(image);
	x = x1;
	y = y1;
	m = _dl / 2;
	if(alpha > 256) alpha = 256;
	color = m_color;
	if(t == 0)
	{
		if(y2 < y1) t = -line_size;
		else t = line_size;
		__asm{
			mov		edi,	image.buffer
			mov		eax,	image.height
			sub		eax,	y
			dec		eax
			mov		ebx,	line_size
			mul		ebx
			add		edi,	eax
			mov		eax,	x
			imul	eax,	3
			add		edi,	eax
			mov		ecx,	x2
			sub		ecx,	x1
			inc		ecx
			mov		x1,		ecx
			mov		ecx,	rm
$next0:
		mov		ebx,		color

		movzx	ax,			bl
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			alpha
		add		[edi],		ah
		inc		edi

		shr		ebx,		8
		movzx	ax,			bl
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			alpha
		add		[edi],		ah
		inc		edi

		movzx	ax,			bh
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			alpha
		add		[edi],		ah
		inc		edi

			add		ecx,	_ds
			test	ecx,	80000000H
			jnz		$con00
			cmp		ecx,	m
			jbe		$con00
			sub		ecx,	_dl
			sub		edi,	t
$con00:
			dec		x1
			jnz		$next0
		}
/*		for(; x <= x2; ++x)
		{
			
			set_pixel(image, x, y, m_color);
			rm += ds;
			if(rm <= dl / 2) continue;
			else
			{
				rm -= dl;
				y += t;
			}
		}*/
	}
	else
	{
		t *= line_size;
	/*	for(; y != y2; y += t)
		{
			set_pixel(image, x, y, m_color);
			rm += ds;
			if(rm <= dl / 2) continue;
			else
			{
				rm -= dl;
				++x;
			}
		}*/
		__asm{
			mov		edi,	image.buffer
			mov		eax,	image.height
			sub		eax,	y
			dec		eax
			mov		ebx,	line_size
			mul		ebx
			add		edi,	eax
			mov		eax,	x
			imul	eax,	3
			add		edi,	eax
			mov		ecx,	y2
			sub		ecx,	y1
			test	ecx,	80000000H
			jz		$con02
			neg		ecx
$con02:
			inc		ecx
			mov		x1,		ecx
			mov		ecx,	rm
$next1:
		mov		ebx,		color

		movzx	ax,			bl
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			alpha
		add		[edi],		ah
		inc		edi

		shr		ebx,		8
		movzx	ax,			bl
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			alpha
		add		[edi],		ah
		inc		edi

		movzx	ax,			bh
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			alpha
		add		[edi],		ah
		dec		edi
		dec		edi

			sub		edi,	t
			add		ecx,	_ds
			test	ecx,	80000000H
			jnz		$con01
			cmp		ecx,	m
			jbe		$con01
			sub		ecx,	_dl
			add		edi,	3
$con01:
			dec		x1
			jnz		$next1
		}
	}
}

void CBasicDraw::vertical_line(ImageDescriptor image, int x, int y1, int y2, short alpha)
{
	int			line_size;
	COLORREF	color;

	if(alpha <= 0) return;
	if(y1 > y2)
	{
		line_size = y1;
		y1 = y2;
		y2 = line_size;
	}
	line_size = get_linesize(image);
	if(alpha > 256) alpha = 256;
	color = m_color;
	__asm{
		mov		edi,	image.buffer
		mov		eax,	line_size
		mov		ecx,	image.height
		sub		ecx,	y1
		dec		ecx
		mul		ecx
		add		edi,	eax
		mov		eax,	x
		imul	eax,	3
		add		edi,	eax
		mov		esi,	edi
		mov		ecx,	y2
		sub		ecx,	y1
		inc		ecx
$draw:
		mov		ebx,		color

		movzx	ax,			bl
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			alpha
		add		[edi],		ah
		inc		edi

		shr		ebx,		8
		movzx	ax,			bl
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			alpha
		add		[edi],		ah
		inc		edi

		movzx	ax,			bh
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			alpha
		add		[edi],		ah

		sub		esi,		line_size
		mov		edi,		esi
		loop	$draw
	}
}

void CBasicDraw::set_color(COLORREF color)
{
	m_color = color & 0xFFFFFF;
}

void CBasicDraw::horizontal_line(ImageDescriptor image, int x1, int x2, int y, short alpha)
{
	if(alpha <= 0) return;
	if(x1 > x2)
	{
		int t = x1;
		x1 = x2;
		x2 = t;
	}
	if(alpha > 256) alpha = 256;
	blend_line((LPBYTE)get_buffer(image, x1, y), x2 - x1 + 1, m_color, alpha);
}

inline bool CBasicDraw::clip_size(int &a, int &b, int size)
{
	if(a > b)
	{
		int t = a;
		a = b;
		b = t;
	}
	if(a >= size) return false;
	if(b < 0) return false;
	if(a < 0) a = 0;
	if(b >= size) b = size - 1;
	return true;
}

inline int CBasicDraw::round(double value)
{
	if(value >= 0.0) return (int)(value + 0.5);
	else return (int)(value - 0.5);
}

inline bool CBasicDraw::clip_line(ImageDescriptor image, int& x1, int& y1,
					  int& x2, int& y2, int& dl, int& ds, int& rm, int& ud)
{
	int		t, m;
	int		x, y;
	int		outer;
	double	k;
	int		px[2];
	int		py[2];

	if(x1 == x2)
	{
		if(x1 < 0 || x1 >= image.width) return false;
		return clip_size(y1, y2, image.height);
	}
	if(y1 == y2)
	{
		if(y1 < 0 || y1 >= image.height) return false;
		return clip_size(x1, x2, image.width);
	}
	if(x2 < x1)
	{
		t = x1;
		x1 = x2;
		x2 = t;
		t = y1;
		y1 = y2;
		y2 = t;
	}
	if(y1 > y2)
	{
		t = y1;
		m = y2;
	}else
	{
		t = y2;
		m = y1;
	}
	k = (double)(y2 - y1) / (x2 - x1);
	outer = 0;
	if(x1 >= 0 && x2 < image.width && m >= 0 && t < image.height)
	{
		rm = 0;
		goto $done;
	}
	if((x1 < 0 && x2 < 0) || (y1 < 0 && y2 < 0)) return false;
	if((x1 >= image.width && x2 >= image.width)
		|| (y1 >= image.height && y2 >= image.height))
		return false;
	t = (x1 * y2 - x2 * y1);
	if(t == 0)
	{
		if(k < 0)
		{
			x1 = x2 = y1 = y2 = 0;
			return true;
		}else goto $clip;
	}else t = t > 0 ? 1 : -1;
	x = x2 - x1;
	y = y2 - y1;
	m = -y1 * x - y * (image.width - 1 - x1);
	if(m == 0)
	{
		if(k > 0)
		{
			x1 = x2 = image.width - 1;
			y1 = y2 = 0;
			return true;
		}else goto $clip;
	}
	if(t * m < 0) goto $clip;
	m = (image.height - 1 - y1) * x + y * x1;
	if(m == 0)
	{
		if(k > 0)
		{
			x1 = x2 = 0;
			y1 = y2 = image.height - 1;
			return true;
		}else goto $clip;
	}
	if(t * m < 0) goto $clip;
	m = (image.height - 1 - y1) * x - y * (image.width - 1 - x1);
	if(m == 0)
	{
		if(k < 0)
		{
			x1 = x2 = image.width - 1;
			y1 = y2 = image.height - 1;
			return true;
		}else goto $clip;
	}
	if(t * m > 0) return false;
$clip:

	m = y2 > y1 ? y2 : y1;
	y = m == y1 ? y2 : y1;
	t = round(k * (-x1) + y1);

	if(t >= 0 && t < image.height && x1 < 0)
	{
		px[0] = 0;
		py[0] = t;
		++outer;
	}
	t = round((-y1) / k + x1);
	if(t >= 0 && t < image.width && y < 0)
	{
		if(!(outer && t == 0 && 0 == py[0]))
		{
			px[outer] = t;
			py[outer++] = 0;
		}
	}
	t = round(k * (image.width - 1 - x1) + y1);
	if(t >= 0 && t < image.height && x2 >= image.width && outer != 2)
	{
		if(!(outer && image.width - 1 == px[0] && t == py[0]))
		{
			px[outer] = image.width - 1;
			py[outer++] = t;
		}
	}
	t = round((image.height - 1 -y1) / k + x1);
	if(t >= 0 && t < image.width && m >= image.height && outer != 2)
	{
		if(!(outer && t == px[0] && image.height - 1 == py[0]))
		{
			px[outer] = t;
			py[outer++] = image.height - 1;
		}
	}
	if(outer == 1)
	{
		if(x1 >= 0 && x1 < image.width && y1 >= 0 && y1 < image.height)
		{
			px[1] = x1;
			py[1] = y1;
		}else
		{
			px[1] = x2;
			py[1] = y2;
		}
	}
	outer = 2;

	if(px[0] > px[1])
	{
		t = px[0];
		px[0] = px[1];
		px[1] = t;
		t = py[0];
		py[0] = py[1];
		py[1] = t;
	}
	rm = (x2 - x1) * (py[0] - y1) - (y2 - y1) * (px[0] - x1);

	if(k < 0.0) rm = -rm;
$done:
	if((int)k == 0)
	{
		ud = 0;
		dl = x2 - x1;
		if(k < 0.0)
			ds = y1 - y2;
		else
			ds = y2 - y1;
	}
	else
	{
		if(k < 0.0)
		{
			dl = y1 - y2;
			ud = -1;
		}
		else
		{
			dl = y2 - y1;
			ud = 1;
		}
		ds = x2 - x1;
	}
	if(outer)
	{
		x1 = px[0];
		x2 = px[1];
		y1 = py[0];
		y2 = py[1];
	}
	return true;
}

void CBasicDraw::copy_image(ImageDescriptor src_image, ImageDescriptor dest_image)
{
	if(dest_image.width != src_image.width || dest_image.height != src_image.height) return;
	memcpy(dest_image.buffer, src_image.buffer, get_linesize(src_image) * src_image.height);
}

void CBasicDraw::ellipse(ImageDescriptor image, int x, int y, int width, int height, bool fill, short alpha)
{
	int			cx, cy;
	int			a, b;
	int			a2, b2;
	int			r2;
	int			pi;
	int			t1, t2;
	int			t;
	char*		pm;
	BYTE*		pp0;
	BYTE*		pp1;
	BYTE*		pp2;
	BYTE*		pp3;
	BYTE		red;
	BYTE		green;
	BYTE		blue;

	if(!normalize_rect(x, y, width, height)) return;
	if(alpha <= 0) return;
	a = width / 2;
	b = height / 2;
	a2 = a * a;
	b2 = b * b;
	r2 = a2 * b2;
	pm = new char[a + b];
	pi = 0;
	for(cx = -a, cy = 0; cx != 0; ++pi)
	{
		pm[pi] = 0;
		t1 = cx + 1;
		t1 = (t1 * t1) * b2 + cy * cy * a2 - r2;
		if(t1 < 0) t1 = -t1;
		t2 = cy + 1;
		t2 = (t2 * t2) * a2 + cx * cx * b2 - r2;
		if(t2 < 0) t2 = -t2;
		if(t2 < t1)
		{
			t1 = t2;
			pm[pi] = 1;
		}
		t2 = (cx + 1) * (cx + 1) * b2 + (cy + 1) * (cy + 1) * a2 - r2;
		if(t2 < 0) t2 = -t2;
		if(t2 < t1)
		{
			pm[pi] = 2;
			++cx;
			++cy;
		}else
		{
			if(pm[pi] == 0) ++cx;
			else ++cy;
		}
	}

	cx = x;
	cy = y + b;
	t2 = get_linesize(image);
	pp0 = pp3 = (LPBYTE)get_buffer(image, cx, cy);;
	pp1 = pp2 = pp0 + a * 6;

	a += x;
	b += y;
	a *= 2;
	b *= 2;
	t1 = 0;

	divide_rgb_color(m_color, red, green, blue);
	if(!fill)
	do{
		if(cx >= 0 && cx < image.width && cy >= 0 && cy < image.height)
		{
			blend_color(pp0, m_color, alpha);
		}
		x = a - cx;
		if(x >= 0 && x < image.width && cy >= 0 && cy < image.height && t1 != pi && t1)
		{
			blend_color(pp1, m_color, alpha);
		}
		y = b - cy;
		if(x >= 0 && x < image.width && y >= 0 && y < image.height)
		{
			blend_color(pp2, m_color, alpha);
		}
		if(cx >= 0 && cx < image.width && y >= 0 && y < image.height && t1 != pi && t1)
		{
			blend_color(pp3, m_color, alpha);
		}
		if(t1 == pi) break;
		switch(pm[t1++])
		{
		case 0:
			++cx;
			pp0 += 3;
			pp1 -= 3;
			pp2 -= 3;
			pp3 += 3;
			break;
		case 1:
			++cy;
			pp0 -= t2;
			pp1 -= t2;
			pp2 += t2;
			pp3 += t2;
			break;
		default:
			++cx;
			pp0 += 3;
			pp1 -= 3;
			pp2 -= 3;
			pp3 += 3;
			++cy;
			pp0 -= t2;
			pp1 -= t2;
			pp2 += t2;
			pp3 += t2;
			break;
		}
	}while(true);
	else
	{
		cy = b / 2;
		pi = 0;
		t1 = b > image.height ? cy : image.height - cy;
		if(t1 > cy - y) t1 = cy - y + 1;
		for(cy = b / 2; t1--; ++cy, pp0 -= t2, pp3 += t2)
		{
			pp1 = pp0;
			pp2 = pp3;
			for(x = cx > 0 ? cx : (pp1 -= cx * 3, pp2 -= cx * 3, 0);
				x < a - cx && x < image.width; ++x, pp1 += 3, pp2 += 3)
			{
				if(cy >= 0 && cy < image.height)
					blend_color(pp1, m_color, alpha);
				y = b - cy;
				if(y >= 0 && y < image.height && y != cy)
					blend_color(pp2, m_color, alpha);
			}
			while((t = pm[pi++]) == 0)
			{
				++cx;
				pp0 += 3;
				pp3 += 3;
			}
			if(t == 2)
			{
				++cx;
				pp0 += 3;
				pp3 += 3;
			}
		}
	}
	delete[] pm;
}

inline bool CBasicDraw::normalize_rect(int &x, int &y, int &width, int &height)
{
	int		t;

	if(width == 0 || height == 0) return false;
	width += x;
	height += y;
	if(width < x)
	{
		t = x;
		x = width;
		width = t;
	}
	if(height < y)
	{
		t = y;
		y = height;
		height = t;
	}
	width -= x;
	height -= y;
	return true;
}

inline void CBasicDraw::blend_line(BYTE* buffer, int len, COLORREF color, short alpha)
{
	__asm{
		cmp		len,		0
		je		$exit
		mov		cx,			alpha
		mov		edi,		buffer
$blend:
		mov		ebx,		color
		movzx	ax,			bl
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			cx
		add		[edi],		ah
		inc		edi

		shr		ebx,		8
		movzx	ax,			bl
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			cx
		add		[edi],		ah
		inc		edi

		movzx	ax,			bh
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			cx
		add		[edi],		ah

		inc		edi
		dec		len
		jnz		$blend
$exit:
	}
}

inline void CBasicDraw::blend_color(BYTE* buffer, COLORREF color, short alpha)
{
	__asm{
		mov		cx,			alpha
		mov		edi,		buffer
		mov		ebx,		color

		movzx	ax,			bl
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			cx
		add		[edi],		ah
		inc		edi

		shr		ebx,		8
		mov		al,			bl
		xor		ah,			ah
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			cx
		add		[edi],		ah
		inc		edi

		movzx	ax,			bh
		sub		al,			[edi]
		sbb		ah,			0
		imul	ax,			cx
		add		[edi],		ah
	}
}

void CBasicDraw::polygon(ImageDescriptor image, POINT *points, int number, bool fill, short alpha)
{
	int		miny, maxy;
	int		i, j, k;
	int*	x;
	int		t1, t2, t3, t4;
	int		line_size;
	BYTE*	buffer;

	if(alpha <= 0) return;
	if(number <= 2) return;
	if(fill == false)
	{
		for(i = 0; i < number - 1; ++i)
			line(image, points[i].x, points[i].y, points[i + 1].x, points[i + 1].y, alpha);
		line(image, points[i].x, points[i].y, points[0].x, points[0].y, alpha);
		return;
	}
	if(alpha > 256) alpha = 256;
	maxy = 0;
	miny = image.width - 1;
	x = new int[number];
	for(i = 0; i < number; ++i)
	{
		miny = points[i].y < miny ? points[i].y : miny;
		maxy = points[i].y > maxy ? points[i].y : maxy;
	}
	if(maxy >= image.height) maxy = image.height - 1;
	if(miny < 0) miny = 0;
	line_size = get_linesize(image);
	buffer = (BYTE*)image.buffer + line_size * (image.height - 1 - miny);
	for(i = miny; i <= maxy; ++i)
	{
		for(j = k = 0; k < number; ++k)
		{
			t1 = points[k].y;
			t2 = points[(k + 1) % number].y;
			if(t1 > t2)
			{
				t3 = t2;
				t4 = t1;
			}else
			{
				t3 = t1;
				t4 = t2;
			}
			if(i < t3 || i > t4) continue;
			t3 = points[k].x;
			t4 = points[(k + 1) % number].x;
			if(t1 == t2)
			{
				if(t3 > t4)
				{
					t1 = t3;
					t3 = t4;
					t4 = t1;
				}
				if(j > 0 && x[j - 1] == t3) x[j] = t4;
				else x[j] = t3;
			}
			else if(t3 == t4) x[j] = t3;
			else x[j] = round((double)(i - t1) * (t4 - t3) / (t2 - t1) + t3);
			++j;
		}

		for(t1 = 0; t1 < j; ++t1)
		for(t2 = t1 + 1; t2 < j; ++t2)
			if(x[t1] > x[t2])
			{
				k = x[t1];
				x[t1] = x[t2];
				x[t2] = k;
			}
		for(k = 0; k < j - 1; ++k)
		{
			t1 = x[k];
			if(t1 == x[k + 1])
				for(t3 = 0; t3 < number; ++t3)
					if(points[t3].x == t1)
					{
						if(points[t3].y != i) continue;
						t4 = points[(t3 + 1) % number].y;
						t2 = points[t3 ? t3 - 1 : number - 1].y;
						if(t2 > t4)
						{
							t1 = t2;
							t2 = t4;
							t4 = t1;
						}
						t1 = 2;
						if(i >= t2 && i <= t4) --t1;
						j -= t1;
						for(t2 = k; t2 < j; ++t2) x[t2] = x[t2 + t1];
						--t3;
						break;
					}
		}
		for(k = 0; k < j - 1; k += 2)
		{
			t1 = x[k] > 0 ? x[k] : 0;
			t2 = x[k + 1] < image.width ? x[k + 1] : image.width - 1;
			blend_line(buffer + t1 * 3, t2 - t1 + 1, m_color, alpha);
		}
		buffer -= line_size;
	}
	delete[] x;
}

void CBasicDraw::stretch(ImageDescriptor src_image, ImageDescriptor dest_image,
						 int src_x, int src_y, int src_width, int src_height,
						 int dest_x, int dest_y, int dest_width, int dest_height, short alpha)
{
	double		rw, rh;
	int			t1, t2, t3, t4;
	int			src_line_size;
	LPBYTE		temp_buf, temp_buf2;
	LPBYTE		temp_pt;
	LPBYTE		src_buf;
	LPBYTE		src_pt;
	COLORREF	color1, color2;
	int			cr, cg, cb;
	int			sr, sg, sb;
	int			tr, tg, tb;
	int			t5, t6;
	int			t;
	int			drw, drh;
	int			dx, dy;

	if(alpha <= 0) return;
	if(src_image.buffer == NULL || dest_image.buffer == NULL) return;
	if(normalize_rect(src_x, src_y, src_width, src_height) == false) return;
	if(normalize_rect(dest_x, dest_y, dest_width, dest_height) == false) return;

	rw = (double)src_width / dest_width;
	rh = (double)src_height / dest_height;

	dest_width += dest_x - 1;
	dest_height += dest_y - 1;
	t1 = dest_x;
	t2 = dest_y;
	t3 = dest_width;
	t4 = dest_height;
	if(clip_size(dest_x, dest_width, dest_image.width) == false) return;
	if(clip_size(dest_y, dest_height, dest_image.height) == false) return;
	src_x += (int)((dest_x - t1) * rw);
	src_y += (int)((dest_y - t2) * rh);
	src_width = (int)((dest_width - dest_x + 1) * rw + 0.5);
	src_height = (int)((dest_height - dest_y + 1) * rh + 0.5);

	src_width += src_x - 1;
	src_height += src_y - 1;
	t1 = src_x;
	t2 = src_y;
	t3 = src_width;
	t4 = src_height;

	if(clip_size(src_x, src_width, src_image.width) == false) return;
	if(clip_size(src_y, src_height, src_image.height) == false) return;
	dest_x += (int)((src_x - t1) / rw);
	dest_y += (int)((src_y - t2) / rh);
	src_width -= src_x - 1;
	src_height -= src_y - 1;
	dest_width = (int)(src_width / rw + 0.4);
	dest_height = (int)(src_height / rh + 0.4);
	if(dest_width <= 0 || dest_height <= 0) return;

	if(rh < 1.0) t2 = (int)(1 / rh + 0.8);
	else t2 = 1;

	if(alpha > 256) alpha = 256;
	src_line_size = get_linesize(src_image);
	src_buf = GetBuffer(src_image, src_x, src_y);
	if(rw < 1.0)
	{
		t1 = (int)(1 / rw + 0.8);
		t5 = t1;
		t1 *= 3;
		t3 = t1 * src_width;
		t2 *= t3;
		temp_buf = (LPBYTE)GlobalAlloc(GMEM_FIXED, t2 * src_image.height + 1);
		temp_buf2 = temp_buf;
		for(t3 = 0; t3 < src_height; ++t3, src_buf -= src_line_size, temp_buf += t2)
		{
			temp_pt = temp_buf;
			src_pt = src_buf;
			color1 = *(COLORREF*)temp_pt = *(COLORREF*)src_pt & 0xFFFFFF;
			tr = sr = (BYTE)(color1 >> 16);
			tg = sg = (BYTE)(color1 >> 8);
			tb = sb = (BYTE)color1;
			sr *= t5;
			sg *= t5;
			sb *= t5;
			for(t4 = 1; t4 < src_width; ++t4)
			{
				temp_pt += 3;
				src_pt += 3;
				color2 = *(WORD*)src_pt + (*(src_pt + 2) << 16);
				if(color2 == m_transparent_color || color1 == m_transparent_color)
				{
					for(t = 1; t < t5; ++t, temp_pt += 3) *(COLORREF*)temp_pt = color1;
					tr = sr = (BYTE)(color2 >> 16);
					tg = sg = (BYTE)(color2 >> 8);
					tb = sb = (BYTE)color2;
					sr *= t5;
					sg *= t5;
					sb *= t5;
				}
				else
				{
					cr = tr;
					cg = tg;
					cb = tb;
					tr = (BYTE)(color2 >> 16);
					tg = (BYTE)(color2 >> 8);
					tb = (BYTE)color2;
					cr -= tr;
					cg -= tg;
					cb -= tb;
					for(t = 1; t < t5; ++t)
					{
						sr -= cr;
						sg -= cg;
						sb -= cb;
						*(temp_pt++) = (BYTE)(sb / t5);
						*(temp_pt++) = (BYTE)(sg / t5);
						*(temp_pt++) = (BYTE)(sr / t5);
					}
					sr -= cr;
					sg -= cg;
					sb -= cb;
				}
				*(COLORREF*)temp_pt = color1 = color2;
			}
			temp_pt += 3;
			for(t = 1; t < t5; ++t, temp_pt += 3) *(COLORREF*)temp_pt = color2;
		}
		t6 = t5 * src_width;
	}
	else
	{
		drw = (int)rw;
		t1 = drw;
		t6 = (src_width + t1 - 1) / t1;
		t3 = t6 * 3;
		t2 *= t3;
		temp_buf = (LPBYTE)GlobalAlloc(GMEM_FIXED, t2 * src_image.height + 1);
		temp_pt = temp_buf;
		temp_buf2 = temp_buf;

		for(t3 = 0; t3 < src_height; ++t3)
		{
			temp_pt = temp_buf;
			src_pt = src_buf;
			t1 = drw;
			for(t4 = 0; t4 < t6; ++t4)
			{
				if(t4 == t6 - 1) t1 = src_width - t1 * (t6 - 1);
				cr = cg = cb = 0;
				t = 0;
				for(t5 = 0; t5 < t1; ++t5, src_pt += 3)
				{
					color1 = *(WORD*)src_pt + (*(src_pt + 2) << 16);
					if(color1 == m_transparent_color) continue;
					++t;
					cr += (BYTE)(color1 >> 16);
					cg += (BYTE)(color1 >> 8);
					cb += (BYTE)color1;
				}
				if(t == 0) *(COLORREF*)temp_pt = color1;
				else
				{
					*temp_pt = (BYTE)(cb / t);
					*(temp_pt + 1) = (BYTE)(cg / t);
					*(temp_pt + 2) = (BYTE)(cr / t);
				}

				temp_pt += 3;
			}
			temp_buf += t2;
			src_buf -= src_line_size;
		}
	}
	temp_buf = temp_buf2;
	if(rh < 1.0)
	{
		t1 = (int)(1 / rh + 0.8);
		t2 = t6 * 3;
		t5 = t2 * t1;

		for(t3 = 0; t3 < t6; ++t3, temp_buf += 3)
		{
			temp_pt = temp_buf;
			color1 = *(COLORREF*)temp_pt & 0xFFFFFF;
			tr = sr = (BYTE)(color1 >> 16);
			tg = sg = (BYTE)(color1 >> 8);
			tb = sb = (BYTE)color1;
			sr *= t1;
			sg *= t1;
			sb *= t1;
			for(t4 = 1; t4 < src_height; ++t4)
			{
				int		t;
				color2 = *(COLORREF*)(temp_pt + t5) & 0xFFFFFF;
				temp_pt += t2;
				if(color1 == m_transparent_color || color2 == m_transparent_color)
				{
					for(t = 1; t < t1; ++t, temp_pt += t2)
					{
						*(COLORREF*)temp_pt &= 0xFF000000;
						*(COLORREF*)temp_pt |= color1;
					}
					tr = sr = (BYTE)(color2 >> 16);
					tg = sg = (BYTE)(color2 >> 8);
					tb = sb = (BYTE)color2;
					sr *= t1;
					sg *= t1;
					sb *= t1;
				}
				else
				{
					cr = tr;
					cg = tg;
					cb = tb;
					tr = (BYTE)(color2 >> 16);
					tg = (BYTE)(color2 >> 8);
					tb = (BYTE)color2;
					cr -= tr;
					cg -= tg;
					cb -= tb;
					for(t = 1; t < t1; ++t, temp_pt += t2)
					{
						sr -= cr;
						sg -= cg;
						sb -= cb;
						*(temp_pt) = (BYTE)(sb / t1);
						*(temp_pt + 1) = (BYTE)(sg / t1);
						*(temp_pt + 2) = (BYTE)(sr / t1);
					}
					sr -= cr;
					sg -= cg;
					sb -= cb;
				}
				color1 = color2;
			}
			temp_pt += t2;
			for(t = 1; t < t1; ++t, temp_pt += t2) *(COLORREF*)temp_pt |= color2;
		}
		t5 = t1 * src_height;
	}else
	{
		int		t7;

		drh = (int)rh;
		t1 = drh;
		t2 = (src_height + t1 - 1) / t1;
		t7 = t6 * 3;
		t5 = t1 * t7;

		for(t3 = 0; t3 < t6; ++t3)
		{
			t1 = drh;
			src_pt = temp_pt = temp_buf;
			for(t4 = 0; t4 < t2; ++t4)
			{
				t = 0;

				cr = cg = cb = 0;
				if(t4 == t2 - 1) t1 = src_height - t1 * t4;
				for(t5 = 0; t5 < t1; ++t5, src_pt += t7)
				{
					color1 = *(COLORREF*)src_pt & 0xFFFFFF;
					if(color1 == m_transparent_color) continue;
					++t;
					cr += (BYTE)(color1 >> 16);
					cg += (BYTE)(color1 >> 8);
					cb += (BYTE)color1;
				}
				if(t == 0) set_pixel(temp_pt, color1);
				else
				{
					*temp_pt = (BYTE)(cb / t);
					*(temp_pt + 1) = (BYTE)(cg / t);
					*(temp_pt + 2) = (BYTE)(cr / t);
				}
				temp_pt += t7;
			}
			temp_buf += 3;
		}
		t5 = t2;
	}
	t3 = get_linesize(dest_image);
	t4 = t6 * 3;
	src_buf = GetBuffer(dest_image, dest_x, dest_y);
	temp_buf = temp_buf2;
	rw = (double)t6 / dest_width;
	rh = (double)t5 / dest_height;

	drw = (int)(rw * 65536);
	drh = (int)(rh * 65536);

	t5 = dest_x + dest_width;
	t6 = dest_y + dest_height;
	if(t5 > dest_image.width) t5 = dest_image.width;
	if(t6 > dest_image.height) t6 = dest_image.height;
	dy = 0;
	for(t2 = dest_y; t2 < t6; ++t2)
	{
		src_pt = src_buf;
		temp_pt = temp_buf;
		dx = 0;
		for(t1 = dest_x; t1 < t5; ++t1)
		{
			color1 = *(COLORREF*)temp_pt;
			if((color1 & 0xFFFFFF) != m_transparent_color)
			{
				sb = (BYTE)color1;
				sg = (BYTE)(color1 >> 8);
				sr = (BYTE)(color1 >> 16);
				cb = *src_pt;
				cg = *(src_pt + 1);
				cr = *(src_pt + 2);
				*src_pt++ = (BYTE)(((cb << 8) - (cb - sb) * alpha) >> 8);
				*src_pt++ = (BYTE)(((cg << 8) - (cg - sg) * alpha) >> 8);
				*src_pt++ = (BYTE)(((cr << 8) - (cr - sr) * alpha) >> 8);
			}else src_pt += 3;
			t = dx >> 16;
			dx += drw;
			temp_pt += 3 * ((dx >> 16) - t);
		}
		t = dy >> 16;
		dy += drh;
		temp_buf += t4 * ((dy >> 16) - t);
		src_buf -= t3;
	}
	GlobalFree(temp_buf2);
}

void CBasicDraw::rotate(ImageDescriptor src_image, ImageDescriptor dest_image, int src_x, int src_y, int dest_x, int dest_y, double angle, short alpha)
{
	int			sx, sy;
	int			dx, dy;
	int			lx, ly;
	int			dl, ds;
	int			src_line_size;
	int			dest_line_size;
	int			dca, dsa;
	double		ca, sa;
	int			dlx, dly;
	COLORREF	color;
	LPBYTE		p_dest;
	LPBYTE		src_buf;
	LPBYTE		dest_buf;

	ca = cos(angle);
	sa = sin(angle);
	dest_buf = GetBuffer(dest_image, 0, 0);
	dest_line_size = get_linesize(dest_image);
	src_buf = GetBuffer(src_image, 0, 0);
	src_line_size = get_linesize(src_image);

	if(sa >= 0) dl = src_line_size;
	else dl = -src_line_size;

	if(ca >= 0) ds = 3;
	else ds = -3;

	dca = round(ca * 4096);
	dsa = round(sa * 4096);

	for(dy = 0; dy < dest_image.height; ++dy)
	{
		p_dest = dest_buf;
		ly = round(dest_x * sa + (dy - dest_y) * ca + src_y);
		lx = round(-dest_x * ca + (dy - dest_y) * sa + src_x);
		dlx = lx * 4096;
		dly = ly * 4096;
		src_buf = GetBuffer(src_image, lx, ly);
		for(dx = 0; dx < dest_image.width; ++dx, p_dest += 3)
		{
			sx = (dlx += dca) >> 12;
			sy = (dly -= dsa) >> 12;
			lx -= sx;
			ly -= sy;
			if(ly) src_buf += dl;
			if(lx) src_buf += ds;
			lx = sx;
			ly = sy;
			if(sx < 0 || sy < 0 || sx >= src_image.width || sy >= src_image.height)
				continue;
			color = *(BYTE*)src_buf;
			color |= (COLORREF)(*(WORD*)(src_buf + 1)) << 8;
			if(color != m_transparent_color) blend_color(p_dest, color, alpha);
		}
		dest_buf -= dest_line_size;
	}
}

void CBasicDraw::fill(ImageDescriptor image, int x, int y, COLORREF color)
{
	LPBYTE		buffer;
	LPBYTE		pbuf, pbin;
	LPBYTE		pp, pt;
	int			front;
	int			end;
	int			length;
	int			line_size;
	COLORREF	clr;

	if(x < 0 && x >= image.width) return;
	if(y < 0 && y >= image.height) return;
	color &= 0x00FFFFFF;
	clr = get_pixel(image, x, y);
	if(clr == color) return;
	line_size = get_linesize(image);
	length = (image.width + image.height) * 2;
	pbin = pbuf = buffer = (LPBYTE)GlobalAlloc(GMEM_FIXED,
					(2 * sizeof(int) + sizeof(LPBYTE)) * length);
	pp = (LPBYTE)get_buffer(image, x, y);
	set_pixel(pp, color);

	*(int*)pbuf = x;
	*(int*)(pbuf + sizeof(int)) = y;
	*(LPBYTE*)(pbuf + 2 * sizeof(int)) = pp;
	front = 0;
	end = 1;
	pbuf += 2 * sizeof(int) + sizeof(LPBYTE);
	while(front != end)
	{
		x = *(int*)pbin;
		y = *(int*)(pbin + sizeof(int));
		pp = *(LPBYTE*)(pbin + 2 * sizeof(int));
		if(++front == length)
		{
			front = 0;
			pbin = buffer;
		}
		else pbin += 2 * sizeof(int) + sizeof(LPBYTE);
		pt = pp - 3;
		if(x && (*(COLORREF*)pt & 0x00FFFFFF) == clr)
		{
			*(int*)pbuf = x - 1;
			*(int*)(pbuf + sizeof(int)) = y;
			*(LPBYTE*)(pbuf + 2 * sizeof(int)) = pt;
			if(++end == length)
			{
				end = 0;
				pbuf = buffer;
			}
			else pbuf += 2 * sizeof(int) + sizeof(LPBYTE);
			set_pixel(pt, color);
		}
		pt = pp + 3;
		if(x < image.width - 1 && (*(COLORREF*)pt & 0x00FFFFFF) == clr)
		{
			*(int*)pbuf = x + 1;
			*(int*)(pbuf + sizeof(int)) = y;
			*(LPBYTE*)(pbuf + 2 * sizeof(int)) = pt;
			if(++end == length)
			{
				end = 0;
				pbuf = buffer;
			}
			else pbuf += 2 * sizeof(int) + sizeof(LPBYTE);
			set_pixel(pt, color);
		}
		pt = pp + line_size;
		if(y && (*(COLORREF*)pt & 0x00FFFFFF) == clr)
		{
			*(int*)pbuf = x;
			*(int*)(pbuf + sizeof(int)) = y - 1;
			*(LPBYTE*)(pbuf + 2 * sizeof(int)) = pt;
			if(++end == length)
			{
				end = 0;
				pbuf = buffer;
			}
			else pbuf += 2 * sizeof(int) + sizeof(LPBYTE);
			set_pixel(pt, color);
		}
		pt = pp - line_size;
		if(y < image.height - 1 && (*(COLORREF*)pt & 0x00FFFFFF) == clr)
		{
			*(int*)pbuf = x;
			*(int*)(pbuf + sizeof(int)) = y + 1;
			*(LPBYTE*)(pbuf + 2 * sizeof(int)) = pt;
			if(++end == length)
			{
				end = 0;
				pbuf = buffer;
			}
			else pbuf += 2 * sizeof(int) + sizeof(LPBYTE);
			set_pixel(pt, color);
		}
	}
	GlobalFree(buffer);
}

inline void CBasicDraw::set_pixel(LPVOID buf, COLORREF color)
{
	*(WORD*)buf = (WORD)color;
	*((BYTE*)buf + 2) = (BYTE)(color >> 16);
}

LPVOID CBasicDraw::get_buffer(ImageDescriptor image, int x, int y)
{
	if(x < 0 && x >= image.width) return NULL;
	if(y < 0 && y >= image.height) return NULL;
	return (LPBYTE)image.buffer + get_linesize(image) * (image.height - 1 - y) + x * 3;
}

int CBasicDraw::get_linesize(ImageDescriptor image)
{
	return DwordAlign(image.width * 3);
}
