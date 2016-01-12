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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10buffer.h" line="10">
<summary>
A buffer interface accesses a buffer resource, which is unstructured memory. Buffers typically store vertex or index data.
<para>(Also see DirectX SDK: ID3D10Buffer)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10buffer.h" line="18">
<summary>
Get the properties of a buffer resource.
<para>(Also see DirectX SDK: ID3D10Buffer::GetDesc)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer.Map(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Map,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MapOptions)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10buffer.h" line="27">
<summary>
Get the data contained in the resource and deny GPU access to the resource.
<para>(Also see DirectX SDK: ID3D10Buffer::Map)</para>
</summary>
<param name="type">Flag that specifies the CPU's permissions for the reading and writing of a resource. For possible values, see Map.</param>
<param name="options">Flag that specifies what the CPU should do when the GPU is busy (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MapOptions"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MapOptions"/>. This flag is optional.</param>
<returns>Pointer to the buffer resource data.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer.Unmap" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10buffer.h" line="36">
<summary>
Invalidate the pointer to the resource retrieved by D3DBuffer.Map and reenable GPU access to the resource.
<para>(Also see DirectX SDK: ID3D10Buffer::Unmap)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10buffer.h" line="56">
<summary>
Stores the parameters required to get or set a vertex buffer for a device.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexBuffer.#ctor(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer,System.UInt32,System.UInt32)" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10buffer.h" line="63">
<param name="buffer">A vertex buffer (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/>. 
The vertex buffer must have been created with the VertexBuffer flag.</param>
<param name="stride">The stride value. This is the size (in bytes) of the elements that are to be used from the vertex buffer.</param>
<param name="offset">The offset value. This is the number of bytes between the first element of the vertex buffer and the first element that will be used.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.IndexBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10buffer.h" line="126">
<summary>
Stores the parameters required to get or set the current index buffer for a device.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.IndexBuffer.#ctor(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer,Microsoft.WindowsAPICodePack.DirectX.Graphics.Format,System.UInt32)" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10buffer.h" line="133">
<summary>
Constructor.
</summary>
<param name="buffer">A D3DBuffer object, that contains indices. The index buffer must have been created with the indexBuffer flag.</param>
<param name="format">A Format that specifies the format of the data in the index buffer. The only formats allowed for index buffer data are 16-bit (Format_R16_UINT) and 32-bit (Format_R32_UINT) integers.</param>
<param name="offset">Offset (in bytes) from the start of the index buffer to the first index to use.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.OutputBuffer.#ctor(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer,System.UInt32)" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10buffer.h" line="202">
<summary>
Constructor.
</summary>
<param name="buffer">
The buffers must have been created with the <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BindingOptions"/><b>.StreamOutput</b> flag.
</param>
<param name="offset">
Offset in bytes to the start of the buffer position to use. -1 indicates that output should
continue after the last location written to the buffer in a previous stream output pass.
</param>
</member>
</members>
</doc>