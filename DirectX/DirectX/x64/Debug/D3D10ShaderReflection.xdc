<?xml version="1.0"?><doc>
<members>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection.h" line="13">
<summary>
A shader-reflection interface accesses shader information.
<para>(Also see DirectX SDK: ID3D10ShaderReflection)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection.GetConstantBufferByIndex(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection.h" line="21">
<summary>
Get a constant buffer by index.
<para>(Also see DirectX SDK: ID3D10ShaderReflection::GetConstantBufferByIndex)</para>
</summary>
<param name="index">Zero-based index.</param>
<returns>A shader reflection constant bufer.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection.GetConstantBufferByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection.h" line="29">
<summary>
Get a constant buffer by name.
<para>(Also see DirectX SDK: ID3D10ShaderReflection::GetConstantBufferByName)</para>
</summary>
<param name="name">The constant-buffer name.</param>
<returns>A shader reflection constant bufer.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection.h" line="37">
<summary>
Get a shader description.
<para>(Also see DirectX SDK: ID3D10ShaderReflection::GetDesc)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection.GetInputParameterDescription(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection.h" line="46">
<summary>
Get an input-parameter description for a shader.
<para>(Also see DirectX SDK: ID3D10ShaderReflection::GetInputParameterDesc)</para>
</summary>
<param name="parameterIndex">A zero-based parameter index.</param>
<returns>A shader-input-signature description. See SignatureParameterDescription.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection.GetOutputParameterDescription(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection.h" line="54">
<summary>
Get an output-parameter description for a shader.
<para>(Also see DirectX SDK: ID3D10ShaderReflection::GetOutputParameterDesc)</para>
</summary>
<param name="parameterIndex">A zero-based parameter index.</param>
<returns>A shader-output-parameter description. See SignatureParameterDescription.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection.GetResourceBindingDescription(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection.h" line="62">
<summary>
Get a description of the resources bound to a shader.
<para>(Also see DirectX SDK: ID3D10ShaderReflection::GetResourceBindingDesc)</para>
</summary>
<param name="resourceIndex">A zero-based resource index.</param>
<returns>A input-binding description. See ShaderInputBindDescription.</returns>
</member>
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
</members>
</doc>