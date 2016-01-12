<?xml version="1.0"?><doc>
<members>
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
</members>
</doc>