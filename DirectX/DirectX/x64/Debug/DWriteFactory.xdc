<?xml version="1.0"?><doc>
<members>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.LibraryLoader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\libraryloader.h" line="21">
<summary>
A private class supporting dll and functions loading.
Loaded dlls and functions are cached in a hash table.
</summary>
</member>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextformat.h" line="14">
<summary>
The format of text used for text layout purpose.
<para>(Also see DirectX SDK: IDWriteTextFormat)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat.TextAlignment" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextformat.h" line="22">
<summary>
Get or Set alignment option of text relative to layout box's leading and trailing edge.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat.ParagraphAlignment" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextformat.h" line="31">
<summary>
Get or Set alignment option of paragraph relative to layout box's top and bottom edge.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat.WordWrapping" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextformat.h" line="40">
<summary>
Get or Set word wrapping option.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat.ReadingDirection" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextformat.h" line="49">
<summary>
Get or Set paragraph reading direction.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat.FlowDirection" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextformat.h" line="58">
<summary>
Get or Set paragraph flow direction.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat.IncrementalTabStop" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextformat.h" line="67">
<summary>
Set incremental tab stop position.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat.LineSpacing" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextformat.h" line="76">
<summary>
Get or Set line spacing.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat.Trimming" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextformat.h" line="85">
<summary>
Gets or sets trimming options.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat.TrimmingWithSign" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextformat.h" line="94">
<summary>
Gets and sets trimming options for text overflowing the layout width,
including the trimming sign object.
</summary>
<param name="trimmingSign">Trimming omission sign.</param>
<returns>
Text trimming options.
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat.FontWeight" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextformat.h" line="113">
<summary>
Get the font weight.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat.FontStyle" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextformat.h" line="121">
<summary>
Get the font style.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat.FontStretch" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextformat.h" line="129">
<summary>
Get the font stretch.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat.FontSize" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextformat.h" line="137">
<summary>
Get the font em height.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextFormat.CultureInfo" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextformat.h" line="145">
<summary>
Get the CultureInfo for this object.
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamilyCollection" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontfamilycollection.h" line="55">
<summary>
A collection of <see cref="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamily"/> Objects.
A <see cref="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamily"/> represents a set of fonts that share the same design but are differentiated
by weight, stretch, and style. <see cref="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamily"/>
<para>(Also see DirectX SDK: IDWriteFontFamily)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamilyCollection.Item(System.Int32)" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontfamilycollection.h" line="65">
<summary>
Gets the font family at the specified index.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamilyCollection.Count" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontfamilycollection.h" line="75">
<summary>
Gets the number of elements contained in the collection.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamilyCollection.IsReadOnly" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontfamilycollection.h" line="83">
<summary>
Determines whether the collection is read only. Returns True.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamilyCollection.GetGenericEnumerator" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontfamilycollection.h" line="91">
<summary>

