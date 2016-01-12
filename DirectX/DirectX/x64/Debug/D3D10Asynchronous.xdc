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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Asynchronous" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10asynchronous.h" line="10">
<summary>
This class encapsulates methods for retrieving data from the GPU asynchronously.
<para>(Also see DirectX SDK: ID3D10Asynchronous)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Asynchronous.Begin" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10asynchronous.h" line="18">
<summary>
Starts the collection of GPU data.
<para>(Also see DirectX SDK: ID3D10Asynchronous::Begin)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Asynchronous.End" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10asynchronous.h" line="24">
<summary>
Ends the collection of GPU data.
<para>(Also see DirectX SDK: ID3D10Asynchronous::End)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Asynchronous.GetData(System.IntPtr,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.AsyncGetDataOptions)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10asynchronous.h" line="30">
<summary>
Get data from the GPU asynchronously.
<para>(Also see DirectX SDK: ID3D10Asynchronous::GetData)</para>
</summary>
<param name="data">Address of memory that will receive the data. If NULL, GetData will be used only to check status. The type of data output depends on the type of asynchronous object. See Remarks.</param>
<param name="dataSize">Size of the data to retrieve or 0. This value can be obtained with Asynchronous.GetDataSize. Must be 0 when pData is NULL.</param>
<param name="options">Optional flags. Can be 0 or any combination of the flags enumerated by AsyncGetDataOptions.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Asynchronous.DataSize" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10asynchronous.h" line="38">
<summary>
Get the size of the data (in bytes) that is output when calling Asynchronous.GetData.
<para>(Also see DirectX SDK: ID3D10Asynchronous::GetDataSize)</para>
</summary>
</member>
</members>
</doc>