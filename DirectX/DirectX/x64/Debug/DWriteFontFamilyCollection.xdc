<?xml version="1.0"?><doc>
<members>
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