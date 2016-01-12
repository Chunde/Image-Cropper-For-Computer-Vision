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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflectionConstantBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflectionconstantbuffer.h" line="13">
<summary>
This shader-reflection interface provides access to a constant buffer. This class does not inherit from anything, but does declare the following methods:
<para>(Also see DirectX SDK: ID3D10ShaderReflectionConstantBuffer)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflectionConstantBuffer.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflectionconstantbuffer.h" line="21">
<summary>
Get a constant-buffer description.
<para>(Also see DirectX SDK: ID3D10ShaderReflectionConstantBuffer::GetDesc)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflectionConstantBuffer.GetVariableByIndex(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflectionconstantbuffer.h" line="30">
<summary>
Get a shader-reflection variable by index.
<para>(Also see DirectX SDK: ID3D10ShaderReflectionConstantBuffer::GetVariableByIndex)</para>
</summary>
<param name="index">Zero-based index.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflectionConstantBuffer.GetVariableByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflectionconstantbuffer.h" line="37">
<summary>
Get a shader-reflection variable by name.
<para>(Also see DirectX SDK: ID3D10ShaderReflectionConstantBuffer::GetVariableByName)</para>
</summary>
<param name="name">Variable name.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflectionVariable" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflectionvariable.h" line="13">
<summary>
This shader-reflection interface provides access to a variable. This class does not inherit from anything, but does declare the following methods:
<para>(Also see DirectX SDK: ID3D10ShaderReflectionVariable)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflectionVariable.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflectionvariable.h" line="21">
<summary>
Get a shader-variable description.
<para>(Also see DirectX SDK: ID3D10ShaderReflectionVariable::GetDesc)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflectionVariable.ShaderReflectionType" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflectionvariable.h" line="30">
<summary>
Get a shader-variable type.
<para>(Also see DirectX SDK: ID3D10ShaderReflectionVariable::GetType)</para>
</summary>
</member>
</members>
</doc>