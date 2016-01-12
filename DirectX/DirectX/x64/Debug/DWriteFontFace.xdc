<?xml version="1.0"?><doc>
<members>
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
</members>
</doc>