</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamilyCollection.Contains(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontfamilycollection.h" line="96">
<summary>
Determines whether the collection contains a given font family name.
</summary>
<param name="fontFamilyName">Name of the font family. The name is not case-sensitive but must otherwise exactly match a family name in the collection.</param>
<returns>True if the font family is found, otherwise false.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamilyCollection.IndexOf(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontfamilycollection.h" line="103">
<summary>
Retrives the index in the collection of a given font family given its name.
</summary>
<param name="fontFamilyName">Name of the font family. The name is not case-sensitive but must otherwise exactly match a family name in the collection.</param>
<returns>The zero based index in the collection for this font family, or -1 if the font family is not found.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamilyCollection.IndexOf(Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamily)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontfamilycollection.h" line="110">
<summary>
Determines whether the collection contains a given font family.
</summary>
<param name="item">The font family to compare with.</param>
<returns>True if the font family is found, otherwise false.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamilyCollection.Contains(Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamily)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontfamilycollection.h" line="117">
<summary>
Retrives the index in the collection of a given font family.
</summary>
<param name="item">The font family.</param>
<returns>The zero based index in the collection for this font family, or -1 if the font family is not found.</returns>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="17">
<summary>
Represents a block of text after it has been fully analyzed and formatted.
<para>All coordinates are in device independent pixels (DIPs).</para>
<para>(Also see DirectX SDK: IDWriteTextLayout)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.Text" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="25">
<summary>
The text that was used to create this TextLayout.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.MaxWidth" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="33">
<summary>
Get or set layout maximum width
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.MaxHeight" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="42">
<summary>
Get or set layout maximum height
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.SetFontFamilyName(System.String,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextRange)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="51">
<summary>
Set font family name.
</summary>
<param name="fontFamilyName">Font family name</param>
<param name="textRange">Text range to which this change applies.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.SetFontWeight(Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontWeight,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextRange)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="61">
<summary>
Set font weight.
</summary>
<param name="fontWeight">Font weight</param>
<param name="textRange">Text range to which this change applies.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.SetFontStyle(Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontStyle,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextRange)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="71">
<summary>
Set font style.
</summary>
<param name="fontStyle">Font style</param>
<param name="textRange">Text range to which this change applies.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.SetFontStretch(Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontStretch,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextRange)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="81">
<summary>
Set font stretch.
</summary>
<param name="fontStretch">font stretch</param>
<param name="textRange">Text range to which this change applies.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.SetFontSize(System.Single,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextRange)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="91">
<summary>
Set font em height.
</summary>
<param name="fontSize">Font em height</param>
<param name="textRange">Text range to which this change applies.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.SetUnderline(System.Boolean,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextRange)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="101">
<summary>
Set underline.
</summary>
<param name="hasUnderline">The Boolean flag indicates whether underline takes place</param>
<param name="textRange">Text range to which this change applies.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.SetStrikethrough(System.Boolean,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextRange)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="111">
<summary>
Set strikethrough.
</summary>
<param name="hasStrikethrough">The Boolean flag indicates whether strikethrough takes place</param>
<param name="textRange">Text range to which this change applies.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.SetInlineObject(Microsoft.WindowsAPICodePack.DirectX.DirectWrite.ICustomInlineObject,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextRange)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="122">
<summary>
Set a custom inline object.
</summary>
<param name="inlineObject">An application-implemented inline object.</param>
<param name="textRange">Text range to which this change applies.</param>
<remarks>
This inline object applies to the specified range and will be passed back
to the application via the DrawInlineObject callback when the range is drawn.
Any text in that range will be suppressed.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.SetCultureInfo(System.Globalization.CultureInfo,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextRange)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="137">
<summary>
Set CultureInfo.
</summary>
<param name="cultureInfo">Culture Info</param>
<param name="textRange">Text range to which this change applies.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.SetTypography(Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TypographySettingCollection,Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextRange)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="147">
<summary>
Sets font typography features for text within a specified text range.
</summary>
<param name="typography">Font typography settings collection.</param>
<param name="textRange">Text range to which this change applies.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetFontFamilyNameForRange(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="157">
<summary>
Gets the font family name for the given position and text range for identically-formatted text.
</summary>
<param name="currentPosition">The text position for which to retrieve the font family name.</param>
<returns>
The font family name for the given position, and the range of text having
exactly the same formatting, include font family name, as the given position.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetFontFamilyName(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="167">
<summary>
Get the font family name for the given position.
</summary>
<param name="currentPosition">The current text position.</param>
<returns>The current font family name</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetFontWeightForRange(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="176">
<summary>
Gets the font weight for the given position and text range for identically-formatted text.
</summary>
<param name="currentPosition">The text position for which to retrieve font weight.</param>
<returns>
The font weight for the given position, and the range of text having
exactly the same formatting, including font weight, as the given position.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetFontWeight(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="186">
<summary>
Get the font weight for the given position.
</summary>
<param name="currentPosition">The current text position.</param>
<returns>The current font weight</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetFontStyleForRange(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="195">
<summary>
Gets the font style for the given position and text range for identically-formatted text.
</summary>
<param name="currentPosition">The text position for which to retrieve font style.</param>
<returns>
The font style for the given position, and the range of text having
exactly the same formatting, including font style, as the given position.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetFontStyle(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="205">
<summary>
Get the font style for the given position.
</summary>
<param name="currentPosition">The current text position.</param>
<returns>
The current font style.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetFontStretchForRange(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="216">
<summary>
Gets the font stretch for the given position and text range for identically-formatted text.
</summary>
<param name="currentPosition">The text position for which to retrieve the font stretch.</param>
<returns>
The font stretch for the given position, and the range of text having
exactly the same formatting, including font stretch, as the given position.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetFontStretch(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="227">
<summary>
Get the font stretch for the given position.
</summary>
<param name="currentPosition">The current text position.</param>
<returns>
The current font stretch.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetFontSizeForRange(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="238">
<summary>
Gets the font height for the given position and text range for identically-formatted text.
</summary>
<param name="currentPosition">The text position for which to retrieve the font height.</param>
<returns>
The font height for the given position, and the range of text having
exactly the same formatting, including font height, as the given position.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetFontSize(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="248">
<summary>
Get the font em height for the given position.
</summary>
<param name="currentPosition">The current text position.</param>
<returns>
The current font em height.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetUnderlineForRange(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="259">
<summary>
Gets the underline presence for the given position and text range for identically-formatted text.
</summary>
<param name="currentPosition">The text position for which to retrieve the underline presence.</param>
<returns>
The underline presence for the given position, and the range of text having
exactly the same formatting, including underline presence, as the given position.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetUnderline(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="270">
<summary>
Get the underline presence for the given position.
</summary>
<param name="currentPosition">The current text position.</param>
<returns>
The Boolean flag indicates whether text is underlined.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetStrikethroughForRange(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="281">
<summary>
Gets the strikethrough property for the given position and text range for identically-formatted text.
</summary>
<param name="currentPosition">The text position for which to retrieve the strikethrough property.</param>
<returns>
The strikethrough property for the given position, and the range of text having
exactly the same formatting, including the strikethrough property value, as the given position.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetStrikethrough(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="291">
<summary>
Get the strikethrough presence for the given position.
</summary>
<param name="currentPosition">The current text position.</param>
<returns>
The Boolean flag indicates whether text has strikethrough.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetCultureInfoForRange(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="302">
<summary>
Gets the culture information for the given position and text range for identically-formatted text.
</summary>
<param name="currentPosition">The text position for which to retrieve culture information.</param>
<returns>
The culture information for the given position, and the range of text having
exactly the same formatting, including culture, as the given position.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetCultureInfo(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="312">
<summary>
Get the culture info for the given position.
</summary>
<param name="currentPosition">The current text position.</param>
<returns>
The current culture info.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetTypographyForRange(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="321">
<summary>
Gets the typography setting for the given position and text range for identically-formatted text.
</summary>
<param name="currentPosition">The text position for which to retrieve the typography setting.</param>
<returns>
The typography setting for the given position, and the range of text having
exactly the same formatting, including typography setting, as the given position.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetTypography(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="331">
<summary>
Gets the typography setting of the text at the specified position. 
</summary>
<param name="currentPosition">The current text position.</param>
<returns>
The current typography collection, or null if no typography has been set.
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.LineMetrics" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="342">
<summary>
Retrieves the information about each individual text line of the text string. 
</summary>
<returns>Properties of each line.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.Metrics" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="351">
<summary>
Retrieves overall metrics for the formatted string.
</summary>
<remarks>
Drawing effects like underline and strikethrough do not contribute
to the text size, which is essentially the sum of advance widths and
line heights. Additionally, visible swashes and other graphic
adornments may extend outside the returned width and height.
</remarks>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.OverhangMetrics" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="365">
<summary>
GetOverhangMetrics returns the overhangs (in DIPs) of the layout and all
objects contained in it, including text glyphs and inline objects.
</summary>
<remarks>
Any underline and strikethrough do not contribute to the black box
determination, since these are actually drawn by the renderer, which
is allowed to draw them in any variety of styles.
</remarks>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.ClusterMetrics" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="380">
<summary>
Retrieves logical properties and measurements of each glyph cluster. 
</summary>
<returns>
Array of Cluster Metrics such as line-break or total advance width, for each glyph cluster.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.DetermineMinWidth" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="391">
<summary>
Determines the minimum possible width the layout can be set to without
emergency breaking between the characters of whole words.
</summary>
<returns>
Minimum width.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.HitTestPoint(Microsoft.WindowsAPICodePack.DirectX.Direct2D1.Point2F)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="400">
<summary>
Given a coordinate (in DIPs) relative to the top-left of the layout box,
this returns the corresponding hit-test metrics of the text string where
the hit-test has occurred. This is useful for mapping mouse clicks to caret
positions. When the given coordinate is outside the text string, the function
sets the output value *isInside to false but returns the nearest character
position.
</summary>
<param name="location">The coordinates of the location to hit-test, relative to the top-left location of the layout box.</param>
<returns>
A <see cref="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.HitTestInfo"/> value that includes the output geometry containing or nearest
the hit-test location, and flags providing more information about the location tested.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.HitTestTextPosition(System.UInt32,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="415">
<summary>
Given a text position and whether the caret is on the leading or trailing
edge of that position, this returns the corresponding coordinate (in DIPs)
relative to the top-left of the layout box. This is most useful for drawing
the caret's current position, but it could also be used to anchor an IME to the
typed text or attach a floating menu near the point of interest. It may also be
used to programmatically obtain the geometry of a particular text position
for UI automation.
</summary>
<param name="textPosition">Text position to get the coordinate of.</param>
<param name="isTrailingHit">Flag indicating whether the location is of the leading or the trailing side of the specified text position. </param>
<returns>
A <see cref="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.HitTestInfo"/> value that includes the output geometry containing
the given text position, and the coordinates of the given text position.
</returns>
<remarks>
When drawing a caret at the returned X,Y, it should should be centered on X
and drawn from the Y coordinate down. The height will be the size of the
hit-tested text (which can vary in size within a line).
Reading direction also affects which side of the character the caret is drawn.
However, the returned X coordinate will be correct for either case.
You can get a text length back that is larger than a single character.
This happens for complex scripts when multiple characters form a single cluster,
when diacritics join their base character, or when you test a surrogate pair.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.HitTestTextRange(System.UInt32,System.UInt32,System.Single,System.Single)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="442">
<summary>
The application calls this function to get a set of hit-test metrics
corresponding to a range of text positions. The main usage for this
is to draw highlighted selection of the text string.
</summary>
<param name="textPosition">First text position of the specified range.</param>
<param name="textLength">Number of positions of the specified range.</param>
<param name="originX">Offset of the X origin (left of the layout box) which is added to each of the hit-test metrics returned.</param>
<param name="originY">Offset of the Y origin (top of the layout box) which is added to each of the hit-test metrics returned.</param>
<returns>
Aarray of the output geometry fully enclosing the specified position range.
</returns>
<remarks>
There are no gaps in the returned metrics. While there could be visual gaps,
depending on bidi ordering, each range is contiguous and reports all the text,
including any hidden characters and trimmed text.
The height of each returned range will be the same within each line, regardless
of how the font sizes vary.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetFontCollection(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="468">
<summary>
Gets the font family collection used for the given position.
</summary>
<param name="currentPosition">The text position for which to retrieve the font family collection.</param>
<returns>
The font family collection for the given position.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TextLayout.GetFontCollectionForRange(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetextlayout.h" line="477">
<summary>
Gets the font family collection used for the given position and text range for identically-formatted text.
</summary>
<param name="currentPosition">The text position for which to retrieve the font family collection.</param>
<returns>
The font family collection for the given position, and the range of text having
exactly the same formatting, include font family collection, as the given position.
</returns>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.ICustomInlineObject" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\icustominlineobject.h" line="19">
<summary>
Wraps an application defined inline graphic, allowing DWrite to query 
metrics as if it was a glyph inline with the text.
<para>(Also see DirectX SDK: IDWriteInlineObject)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.ICustomInlineObject.Draw(System.Single,System.Single,System.Boolean,System.Boolean,Microsoft.WindowsAPICodePack.DirectX.Direct2D1.Brush)" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\icustominlineobject.h" line="26">
<summary>
The application implemented rendering callback (IDWriteTextRenderer::DrawInlineObject)
can use this to draw the inline object without needing to cast or query the object
type. The text layout does not call this method directly.
</summary>
<param name="originX">X-coordinate at the top-left corner of the inline object.</param>
<param name="originY">Y-coordinate at the top-left corner of the inline object.</param>
<param name="isSideways">The object should be drawn on its side.</param>
<param name="isRightToLeft">The object is in an right-to-left context and should be drawn flipped.</param>
<param name="clientDrawingEffect">The drawing effect. This is usually a foreground brush.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.ICustomInlineObject.Metrics" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\icustominlineobject.h" line="44">
<summary>
TextLayout calls this callback function to get the measurement of the inline object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.ICustomInlineObject.OverhangMetrics" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\icustominlineobject.h" line="52">
<summary>
TextLayout calls this callback function to get the visible extents (in DIPs) of the inline object.
In the case of a simple bitmap, with no padding and no overhang, all the overhangs will
simply be zeroes.
</summary>
<remarks>
The overhangs should be returned relative to the reported size of the object
(InlineObjectMetrics width/height), and should not be baseline
adjusted. If you have an image that is actually 100x100 DIPs, but you want it
slightly inset (perhaps it has a glow) by 20 DIPs on each side, you would
return a width/height of 60x60 and four overhangs of 20 DIPs.
</remarks>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.ICustomInlineObject.BreakConditionBefore" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\icustominlineobject.h" line="69">
<summary>
Layout uses this to determine the line breaking behavior of the inline object
amidst the text.
Should return the line-breaking condition between the object and the content immediately preceding it.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.ICustomInlineObject.BreakConditionAfter" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\icustominlineobject.h" line="79">
<summary>
Layout uses this to determine the line breaking behavior of the inline object
amidst the text.
Should return the line-breaking condition between the object and the content immediately following it.
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.InlineObject" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwriteinlineobject.h" line="14">
<summary>
Wraps an inline graphic.
<para>(Also see DirectX SDK: IDWriteInlineObject)</para>
</summary>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamily" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontfamily.h" line="16">
<summary>
The FontFamily represents a set of fonts that share the same design but are differentiated
by weight, stretch, and style.
<para>(Also see DirectX SDK: IDWriteFontFamily)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamily.FamilyNames" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontfamily.h" line="26">
<summary>
Gets the family names for the font family, indexed by culture info.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFamily.Fonts" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontfamily.h" line="34">
<summary>
Gets the collection of <see cref="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.Font"/>s of this family.
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TypographyList" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetypography.h" line="15">
<summary>
Implements an enumerable list of FontFeature
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TypographySettingCollection" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetypography.h" line="62">
<summary>
Represents a collection of OpenType font typography settings (<see cref="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFeature"/>).
<para>(Also see DirectX SDK: IDWriteTypography)</para>
</summary>
<remarks>Once an OpenType font feature setting has been added, it cannot be removed from the collection.</remarks>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TypographySettingCollection.Item(System.Int32)" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetypography.h" line="72">
<summary>
Gets the font feature at the specified index.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TypographySettingCollection.Add(Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFeature)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetypography.h" line="82">
<summary>
Adds an OpenType font feature.
</summary>
<param name="feature">Font feature to add to the collection.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TypographySettingCollection.Count" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetypography.h" line="88">
<summary>
Get the number of font features in the collection.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TypographySettingCollection.IsReadOnly" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetypography.h" line="96">
<summary>
Determines if the collection is readonly.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.TypographySettingCollection.GetEnumerator" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritetypography.h" line="104">
<summary>
Gets the enumerator for this collection.
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFace" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontface.h" line="16">
<summary>
Represents an absolute reference to a font face.
It contains font face type, appropriate file references and face identification data.
Various font data such as metrics, names and glyph outlines is obtained from FontFace.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFace.FaceType" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontface.h" line="25">
<summary>
The file format type of a font face.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFace.Index" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontface.h" line="33">
<summary>
The zero-based index of the font face in its font file or files. If the font files contain a single face,
the return value is zero.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFace.Simulations" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontface.h" line="42">
<summary>
The algorithmic style simulation flags of a font face.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFace.IsSymbolFont" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontface.h" line="50">
<summary>
Determines whether the font is a symbol font.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFace.Metrics" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontface.h" line="58">
<summary>
Obtains design units and common metrics for the font face.
These metrics are applicable to all the glyphs within a fontface and are used by applications for layout calculations.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFace.GlyphCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontface.h" line="67">
<summary>
The number of glyphs in the font face.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFace.GetDesignGlyphMetrics(System.UInt16[],System.Int32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontface.h" line="75">
<summary>
Obtains ideal glyph metrics in font design units. Design glyphs metrics are used for glyph positioning.
</summary>
<param name="glyphIndexes">An array of glyph indices to compute the metrics for.</param>
<param name="isSideways">Indicates whether the font is being used in a sideways run.
This can affect the glyph metrics if the font has oblique simulation
because sideways oblique simulation differs from non-sideways oblique simulation.</param>
<returns>
Array of <see cref="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.GlyphMetrics"/> structures filled by this function.
The metrics returned by this function are in font design units.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFace.GetDesignGlyphMetrics(System.UInt16[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontface.h" line="90">
<summary>
Obtains ideal glyph metrics in font design units. Design glyphs metrics are used for glyph positioning.
This function assume Sideways is false.
</summary>
<param name="glyphIndexes">An array of glyph indices to compute the metrics for.</param>
<returns>
Array of <see cref="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.GlyphMetrics"/> structures filled by this function.
The metrics returned by this function are in font design units.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFace.GetGlyphIndexes(System.UInt32[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontface.h" line="101">
<summary>
Returns the nominal mapping of UCS4 Unicode code points to glyph indices as defined by the font 'CMAP' table.
Note that this mapping is primarily provided for line layout engines built on top of the physical font API.
Because of OpenType glyph substitution and line layout character substitution, the nominal conversion does not always correspond
to how a Unicode string will map to glyph indices when rendering using a particular font face.
Also, note that Unicode Variant Selectors provide for alternate mappings for character to glyph.
This call will always return the default variant.
</summary>
<param name="codePoints">An array of USC4 code points to obtain nominal glyph indices from.</param>
<returns>
Array of nominal glyph indices filled by this function.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFace.GetGlyphIndexes(System.Char[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontface.h" line="115">
<summary>
Returns the nominal mapping of UCS4 Unicode code points to glyph indices as defined by the font 'CMAP' table.
Note that this mapping is primarily provided for line layout engines built on top of the physical font API.
Because of OpenType glyph substitution and line layout character substitution, the nominal conversion does not always correspond
to how a Unicode string will map to glyph indices when rendering using a particular font face.
Also, note that Unicode Variant Selectors provide for alternate mappings for character to glyph.
This call will always return the default variant.
</summary>
<param name="characterArray">An array of characters to obtain nominal glyph indices from.</param>
<returns>
Array of nominal glyph indices filled by this function.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.FontFace.GetGlyphIndexes(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefontface.h" line="129">
<summary>
Returns the nominal mapping of UCS4 Unicode code points to glyph indices as defined by the font 'CMAP' table.
Note that this mapping is primarily provided for line layout engines built on top of the physical font API.
Because of OpenType glyph substitution and line layout character substitution, the nominal conversion does not always correspond
to how a Unicode string will map to glyph indices when rendering using a particular font face.
Also, note that Unicode Variant Selectors provide for alternate mappings for character to glyph.
This call will always return the default variant.
</summary>
<param name="text">The string to obtain nominal glyph indices for its characters.</param>
<returns>
Array of nominal glyph indices filled by this function.
</returns>
</member>
</members>
</doc>