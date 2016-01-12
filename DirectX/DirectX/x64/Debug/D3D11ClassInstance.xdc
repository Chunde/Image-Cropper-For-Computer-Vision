<?xml version="1.0"?><doc>
<members>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceChild" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicechild.h" line="14">
<summary>
A device-child interface accesses data used by a device.
<para>(Also see DirectX SDK: ID3D11DeviceChild)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceChild.Device" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicechild.h" line="22">
<summary>
Get the device that created this object.
<para>(Also see DirectX SDK: ID3D11DeviceChild::GetDevice)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11classinstance.h" line="11">
<summary>
This class encapsulates an HLSL class.
<para>(Also see DirectX SDK: ID3D11ClassInstance)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance.ClassLinkage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11classinstance.h" line="19">
<summary>
Gets the ClassLinkage object associated with the current HLSL class.
<para>(Also see DirectX SDK: ID3D11ClassInstance::GetClassLinkage)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11classinstance.h" line="28">
<summary>
Gets a description of the current HLSL class.
<para>(Also see DirectX SDK: ID3D11ClassInstance::GetDesc)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance.InstanceName" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11classinstance.h" line="37">
<summary>
Gets the instance name of the current HLSL class.
<para>(Also see DirectX SDK: ID3D11ClassInstance::GetInstanceName)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance.TypeName" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11classinstance.h" line="46">
<summary>
Gets the type of the current HLSL class.
<para>(Also see DirectX SDK: ID3D11ClassInstance::GetTypeName)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11classlinkage.h" line="11">
<summary>
This class encapsulates an HLSL dynamic linkage.
<para>(Also see DirectX SDK: ID3D11ClassLinkage)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage.CreateClassInstance(System.String,System.UInt32,System.UInt32,System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11classlinkage.h" line="19">
<summary>
Initializes a class-instance object that represents an HLSL class instance.
<para>(Also see DirectX SDK: ID3D11ClassLinkage::CreateClassInstance)</para>
</summary>
<param name="classTypeName">The type name of a class to initialize.</param>
<param name="constantBufferOffset">Identifies the constant buffer that contains the class data.</param>
<param name="constantVectorOffset">The four-component vector offset from the start of the constant buffer where the class data will begin. Consequently, this is not a byte offset.</param>
<param name="textureOffset">The texture slot for the first texture; there may be multiple textures following the offset.</param>
<param name="samplerOffset">The sampler slot for the first sampler; there may be multiple samplers following the offset.</param>
<returns>A ClassInstance interface to initialize.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage.GetClassInstance(System.String,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11classlinkage.h" line="31">
<summary>
Gets the class-instance object that represents the specified HLSL class.
<para>(Also see DirectX SDK: ID3D11ClassLinkage::GetClassInstance)</para>
</summary>
<param name="classInstanceName">The name of a class for which to get the class instance.</param>
<param name="instanceIndex">The index of the class instance.</param>
<returns>The ClassInstance to initialize.</returns>
</member>
</members>
</doc>