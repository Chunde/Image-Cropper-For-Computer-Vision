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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Device" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgidevice.h" line="14">
<summary>
Implements a derived class for Graphics objects that produce image data.
<para>(Also see DirectX SDK: IDXGIDevice)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Device.Adapter" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgidevice.h" line="23">
<summary>
Returns the adapter for the specified device.
<para>(Also see DirectX SDK: IDXGIDevice::GetAdapter)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Device.GpuThreadPriority" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgidevice.h" line="32">
<summary>
Sets or Gets the GPU thread priority.
<para>(Also see DirectX SDK: IDXGIDevice::GetGPUThreadPriority and IDXGIDevice::SetGPUThreadPriority)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Device.QueryResourceResidency(System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Graphics.Resource})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgidevice.h" line="42">
<summary>
Gets the residency status of a colleciton of resources.
<para>Note: This method should not be called every frame as it incurs a non-trivial amount of overhead.</para>
<para>(Also see DirectX SDK: IDXGIDevice::QueryResourceResidency)</para>
</summary>
<param name="resources">A collection or array of Resource interfaces.</param>
<returns>An array of residency flags. Each element describes the residency status for corresponding element in
the resources argument.</returns>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.DeviceSubObject" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgidevicesubobject.h" line="19">
<summary>
Inherited from objects that are tied to the device so that they can retrieve it.
<para>(Also see DirectX SDK: IDXGIDeviceSubObject)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.DeviceSubObject.AsDirect3D10Device" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgidevicesubobject.h" line="28">
<summary>
Retrieves the device as Direct3D 10 device.
<para>(Also see DirectX SDK: IDXGIDeviceSubObject::GetDevice)</para>
</summary>
<returns>A Direct3D 10 Device.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.DeviceSubObject.AsDirect3D10Device1" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgidevicesubobject.h" line="38">
<summary>
Retrieves the device as Direct3D 10.1 device.
<para>(Also see DirectX SDK: IDXGIDeviceSubObject::GetDevice)</para>
</summary>
<returns>A Direct3D 10.1 Device.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.DeviceSubObject.AsDirect3D11Device" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgidevicesubobject.h" line="48">
<summary>
Retrieves the device as Direct3D 11 device.
<para>(Also see DirectX SDK: IDXGIDeviceSubObject::GetDevice)</para>
</summary>
<returns>A Direct3D 11 Device.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.DeviceSubObject.AsGraphicsDevice" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgidevicesubobject.h" line="58">
<summary>
Retrieves the device as Graphics device.
<para>(Also see DirectX SDK: IDXGIDeviceSubObject::GetDevice)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Resource" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiresource.h" line="10">
<summary>
An Resource interface allows resource sharing and identifies the memory that a resource resides in.
<para>(Also see DirectX SDK: IDXGIResource)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Resource.EvictionPriority" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiresource.h" line="18">
<summary>
The priority for evicting the resource from memory
<para>(Also see DirectX SDK: IDXGIResource::GetEvictionPriority)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Resource.SharedHandle" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiresource.h" line="28">
<summary>
Get the handle to a shared resource. 
The returned handle can be used to open the resource using different Direct3D devices.
<para>(Also see DirectX SDK: IDXGIResource::GetSharedHandle)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Resource.UsageOptions" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiresource.h" line="38">
<summary>
Get the expected resource usage.
<para>(Also see DirectX SDK: IDXGIResource::GetUsage)</para>
</summary>
<param name="outUsage">A usage flag (see <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Resource.UsageOptions"/>)<seealso cref="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Resource.UsageOptions"/>. For Direct3D 10, a surface can be used as a shader input or a render-target output.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Surface" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgisurface.h" line="10">
<summary>
An Surface interface implements methods for image-data objects.
<para>(Also see DirectX SDK: IDXGISurface)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Surface.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgisurface.h" line="18">
<summary>
Get a description of the surface.
<para>(Also see DirectX SDK: IDXGISurface::GetDesc)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Surface.Map(Microsoft.WindowsAPICodePack.DirectX.Graphics.MapOptions)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgisurface.h" line="27">
<summary>
Get the data contained in the surface, and deny GPU access to the surface.
<para>(Also see DirectX SDK: IDXGISurface::Map)</para>
</summary>
<param name="options">CPU read-write flags. These flags can be combined with a logical OR.</param>
<returns>The surface data (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.MappedRect"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.MappedRect"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Surface.Unmap" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgisurface.h" line="35">
<summary>
Invalidate the pointer to the surface retrieved by Surface.Map and re-enable GPU access to the resource.
<para>(Also see DirectX SDK: IDXGISurface::Unmap)</para>
</summary>
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
</members>
</doc>