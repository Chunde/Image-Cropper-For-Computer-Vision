<?xml version="1.0"?><doc>
<members>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.Font" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefont.h" line="16">
<summary>
The Font represents a physical font in a font collection.
<para>(Also see DirectX SDK: IDWriteFont)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.Font.FaceNames" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefont.h" line="24">
<summary>
Gets localized face names for the font (e.g., Regular or Bold), indexed by culture.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.Font.GetInformationalStrings(Microsoft.WindowsAPICodePack.DirectX.DirectWrite.InformationalStringId)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefont.h" line="32">
<summary>
Gets a dictionary containing the specified informational strings, indexed by culture.
</summary>
<param name="informationalStringId">Identifies the string to get.</param>
<returns>
A dictionary containing the specified informational strings, indexed by culture. 
If the font does not contain the specified string, the returned dictionary is null. 
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.Font.FontFamily" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefont.h" line="43">
<summary>
Gets the font family to which the specified font belongs.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.Font.Weight" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefont.h" line="51">
<summary>
Gets the weight of the specified font.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.Font.Stretch" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefont.h" line="59">
<summary>
Gets the stretch (aka. width) of the specified font.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.Font.Style" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefont.h" line="67">
<summary>
Gets the style (aka. slope) of the specified font.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.Font.IsSymbolFont" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefont.h" line="75">
<summary>
Returns TRUE if the font is a symbol font or FALSE if not.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.Font.Simulations" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefont.h" line="83">
<summary>
Gets a value that indicates what simulation are applied to the specified font.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.Font.Metrics" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefont.h" line="91">
<summary>
Gets the metrics for the font.
</summary>
<param name="fontMetrics">Receives the font metrics.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.Font.HasCharacter(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefont.h" line="100">
<summary>
Determines whether the font supports the specified character.
</summary>
<param name="unicodeValue">Unicode (UCS-4) character value.</param>
<returns>
True if the font supports the specified character or False if not.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.Font.HasCharacter(System.Char)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefont.h" line="109">
<summary>
Determines whether the font supports the specified character.
</summary>
<param name="character">That Unicode character.</param>
<returns>
True if the font supports the specified character or False if not.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectWrite.Font.CreateFontFace" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directwrite\dwritefont.h" line="118">
<summary>
Creates a font face object for the font.
</summary>
</member>
</members>
</doc>