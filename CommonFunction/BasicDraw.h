// BasicDraw.h: interface for the CBasicDraw class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_BASICDRAW_H__EFCA754E_223B_4A19_97F0_670A361616EA__INCLUDED_)
#define AFX_BASICDRAW_H__EFCA754E_223B_4A19_97F0_670A361616EA__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif

#define	_DRAW_DLL_
//#include "draw.h"

class CBasicDraw  
{
public:
	COLORREF			m_transparent_color;
	COLORREF			m_color;

public:
						CBasicDraw();
	virtual				~CBasicDraw();

public:
	int					get_linesize(ImageDescriptor image);
	LPVOID				get_buffer(ImageDescriptor image, int x, int y);
	inline void			set_pixel(LPVOID buf, COLORREF color);
	inline bool			leave_queue(LPBYTE queue, int& front, int end, COLORREF& color);
	void				fill(ImageDescriptor image, int x, int y, COLORREF color);
	void				rotate(ImageDescriptor src_image, ImageDescriptor dest_image, int src_x, int src_y, int dest_x, int dest_y, double angle, short alpha);
	void				stretch(ImageDescriptor src_image, ImageDescriptor dest_image, int src_x, int src_y, int src_width, int src_height, int dest_x, int dest_y, int dest_width, int dest_height, short alpha);
	void				polygon(ImageDescriptor image, POINT* points, int number, bool fill, short alpha);
	inline void			blend_color(BYTE* buffer, COLORREF color, short alpha);
	inline void			blend_line(BYTE* buffer, int len, COLORREF color, short alpha);
	inline bool			normalize_rect(int& x, int& y, int& width, int& height);
	void				ellipse(ImageDescriptor image, int x, int y, int width, int height, bool fill, short alpha);
	void				copy_image(ImageDescriptor src_image, ImageDescriptor dest_image);
	inline int			round(double value);
	inline bool			clip_line(ImageDescriptor image, int& x1, int& y1,
							int& x2, int& y2, int& dl, int& ds, int& rm, int& ud);
	inline bool			clip_size(int& a, int& b, int size);
	void				horizontal_line(ImageDescriptor image, int x1, int x2, int y, short alpha);
	void				set_color(COLORREF color);
	COLORREF			get_color() const {return m_color;}
	void				vertical_line(ImageDescriptor image, int x, int y1, int y2, short alpha);
	void				line(ImageDescriptor image, int x1, int y1, int x2, int y2, short alpha);
	void				rectangle(ImageDescriptor image, int x, int y, int width, int height, bool fill, short alpha);
	ImageDescriptor		copy_image(ImageDescriptor image);
	COLORREF			compose_rgb_color(BYTE red, BYTE green, BYTE blue);
	void				divide_rgb_color(COLORREF color, BYTE& red, BYTE& green, BYTE& blue);
	COLORREF			get_pixel(ImageDescriptor image, int x, int y);
	void				set_pixel(ImageDescriptor image, int x, int y, COLORREF color);
	void				save_image(ImageDescriptor image, CString filename);
	void				draw(HDC device, ImageDescriptor image, int x, int y);
	void				set_transparent_color(COLORREF color);
	void				release_image(ImageDescriptor image);
	ImageDescriptor		create_image(int width, int height);
	ImageDescriptor		create_image(LPCTSTR filename);
	void				clear_image(ImageDescriptor image, COLORREF color);
	void				blend(ImageDescriptor src_image, ImageDescriptor dest_image,
								int src_x, int src_y, int src_width, int src_height,
								int dest_x, int dest_y, short alpha);
	void				paste_image(ImageDescriptor src_image, ImageDescriptor dest_image,
							   int src_x, int src_y, int src_width, int src_height,
							   int dest_x, int dest_y);
	inline bool			clip_coordinate_and_size(ImageDescriptor src_image,
							ImageDescriptor dest_image, int& src_x, int& src_y,
							int& src_width, int& src_height, int& dest_x, int& dest_y);
	inline bool			clip_coordinate_and_size(int src_image_width, int src_image_height,
							int dest_width, int dest_height, int& src_x, int& src_y,
							int& src_width, int& src_height, int& dest_x, int& dest_y);
	void				replace_color(ImageDescriptor image,
								COLORREF ori_color, COLORREF color);
};

#endif