<?xml version="1.0"?><doc>
<members>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DeviceChild" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10devicechild.h" line="15">
<summary>
A device-child interface accesses data used by a device.
<para>(Also see DirectX SDK: ID3D10DeviceChild)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DeviceChild.Device" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10devicechild.h" line="23">
<summary>
Get the device that created this object.
<para>(Also see DirectX SDK: ID3D10DeviceChild::GetDevice)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10resource.h" line="15">
<summary>
A resource interface provides common actions on all resources.
<para>(Also see DirectX SDK: ID3D10Resource)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource.EvictionPriority" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10resource.h" line="23">
<summary>
Get or set the eviction priority of a resource.
<para>(Also see DirectX SDK: ID3D10Resource::GetEvictionPriority)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource.ResourceDimension" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10resource.h" line="33">
<summary>
Get the type of the resource.
<para>(Also see DirectX SDK: ID3D10Resource::GetType)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource.GraphicsSurface" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10resource.h" line="42">
<summary>
Get associated Graphics surface. If none is associated - throw an InvalidCastException.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource.GraphicsSurface1" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10resource.h" line="50">
<summary>
Get associated Graphics surface. If none is associated - throw an InvalidCastException.
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture1D" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10texture1d.h" line="10">
<summary>
A 1D texture interface accesses texel data, which is structured memory.
<para>(Also see DirectX SDK: ID3D10Texture1D)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture1D.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10texture1d.h" line="18">
<summary>
Get the properties of the texture resource.
<para>(Also see DirectX SDK: ID3D10Texture1D::GetDesc)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture1D.Map(System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Map,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MapOptions)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10texture1d.h" line="27">
<summary>
Get the data contained in a subresource, and deny the GPU access to that subresource.
<para>(Also see DirectX SDK: ID3D10Texture1D::Map)</para>
</summary>
<param name="subresourceIndex">Index number of the subresource. See D3D10CalcSubresource for more details.</param>
<param name="type">Specifies the CPU's read and write permissions for a resource. For possible values, see Map.</param>
<param name="options">Flag that specifies what the CPU should do when the GPU is busy. This flag is optional.</param>
<returns>Pointer to the texture resource data.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture1D.Unmap(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10texture1d.h" line="37">
<summary>
Invalidate the resource that was retrieved by Texture1D.Map, and re-enable the GPU's access to that resource.
<para>(Also see DirectX SDK: ID3D10Texture1D::Unmap)</para>
</summary>
<param name="subresourceIndex">Subresource to be unmapped. See D3D10CalcSubresource for more details.</param>
</member>
</members>
</doc>