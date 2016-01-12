<?xml version="1.0"?><doc>
<members>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="24">
<summary>
The root factory interface for all DWrite objects.
<para>(Also see DirectX SDK: IDWriteFactory)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateFactory" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="31">
<summary>
Creates a DirectWrite factory object that is used for subsequent creation of individual DirectWrite objects.
This method uses Shared FactoryType.
<para>(Also see DirectX SDK: DWriteCreateFactory)</para>
</summary>
<returns>The newly created DirectWrite factory object</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateFactory(Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactoryType)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="39">
<summary>
Creates a DirectWrite factory object that is used for subsequent creation of individual DirectWrite objects.
<para>(Also see DirectX SDK: DWriteCreateFactory)</para>
</summary>
<param name="factoryType">Specifies whether the factory object will be shared or isolated.</param>
<returns>The newly created DirectWrite factory object</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateTextFormat(System.String,System.Single,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontWeight,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontStyle,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontStretch,System.Globalization.CultureInfo)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="47">
<summary>
Create a text format object used for text layout.
</summary>
<param name="fontFamilyName">Name of the font family</param>
<param name="fontSize">Logical size of the font in DIP units. A DIP ("device-independent pixel") equals 1/96 inch.</param>
<param name="fontWeight">Font weight</param>
<param name="fontStyle">Font style</param>
<param name="fontStretch">Font stretch</param>
<param name="cultureInfo">Culture info</param>
<returns>Newly created text format object, or null in case of failure.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateTextFormat(System.String,System.Single,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontWeight,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontStyle,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontStretch)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="65">
<summary>
Create a text format object used for text layout
</summary>
<param name="fontFamilyName">Name of the font family</param>
<param name="fontSize">Logical size of the font in DIP units. A DIP ("device-independent pixel") equals 1/96 inch.</param>
<param name="fontWeight">Font weight</param>
<param name="fontStyle">Font style</param>
<param name="fontStretch">Font stretch</param>
<returns>Newly created text format object, or null in case of failure.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateTextFormat(System.String,System.Single)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="81">
<summary>
Create a text format object used for text layout using default font weight, style and stretch.
</summary>
<param name="fontFamilyName">Name of the font family</param>
<param name="fontSize">Logical size of the font in DIP units. A DIP ("device-independent pixel") equals 1/96 inch.</param>
<returns>Newly created text format object, or null in case of failure.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateRenderingParams" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="91">
<summary>
Creates a rendering parameters object with default settings for the primary monitor. 
</summary>
<returns>The newly created rendering parameters object, or NULL in case of failure.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateMonitorRenderingParams(System.IntPtr)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="97">
<summary>
Creates a rendering parameters object with default settings for the specified monitor. 
</summary>
<param name="monitorHandle">A handle for the specified monitor.</param>
<remarks>To obtain a handle to a monitor use Graphics Output.Description property or
Win32 MonitorFromWindow() API to obtain a handle for the desired monitor.</remarks>
<returns>The newly created rendering parameters object, or NULL in case of failure.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateCustomRenderingParams(System.Single,System.Single,System.Single,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.PixelGeometry,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.RenderingMode)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="108">
<summary>
Creates a rendering parameters object with the specified properties. 
</summary>
<param name="gamma">The gamma value used for gamma correction, which must be greater than zero and cannot exceed 256.</param>
<param name="enhancedContrast">The amount of contrast enhancement, zero or greater.</param>
<param name="clearTypeLevel">The degree of ClearType level, from 0.0f (no ClearType) to 1.0f (full ClearType).</param>
<param name="pixelGeometry">The geometry of a device pixel.</param>
<param name="renderingMode">Method of rendering glyphs. In most cases, this should be Default to automatically use an appropriate mode.</param>
<returns>The newly created rendering parameters object, or NULL in case of failure.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateTextLayout(System.String,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat,System.Single,System.Single)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="124">
<summary>
CreateTextLayout takes a string, format, and associated constraints
and produces and object representing the fully analyzed
and formatted result.
</summary>
<param name="text">Characters to layout.</param>
<param name="textFormat">The format to apply to the string.</param>
<param name="maxWidth">Width of the layout box.</param>
<param name="maxHeight">Height of the layout box.</param>
<returns>
The resultant TextLayout object.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateGdiCompatibleTextLayout(System.String,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat,System.Single,System.Single,System.Single,System.Boolean,Microsoft.WindowsAPICodePack.DirectX.Direct2D1.Matrix3x2F)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="143">
<summary>
CreateGdiCompatibleTextLayout takes a string, format, and associated constraints
and produces and object representing the result formatted for a particular display resolution
and measuring method. The resulting text layout should only be used for the intended resolution,
and for cases where text scalability is desired, CreateTextLayout should be used instead.
</summary>
<param name="text">The characters to layout.</param>
<param name="textFormat">The format to apply to the string.</param>
<param name="layoutWidth">Width of the layout box.</param>
<param name="layoutHeight">Height of the layout box.</param>
<param name="pixelsPerDip">Number of physical pixels per DIP. For example, if rendering onto a 96 DPI device then pixelsPerDip
is 1. If rendering onto a 120 DPI device then pixelsPerDip is 120/96.</param>
<param name="transform">Transform applied to the glyphs and their positions. This transform is applied after the
scaling specified the font size and pixelsPerDip.</param>
<param name="useGdiNatural">
When set to False, instructs the text layout to use the same metrics as GDI aliased text.
When set to True, instructs the text layout to use the same metrics as text measured by GDI using a font
created with NaturalQuality.
</param>
<returns>
The resultant TextLayout object.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateGdiCompatibleTextLayout(System.String,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat,System.Single,System.Single,System.Single,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="176">
<summary>
CreateGdiCompatibleTextLayout takes a string, format, and associated constraints
and produces and object representing the result formatted for a particular display resolution
and measuring method. The resulting text layout should only be used for the intended resolution,
and for cases where text scalability is desired, CreateTextLayout should be used instead.
</summary>
<param name="text">The characters to layout.</param>
<param name="textFormat">The format to apply to the string.</param>
<param name="layoutWidth">Width of the layout box.</param>
<param name="layoutHeight">Height of the layout box.</param>
<param name="pixelsPerDip">Number of physical pixels per DIP. For example, if rendering onto a 96 DPI device then pixelsPerDip
is 1. If rendering onto a 120 DPI device then pixelsPerDip is 120/96.</param>
<param name="useGdiNatural">
When set to False, instructs the text layout to use the same metrics as GDI aliased text.
When set to True, instructs the text layout to use the same metrics as text measured by GDI using a font
created with CleartypeNaturalQuality.
</param>
<returns>
The resultant TextLayout object.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateEllipsisTrimmingSign(Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="207">
<summary>
The application may call this function to create an inline object for trimming, using an ellipsis as the omission sign.
The ellipsis will be created using the current settings of the format, including base font, style, and any effects.
Alternate omission signs can be created by the application by implementing ICustomInlineObject.
</summary>
<param name="textFormat">The format to use for settings.</param>
<returns>
Created omission sign.
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.SystemFontFamilyCollection" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="220">
<summary>
Gets a font family collection representing the set of installed fonts.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateTypography" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="228">
<summary>
Creates a typography object used in conjunction with text format for text layout.
</summary>
<returns>
A TypographySettingCollection object.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateFontFaceFromFontFile(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="236">
<summary>
Creates a font face from a given TrueType font file.
This method will load only a TrueType font file with no font simulations applied.
</summary>
<param name="fontFileName">The input font file.</param>
<returns>
A FontFace object.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateFontFaceFromFontFile(System.String,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFaceType,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontSimulations)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefactory.h" line="246">
<summary>
Creates a font face from a given a font file.
</summary>
<param name="fontFileName">The input font file.</param>
<param name="fontFaceType">The file format of the font face.</param>
<param name="faceIndex">The zero based index of a font face in cases when the font files contain a collection of font faces.
If the font files contain a single face, this value should be zero.</param>
<param name="faceSimulations">Font face simulation flags for algorithmic emboldening and italicization.</param>
<returns>
A FontFace object.
</returns>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.RenderingParams" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwriterenderingparams.h" line="14">
<summary>
Represents text rendering settings such as ClearType level, enhanced contrast, 
and gamma correction for glyph rasterization and filtering.
<para>(Also see DirectX SDK: IDWriteRenderingParams)</para>
</summary>
<remarks>Create a rendering params object by classing one of DWriteFactory's RenderingParam creation methods:
<see cref="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateRenderingParams"/>, <see cref="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateMonitorRenderingParams(System.IntPtr)"/>, or <see cref="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.DWriteFactory.CreateCustomRenderingParams(System.Single,System.Single,System.Single,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.PixelGeometry,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.RenderingMode)"/></remarks>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.RenderingParams.Gamma" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwriterenderingparams.h" line="25">
<summary>
Gets the gamma value used for gamma correction. Valid values must be
greater than zero and cannot exceed 256.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.RenderingParams.EnhancedContrast" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwriterenderingparams.h" line="34">
<summary>
Gets the amount of contrast enhancement. Valid values are greater than
or equal to zero.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.RenderingParams.ClearTypeLevel" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwriterenderingparams.h" line="43">
<summary>
Gets the ClearType level. Valid values range from 0.0f (no ClearType) 
to 1.0f (full ClearType).
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.RenderingParams.PixelGeometry" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwriterenderingparams.h" line="52">
<summary>
Gets the pixel geometry.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.RenderingParams.RenderingMode" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwriterenderingparams.h" line="60">
<summary>
Gets the rendering mode.
</summary>
</member>
</members>
</doc>