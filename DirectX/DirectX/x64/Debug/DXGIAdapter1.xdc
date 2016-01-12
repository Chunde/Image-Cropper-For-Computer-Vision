<?xml version="1.0"?><doc>
<members>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.GraphicsObject" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiobject.h" line="11">
<summary>
An GraphicsObject is the base for all Graphics classes. 
<para>(Also see DirectX SDK: IDXGIObject)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.GraphicsObject.GetParent``1" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiobject.h" line="31">
<summary>
Gets the parent of this object.
<para>(Also see DirectX SDK: IDXGIObject::GetParent)</para>
</summary>
<typeparam name="T">The type of the parent object requested. 
This type has to be a GraphicsObject or a subtype.</typeparam>
<returns>The parent object. Or null if this object does not have a parent.</returns>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Adapter" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiadapter.h" line="11">
<summary>
The Adapter interface represents a display sub-system (including one or more GPU's, DACs and video memory).
<para>(Also see DirectX SDK: IDXGIAdapter)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Adapter.CheckDeviceSupport(Microsoft.WindowsAPICodePack.DirectX.Direct3D.DeviceType)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiadapter.h" line="19">
<summary>
Checks to see if a device interface type for a graphics component is supported by the system.
<para>(Also see DirectX SDK: IDXGIAdapter::CheckInterfaceSupport)</para>
</summary>
<param name="deviceType"> The device support checked.</param>
<returns>
An AdapterDriverVersion value containing the major and minor driver version numbers,
if the device type is supported for the adapter. Otherwise, null.
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Adapter.Outputs" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiadapter.h" line="30">
<summary>
Get a read-only collection of all adapter (video card) outputs available.
<para>(Also see DirectX SDK: IDXGIAdapter::EnumOutputs)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Adapter.GetOutput(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiadapter.h" line="39">
<summary>
Get an adapter (video card) output.
<para>(Also see DirectX SDK: IDXGIAdapter::EnumOutputs)</para>
</summary>
<param name="index">The index of the output requested.</param>
<returns>An Output object</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Adapter.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiadapter.h" line="47">
<summary>
Gets a DXGI 1.0 description of an adapter (or video card).
<para>(Also see DirectX SDK: IDXGIAdapter::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Adapter1" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiadapter1.h" line="10">
<summary>
The Adapter1 interface represents a display sub-system (including one or more GPU's, DACs and video memory).
<para>(Also see DirectX SDK: IDXGIAdapter1)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Adapter1.Description1" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiadapter1.h" line="18">
<summary>
Gets a DXGI 1.1 description of a local or remote adapter (or video card).
<para>(Also see DirectX SDK: IDXGIAdapter1::GetDesc1)</para>
</summary>
</member>
</members>
</doc>