<?xml version="1.0"?><doc>
<members>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.BitmapSize" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicstructs.h" line="9">
<summary>
Describes size of the bitmap.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.BitmapSize.Width" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicstructs.h" line="15">
<summary>
The width of the bitmap in pixels.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.BitmapSize.Height" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicstructs.h" line="31">
<summary>
The height of the bitmap in pixels.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.BitmapSize.#ctor(System.UInt32,System.UInt32)" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicstructs.h" line="47">
<summary>
Constructor
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.BitmapResolution" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicstructs.h" line="98">
<summary>
Describes dots per inch resolution of the bitmap.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.BitmapResolution.DpiX" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicstructs.h" line="104">
<summary>
The horizontal resolution of the bitmap.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.BitmapResolution.DpiY" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicstructs.h" line="120">
<summary>
The vertical resolution of the bitmap.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.BitmapResolution.#ctor(System.Double,System.Double)" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicstructs.h" line="136">
<summary>
Constructor
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.BitmapRectangle" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicstructs.h" line="186">
<summary>
Describes a rectangle of bitmap data.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.BitmapRectangle.X" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicstructs.h" line="192">
<summary>
The horizontal component of the top left corner of the rectangle.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.BitmapRectangle.Y" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicstructs.h" line="208">
<summary>
The vertical component of the top left corner of the rectangle.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.BitmapRectangle.Width" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicstructs.h" line="224">
<summary>
The width of the rectangle.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.BitmapRectangle.Height" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicstructs.h" line="240">
<summary>
The height of the rectangle.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.BitmapRectangle.#ctor(System.Int32,System.Int32,System.Int32,System.Int32)" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicstructs.h" line="256">
<summary>
Constructor.
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.ImagingBitmapLock" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicbitmaplock.h" line="12">
<summary>
Defines methods that add the concept of writeability and static in-memory representations 
of bitmaps to WICBitmapSource. 
<para>(Also see IWICBitmap interface)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.ImagingBitmapLock.DataPointer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicbitmaplock.h" line="21">
<summary>
Gets the pointer to the top left pixel in the locked rectangle.
</summary>
<remarks>
The pointer provided by this property should not be used outside of the lifetime of the lock itself.
DataPointer is not available in multi-threaded apartment applications.
</remarks>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.ImagingBitmapLock.DataSize" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicbitmaplock.h" line="33">
<summary>
Gets the size of the locked data buffer
</summary>
<remarks>
DataSize is not available in multi-threaded apartment applications.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.ImagingBitmapLock.CopyData" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicbitmaplock.h" line="44">
<summary>
Retrieves a copy of the buffer data.
</summary>
<returns>
A byte array containing the buffer data.
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.ImagingBitmapLock.Size" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicbitmaplock.h" line="52">
<summary>
Retrieves the pixel width and height of the locked rectangle.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.ImagingBitmapLock.PixelFormat" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicbitmaplock.h" line="60">
<summary>
Gets the pixel format of for the locked area of pixels. This can be used to compute the number of bytes-per-pixel in the locked area.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.WindowsImagingComponent.ImagingBitmapLock.Stride" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\wic\wicbitmaplock.h" line="68">
<summary>
Provides access to the stride value for the memory. 
</summary>
<remarks>
Note the stride value is specific to the IWICBitmapLock, not the bitmap. 
For example, two consecutive locks on the same rectangle of a bitmap may 
return different pointers and stride values, depending on internal implementation. 
</remarks>
</member>
</members>
</doc>