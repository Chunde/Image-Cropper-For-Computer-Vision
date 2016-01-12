<?xml version="1.0"?><doc>
<members>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.DirectObject" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directobject.h" line="7">
<summary>
Base for classes supporting an internal interface that is not an IUnknown
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.DirectObject.NativeObject" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directobject.h" line="30">
<summary>
Get the internal native pointer for the wrapped native object
</summary>
<returns>
A pointer to the wrapped native interfac.
</returns>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Include" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10include.h" line="66">
<summary>
An include interface allows an application to create user-overridable methods for opening and closing files when loading an effect from memory. This class does not inherit from anything, but does declare the following methods:
<para>(Also see DirectX SDK: ID3D10Include)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Include.Close(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.IncludeData)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10include.h" line="74">
<summary>
A user-implemented method for closing a shader #include file.
<para>(Also see DirectX SDK: ID3D10Include::Close)</para>
</summary>
<param name="data">Pointer to the returned buffer that contains the include directives. This is the pointer that was returned by the corresponding Include.Open call.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Include.Open(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.IncludeType,System.String,System.IntPtr)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10include.h" line="81">
<summary>
A user-implemented method for opening and reading the contents of a shader #include file.
<para>(Also see DirectX SDK: ID3D10Include::Open)</para>
</summary>
<param name="includeType">The location of the #include file. See IncludeType.</param>
<param name="fileName">Name of the #include file.</param>
<param name="parentData">Pointer to the container that includes the #include file.</param>
<returns>The data that contains the include directives. This data remains valid until Include.Close() is called.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Include.#ctor(System.IntPtr)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10include.h" line="91">
<summary>
Public constructor to allow client code to create managed sub-classes that implement the
interface.
</summary>
<param name="nativeInterface">The unmanaged interface pointer for the client's implementation</param>
</member>
</members>
</doc>