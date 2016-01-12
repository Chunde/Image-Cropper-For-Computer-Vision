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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Device1" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgidevice1.h" line="10">
<summary>
Implements a derived class for Graphics 1.1 objects that produce image data.
<para>(Also see DirectX SDK: IDXGIDevice1)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Device1.MaximumFrameLatency" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgidevice1.h" line="18">
<summary>
Gets or sets the number of frames that the system is allowed to queue for rendering.
<para>(Also see DirectX SDK: IDXGIDevice1::GetMaximumFrameLatency, IDXGIDevice1::SetMaximumFrameLatency)</para>
</summary>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Factory" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgifactory.h" line="30">
<summary>
Implements methods for generating Graphics objects (which handle fullscreen transitions).
<para>(Also see DirectX SDK: IDXGIFactory)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Factory.CreateSwapChain(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice,Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChainDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgifactory.h" line="39">
<summary>
Creates a swap chain.
<para>(Also see DirectX SDK: IDXGIFactory::CreateSwapChain)</para>
</summary>
<param name="device">The device that will write 2D images to the swap chain.</param>
<param name="description">The swap-chain description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChainDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChainDescription"/>. This parameter cannot be NULL.</param>
<return>The swap chain created (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain"/>.</return>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Factory.CreateSwapChain(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice,Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChainDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgifactory.h" line="48">
<summary>
Creates a swap chain.
<para>(Also see DirectX SDK: IDXGIFactory::CreateSwapChain)</para>
</summary>
<param name="device">The device that will write 2D images to the swap chain.</param>
<param name="description">The swap-chain description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChainDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChainDescription"/>. This parameter cannot be NULL.</param>
<return>The swap chain created (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain"/>.</return>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Factory.Adapters" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgifactory.h" line="57">
<summary>
Enumerates the adapters (video cards).
<para>(Also see DirectX SDK: IDXGIFactory::EnumAdapters)</para>
</summary>
<remarks>
Note that if the set of installed adapters changes, the adapter collection
returned by this factory instance is stale. To get the current collection
of adapters, a new factory instance must be created.
</remarks>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Factory.WindowAssociation" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgifactory.h" line="71">
<summary>
Get the window through which the user controls the transition to and from fullscreen.
<para>(Also see DirectX SDK: IDXGIFactory::GetWindowAssociation)</para>
</summary>
<return>A window handle.</return>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Factory.MakeWindowAssociation(System.IntPtr,Microsoft.WindowsAPICodePack.DirectX.Graphics.MakeWindowAssociationOptions)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgifactory.h" line="81">
<summary>
Allows Graphics to monitor an application's message queue for the alt-enter key sequence (which causes the application to switch from windowed to fullscreen or vice versa).
<para>(Also see DirectX SDK: IDXGIFactory::MakeWindowAssociation)</para>
</summary>
<param name="windowHandle">The handle of the window that is to be monitored. This parameter can be NULL; but only if the flags are also 0.</param>
<param name="options">One or more of the MakeWindowAssociation flags.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Factory.Create" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgifactory.h" line="89">
<summary>
Creates a Graphics 1.0 factory that generates objects used to enumerate and specify video graphics settings.
<para>(Also see DirectX SDK: CreateDXGIFactory() Function.)</para>
</summary>
<returns>Factory Object.</returns>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Factory1" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgifactory1.h" line="25">
<summary>
The Factory1 interface implements methods for generating Graphics objects.
<para>(Also see DirectX SDK: IDXGIFactory1)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Factory1.Adapters" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgifactory1.h" line="33">
<summary>
Enumerates both local and remote adapters (video cards).
<para>(Also see DirectX SDK: IDXGIFactory1::EnumAdapters1)</para>
</summary>
<remarks>
Note that if the IsCurrent property returns false, the adapter collection
returned by this factory instance is stale. To get the current collection
of adapters, a new factory instance must be created.
</remarks>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Factory1.IsCurrent" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgifactory1.h" line="47">
<summary>
Informs application the possible need to re-enumerate adapters -- new adapter(s) have become available, current adapter(s) become unavailable.
Called by Direct3D 10.1 Command Remoting applications to handle Remote Desktop Services session transitions.
<para>(Also see DirectX SDK: IDXGIFactory1::IsCurrent)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Factory1.Create" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgifactory1.h" line="57">
<summary>
Creates a Graphics 1.1 factory that generates objects used to enumerate and specify video graphics settings.
<para>(Also see DirectX SDK: CreateDXGIFactory1() Function.)</para>
</summary>
<returns>Factory1 Object.</returns>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.KeyedMutex" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgikeyedmutex.h" line="10">
<summary>
Represents a keyed mutex, which allows exclusive access to a shared resource 
that is used by multiple devices.
<para>(Also see DirectX SDK: IDXGIKeyedMutex)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.KeyedMutex.AcquireSync(System.UInt64,System.UInt32!System.Runtime.CompilerServices.IsLong)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgikeyedmutex.h" line="19">
<summary>
Using a key, acquires exclusive rendering access to a shared resource.
<para>(Also see DirectX SDK: IDXGIKeyedMutex::AcquireSync)</para>
</summary>
<param name="key">A value that indicates which device to give access to. 
This method will succeed when the device that currently owns the surface calls
the KeyedMutex.ReleaseSync method using the same value. 
This value can be any UINT64 value.</param>
<param name="milliseconds">The time-out interval, in milliseconds. 
This method will return if the interval elapses, and the keyed mutex has not 
been released using the specified Key.           
If this value is set to zero, the AcquireSync method will test to see if 
the keyed mutex has been released and returns immediately.           
If this value is set to INFINITE, the time-out interval will never elapse.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.KeyedMutex.ReleaseSync(System.UInt64)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgikeyedmutex.h" line="35">
<summary>
Using a key, releases exclusive rendering access to a shared resource
<para>(Also see DirectX SDK: IDXGIKeyedMutex::ReleaseSync)</para>
</summary>
<param name="key">A value that indicates which device to give access to. This method will succeed when the device that currently owns the surface calls the KeyedMutex.ReleaseSync method using the same value. This value can be any UINT64 value.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="22">
<summary>
An Output interface represents an adapter output (such as a monitor).
<para>(Also see DirectX SDK: IDXGIOutput)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.FindClosestMatchingMode(Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="30">
<summary>
Find the display mode that most closely matches the requested display mode 
for a given Direct3D Device.
<para>(Also see DirectX SDK: IDXGIOutput::FindClosestMatchingMode)</para>
</summary>
<param name="modeToMatch">The desired display mode (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription"/>. Members of ModeDescription can be unspecified indicating no preference for that member.  A value of 0 for Width or Height indicates the value is unspecified.  If either Width or Height are 0 both must be 0.  A numerator and denominator of 0 in RefreshRate indicate it is unspecified. Other members of ModeDescription have enumeration values indicating the member is unspecified.  If pConnectedDevice is null, Format cannot be UNKNOWN.</param>
<param name="concernedDevice">The Direct3D device object. If this parameter is NULL, only modes whose format matches that of pModeToMatch will         be returned; otherwise, only those formats that are supported for scan-out by the device are returned.</param>
<returns>The mode that most closely matches ModeToMatch.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.FindClosestMatchingMode(Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="40">
<summary>
Find the display mode that most closely matches the requested display mode 
for a given Direct3D Device.
<para>(Also see DirectX SDK: IDXGIOutput::FindClosestMatchingMode)</para>
</summary>
<param name="modeToMatch">The desired display mode (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription"/>. Members of ModeDescription can be unspecified indicating no preference for that member.  A value of 0 for Width or Height indicates the value is unspecified.  If either Width or Height are 0 both must be 0.  A numerator and denominator of 0 in RefreshRate indicate it is unspecified. Other members of ModeDescription have enumeration values indicating the member is unspecified.  If pConnectedDevice is null, Format cannot be UNKNOWN.</param>
<param name="concernedDevice">The Direct3D device object. If this parameter is NULL, only modes whose format matches that of pModeToMatch will         be returned; otherwise, only those formats that are supported for scan-out by the device are returned.</param>
<returns>The mode that most closely matches ModeToMatch.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.FindClosestMatchingMode(Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="50">
<summary>
Find the display mode that most closely matches the requested display mode.
<para>(Also see DirectX SDK: IDXGIOutput::FindClosestMatchingMode)</para>
</summary>
<param name="modeToMatch">The desired display mode (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription"/>. Members of ModeDescription can be unspecified indicating no preference for that member.  A value of 0 for Width or Height indicates the value is unspecified.  If either Width or Height are 0 both must be 0.  A numerator and denominator of 0 in RefreshRate indicate it is unspecified. Other members of ModeDescription have enumeration values indicating the member is unspecified. Format cannot be UNKNOWN.</param>
<returns>The mode that most closely matches ModeToMatch.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="58">
<summary>
Get a description of the output.
<para>(Also see DirectX SDK: IDXGIOutput::GetDesc)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.GetDisplayModeList(Microsoft.WindowsAPICodePack.DirectX.Graphics.Format,Microsoft.WindowsAPICodePack.DirectX.Graphics.NonDefaultModes)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="67">
<summary>
Gets the display modes that match the requested format and other input options.
<para>(Also see DirectX SDK: IDXGIOutput::GetDisplayModeList)</para>
</summary>
<param name="colorFormat">The color format (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Format"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Format"/>.</param>
<param name="modes">Options for modes to include (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.NonDefaultModes"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.NonDefaultModes"/>. NonDefaultModes.Scaling needs to be specified to expose the display modes that require scaling.  Centered modes, requiring no scaling and corresponding directly to the display output, are enumerated by default.</param>
<returns>An aray of display modes (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription"/> or null if no modes were found.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.GetNumberOfDisplayModes(Microsoft.WindowsAPICodePack.DirectX.Graphics.Format,Microsoft.WindowsAPICodePack.DirectX.Graphics.NonDefaultModes)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="76">
<summary>
Gets the display modes that match the requested format and other input options.
<para>(Also see DirectX SDK: IDXGIOutput::GetDisplayModeList)</para>
</summary>
<param name="colorFormat">The color format (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Format"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Format"/>.</param>
<param name="modes">Options for modes to include (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.NonDefaultModes"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.NonDefaultModes"/>. NonDefaultModes.Scaling needs to be specified to expose the display modes that require scaling.  Centered modes, requiring no scaling and corresponding directly to the display output, are enumerated by default.</param>
<returns>The number of display modes (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription"/>) that matches the format and options.<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription"/></returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.GetDisplaySurfaceData(Microsoft.WindowsAPICodePack.DirectX.Graphics.Surface)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="85">
<summary>
Get a copy of the current display surface.
<para>(Also see DirectX SDK: IDXGIOutput::GetDisplaySurfaceData)</para>
</summary>
<remarks>
GetDisplaySurfaceData can only be called when an output is in full-screen mode. 
If the method succeeds, the destination surface will be filled and its reference count incremented. 
</remarks>
<param name="destination">A destination surface (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Surface"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Surface"/>.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.SetDisplaySurface(Microsoft.WindowsAPICodePack.DirectX.Graphics.Surface)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="99">
<summary>
Change the display mode.
<para>(Also see DirectX SDK: IDXGIOutput::SetDisplaySurface)</para>
</summary>
<param name="surface">A surface (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Surface"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Surface"/> used for rendering an image to the screen. The surface must have been created with as a back buffer (DXGI_USAGE_BACKBUFFER).</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.RenderedFrameStatistics" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="106">
<summary>
Get statistics about recently rendered frames.
<para>(Also see DirectX SDK: IDXGIOutput::GetFrameStatistics)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.GammaControl" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="115">
<summary>
Gets or sets the gamma control settings.
<para>(Also see DirectX SDK: IDXGIOutput::GetGammaControl, IDXGIOutput::SetGammaControl)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.GammaControlCapabilities" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="125">
<summary>
Get a description of the gamma-control capabilities.
<para>(Also see DirectX SDK: IDXGIOutput::GetGammaControlCapabilities)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.ReleaseOwnership" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="134">
<summary>
Release ownership of the output.
<para>(Also see DirectX SDK: IDXGIOutput::ReleaseOwnership)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.TakeOwnership(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="140">
<summary>
Take ownership of an output.
<para>(Also see DirectX SDK: IDXGIOutput::TakeOwnership)</para>
</summary>
<param name="device">A Direct3D 10 Device.</param>
<param name="exclusive">Set to TRUE to enable other threads or applications to take ownership of the device; otherwise set to FALSE.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.TakeOwnership(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="148">
<summary>
Take ownership of an output.
<para>(Also see DirectX SDK: IDXGIOutput::TakeOwnership)</para>
</summary>
<param name="device">A Direct3D 11 Device.</param>
<param name="exclusive">Set to TRUE to enable other threads or applications to take ownership of the device; otherwise set to FALSE.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.TakeOwnership(Microsoft.WindowsAPICodePack.DirectX.Graphics.Device,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="156">
<summary>
Take ownership of an output.
<para>(Also see DirectX SDK: IDXGIOutput::TakeOwnership)</para>
</summary>
<param name="device">A Graphics Device.</param>
<param name="exclusive">Set to TRUE to enable other threads or applications to take ownership of the device; otherwise set to FALSE.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output.WaitForVBlank" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgioutput.h" line="164">
<summary>
Cause the thread to wait at this call until the next vertical blank occurs.
<para>(Also see DirectX SDK: IDXGIOutput::WaitForVBlank)</para>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Surface1" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgisurface1.h" line="10">
<summary>
The Surface1 interface extends the Surface by adding support for rendering to a Graphics interface using GDI.
<para>(Also see DirectX SDK: IDXGISurface1)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Surface1.GetDC(System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgisurface1.h" line="18">
<summary>
Returns a device context (DC) that allows you to render to a Graphics surface using GDI.
<para>(Also see DirectX SDK: IDXGISurface1::GetDC)</para>
</summary>
<param name="discard">If true the application will not preserve any rendering with GDI; otherwise, false.           If false, any previous rendering to the device context will be preserved.           This flag is ideal for simply reading the device context and not doing any rendering to the surface.</param>
<returns>A HDC handle that represents the current device context for GDI rendering.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.Surface1.ReleaseDC(Microsoft.WindowsAPICodePack.DirectX.Direct3D.D3DRect)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgisurface1.h" line="26">
<summary>
Releases the GDI device context (DC) associated with the current surface and allows rendering using Direct3D.
<para>(Also see DirectX SDK: IDXGISurface1::ReleaseDC)</para>
</summary>
<param name="dirtyRect">A RECT structure that identifies the dirty region of the surface.            A dirty region is any part of the surface that you have used for GDI rendering and that you want to preserve.           This is used as a performance hint to graphics subsystem in certain scenarios.           Do not use this parameter to restrict rendering to the specified rectangular region.           Passing in NULL causes the whole surface to be considered dirty.           Otherwise the area specified by the RECT will be used as a performance hint to indicate what areas have been manipulated by GDI rendering.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiswapchain.h" line="12">
<summary>
An SwapChain interface implements one or more surfaces for storing rendered data before presenting it to an output.
<para>(Also see DirectX SDK: IDXGISwapChain)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.GetBuffer``1(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiswapchain.h" line="20">
<summary>
Access one of the swap-chain back buffers.
<para>(Also see DirectX SDK: IDXGISwapChain::GetBuffer)</para>
</summary>
<param name="bufferIndex">A zero-based buffer index. 
If the swap effect is not Sequential, this method only has access to the first buffer; for this case, set the index to zero.
</param>
<typeparam name="T">The type of the buffer object. Must inherit from <see cref="T:Microsoft.WindowsAPICodePack.DirectX.DirectUnknown"/>.</typeparam>
<returns>The back-buffer object.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.ContainingOutput" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiswapchain.h" line="32">
<summary>
Get the output (the display monitor) that contains the majority of the client area of the target window.
<para>(Also see DirectX SDK: IDXGISwapChain::GetContainingOutput)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiswapchain.h" line="41">
<summary>
Get a description of the swap chain.
<para>(Also see DirectX SDK: IDXGISwapChain::GetDesc)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.FrameStatistics" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiswapchain.h" line="50">
<summary>
Get performance statistics about the last render frame.
<para>(Also see DirectX SDK: IDXGISwapChain::GetFrameStatistics)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.FullScreenOutput" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiswapchain.h" line="59">
<summary>
Gets the Output object associated with full-screen mode.
<para>(Also see DirectX SDK: IDXGISwapChain::GetFullscreenState)</para>
</summary>
<returns>
If the swap chain is in full-screen mode, returns the output target. Otherwise, null.
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.IsFullScreen" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiswapchain.h" line="71">
<summary>
Sets or get the swap chain in full screen.
Graphics will choose the output based on the swap-chain's device and the output window's placement.
<para>(Also see DirectX SDK: IDXGISwapChain::GetFullscreenState)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.LastPresentCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiswapchain.h" line="82">
<summary>
Get the number of times SwapChain.Present has been called.
<para>(Also see DirectX SDK: IDXGISwapChain::GetLastPresentCount)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.Present(System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Graphics.PresentOptions)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiswapchain.h" line="91">
<summary>
Present a rendered image to the user.
This method can throw exceptions if the Swap Chain is unable to present. 
TryPresent() method should be used instead when exceptions can impact performance.
<para>(Also see DirectX SDK: IDXGISwapChain::Present)</para>
</summary>
<param name="syncInterval">If the update region straddles more than one output (each represented by Output), the synchronization will be performed to the output that contains the largest subrectangle of the target window's client area.</param>
<param name="options">An integer value that contains swap-chain presentation options (see <see cref="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.Present(System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Graphics.PresentOptions)"/>)<seealso cref="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.Present(System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Graphics.PresentOptions)"/>.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.TryPresent(System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Graphics.PresentOptions,Microsoft.WindowsAPICodePack.DirectX.ErrorCode@)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiswapchain.h" line="101">
<summary>
Try to present a rendered image to the user.
No exceptions will be thrown by this method.
<para>(Also see DirectX SDK: IDXGISwapChain::Present)</para>
</summary>
<param name="syncInterval">If the update region straddles more than one output (each represented by Output), the synchronization will be performed to the output that contains the largest subrectangle of the target window's client area.</param>
<param name="options">An integer value that contains swap-chain presentation options (see <see cref="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.Present(System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Graphics.PresentOptions)"/>)<seealso cref="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.Present(System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Graphics.PresentOptions)"/>.</param>
<param name="error">An error code indicating Present error if unsuccessful.</param>
<returns>False if unsuccessful; True otherwise.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.ResizeBuffers(System.UInt32,System.UInt32,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Graphics.Format,Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChainOptions)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiswapchain.h" line="112">
<summary>
Change the swap chain's back buffer size, format, and number of buffers. This should be called when the application window is resized.
<para>(Also see DirectX SDK: IDXGISwapChain::ResizeBuffers)</para>
</summary>
<param name="bufferCount">The number of buffers in the swap chain (including all back and front buffers). This can be different from the number of buffers the swap chain was created with.</param>
<param name="width">New width of the back buffer. If 0 is specified the width of the client area of the target window will be used.</param>
<param name="height">New height of the back buffer. If 0 is specified the height of the client area of the target window will be used.</param>
<param name="newFormat">The new format of the back buffer.</param>
<param name="options">Flags that indicate how the swap chain will function.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.TryResizeBuffers(System.UInt32,System.UInt32,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Graphics.Format,Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChainOptions,Microsoft.WindowsAPICodePack.DirectX.ErrorCode@)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiswapchain.h" line="123">
<summary>
Change the swap chain's back buffer size, format, and number of buffers. This should be called when the application window is resized.
This method will not throw exceptions, but will return a bool indicating success or failure.
The errorCode output value can also be used to track the error type.
<para>(Also see DirectX SDK: IDXGISwapChain::ResizeBuffers)</para>
</summary>
<param name="bufferCount">The number of buffers in the swap chain (including all back and front buffers). This can be different from the number of buffers the swap chain was created with.</param>
<param name="width">New width of the back buffer. If 0 is specified the width of the client area of the target window will be used.</param>
<param name="height">New height of the back buffer. If 0 is specified the height of the client area of the target window will be used.</param>
<param name="newFormat">The new format of the back buffer.</param>
<param name="options">Flags that indicate how the swap chain will function.</param>
<param name="errorCode">Returned error code.</param>
<returns>True if successful, false otherwise.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.ResizeTarget(Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiswapchain.h" line="138">
<summary>
Resize the output target.
<para>(Also see DirectX SDK: IDXGISwapChain::ResizeTarget)</para>
</summary>
<param name="newTargetParameters">The mode description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.ModeDescription"/>, which specifies the new width, height, format and refresh rate of the target. 
If the format is UNKNOWN, the existing format will be used. Using UNKNOWN is only recommended when the swap chain is in full-screen mode as this method is not thread safe.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChain.SetFullScreenState(System.Boolean,Microsoft.WindowsAPICodePack.DirectX.Graphics.Output)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\dxgi\dxgiswapchain.h" line="146">
<summary>
Set the display mode to windowed or full-screen.
<para>(Also see DirectX SDK: IDXGISwapChain::SetFullscreenState)</para>
</summary>
<param name="isFullScreen">Use True for full-screen, False for windowed.</param>
<param name="target">If the current display mode is full-screen, this parameter must be the output target (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.Output"/> that contains the swap chain; 
otherwise, this parameter is ignored. If you set this parameter to Null, Graphics will choose the output based on the swap-chain's device and the output window's placement.</param>
</member>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BlendState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10blendstate.h" line="10">
<summary>
This blend-state interface accesses blending state for a Direct3D 10.0 device for the output-merger stage.
<para>(Also see DirectX SDK: ID3D10BlendState)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BlendState.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10blendstate.h" line="18">
<summary>
Get the blend state description.
<para>(Also see DirectX SDK: ID3D10BlendState::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BlendState1" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10blendstate1.h" line="10">
<summary>
This blend-state interface accesses blending state for a Direct3D 10.1 device for the output-merger stage.
<para>(Also see DirectX SDK: ID3D10BlendState1)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BlendState1.Description1" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10blendstate1.h" line="18">
<summary>
Get the blend state.
<para>(Also see DirectX SDK: ID3D10BlendState1::GetDesc1)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Blob" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10blob.h" line="11">
<summary>
This class is used to return arbitrary length data.
<para>(Also see DirectX SDK: ID3D10Blob)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Blob.BufferPointer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10blob.h" line="19">
<summary>
Get the data.
<para>(Also see DirectX SDK: ID3D10Blob::GetBufferPointer)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Blob.BufferSize" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10blob.h" line="28">
<summary>
Get the size.
<para>(Also see DirectX SDK: ID3D10Blob::GetBufferSize)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Blob.Create(System.Int64)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10blob.h" line="37">
<summary>
Creates a Blob instance of the given size.
</summary>
<remarks>
</remarks>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDebug" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10debug.h" line="16">
<summary>
A debug interface controls debug settings, validates pipeline state and can only be used if the debug layer is turned on.
<para>(Also see DirectX SDK: ID3D10Debug)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDebug.FeatureMask" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10debug.h" line="24">
<summary>
Gets or sets a bitfield of flags that indicates which debug features are on or off.
<para>(Also see DirectX SDK: ID3D10Debug::GetFeatureMask)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDebug.PresentPerRenderOperationDelay" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10debug.h" line="34">
<summary>
Gets or sets the number of milliseconds to sleep after SwapChain.Present is called.
<para>(Also see DirectX SDK: ID3D10Debug::GetPresentPerRenderOpDelay)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDebug.RuntimeSwapChain" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10debug.h" line="44">
<summary>
Get the swap chain that the runtime will use for automatically calling SwapChain.Present.
<para>(Also see DirectX SDK: ID3D10Debug::GetSwapChain)</para>
</summary>
<param name="outSwapChain">Swap chain that the runtime will use for automatically calling SwapChain.Present.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDebug.Validate" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10debug.h" line="55">
<summary>
Check the validity of pipeline state.
<para>(Also see DirectX SDK: ID3D10Debug::Validate)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10depthstencilstate.h" line="10">
<summary>
A depth-stencil-state interface accesses depth-stencil state which sets up the depth-stencil test for the output-merger stage.
<para>(Also see DirectX SDK: ID3D10DepthStencilState)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilState.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10depthstencilstate.h" line="18">
<summary>
Get the depth-stencil state.
<para>(Also see DirectX SDK: ID3D10DepthStencilState::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.View" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10view.h" line="11">
<summary>
A view interface specifies the parts of a resource the pipeline can access during rendering.
<para>(Also see DirectX SDK: ID3D10View)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.View.Resource" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10view.h" line="19">
<summary>
Get the resource that is accessed through this view.
<para>(Also see DirectX SDK: ID3D10View::GetResource)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilView" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10depthstencilview.h" line="10">
<summary>
A depth-stencil-view interface accesses a texture resource during depth-stencil testing.
<para>(Also see DirectX SDK: ID3D10DepthStencilView)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilView.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10depthstencilview.h" line="18">
<summary>
Get the depth-stencil view description.
<para>(Also see DirectX SDK: ID3D10DepthStencilView::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPool" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectpool.h" line="13">
<summary>
A pool interface represents a common memory space (or pool) for sharing variables between effects.
<para>(Also see DirectX SDK: ID3D10EffectPool)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPool.AsEffect" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectpool.h" line="21">
<summary>
Get the effect that created the effect pool.
<para>(Also see DirectX SDK: ID3D10EffectPool::AsEffect)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.CounterData" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10checkcounterdata.h" line="9">
<summary>
This class encapsulates the data returned by the D3DDevice.CheckCounter method.
<para>(Also see DirectX SDK: ID3D10Device.CheckCounter)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlock" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblock.h" line="13">
<summary>
A state-block interface encapsulates render states.
<para>(Also see DirectX SDK: ID3D10StateBlock)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlock.Apply" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblock.h" line="21">
<summary>
Apply the state block to the current device state.
<para>(Also see DirectX SDK: ID3D10StateBlock::Apply)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlock.Capture" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblock.h" line="27">
<summary>
Capture the current value of states that are included in a stateblock.
<para>(Also see DirectX SDK: ID3D10StateBlock::Capture)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlock.Device" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblock.h" line="33">
<summary>
Get the device.
<para>(Also see DirectX SDK: ID3D10StateBlock::GetDevice)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlock.ReleaseAllDeviceObjects" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblock.h" line="42">
<summary>
Release all references to device objects.
<para>(Also see DirectX SDK: ID3D10StateBlock::ReleaseAllDeviceObjects)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="7">
<summary>
Indicates the device state.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.VertexShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="14">
<summary>
Boolean value indicating whether to save the vertex shader state.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.VS)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.VertexShaderSamplers" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="25">
<summary>
Array of vertex-shader samplers.  The array is a multi-byte bitmask where each bit represents one sampler slot.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.VSSamplers)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.VertexShaderShaderResources" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="47">
<summary>
Array of vertex-shader resources. The array is a multi-byte bitmask where each bit represents one resource slot.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.VSShaderResources)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.VertexShaderConstantBuffers" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="69">
<summary>
Array of vertex-shader constant buffers. The array is a multi-byte bitmask where each bit represents one constant buffer slot.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.VSConstantBuffers)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.GeometryShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="91">
<summary>
Boolean value indicating whether to save the geometry shader state.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.GS)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.GeometryShaderSamplers" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="102">
<summary>
Array of geometry-shader samplers. The array is a multi-byte bitmask where each bit represents one sampler slot.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.GSSamplers)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.GeometryShaderShaderResources" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="124">
<summary>
Array of geometry-shader resources. The array is a multi-byte bitmask where each bit represents one resource slot.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.GSShaderResources)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.GeometryShaderConstantBuffers" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="146">
<summary>
Array of geometry-shader constant buffers. The array is a multi-byte bitmask where each bit represents one buffer slot.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.GSConstantBuffers)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.PixelShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="168">
<summary>
Boolean value indicating whether to save the pixel shader state.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.PS)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.PixelShaderSamplers" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="179">
<summary>
Array of pixel-shader samplers. The array is a multi-byte bitmask where each bit represents one sampler slot.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.PSSamplers)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.PixelShaderShaderResources" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="201">
<summary>
Array of pixel-shader resources. The array is a multi-byte bitmask where each bit represents one resource slot.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.PSShaderResources)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.PixelShaderConstantBuffers" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="223">
<summary>
Array of pixel-shader constant buffers. The array is a multi-byte bitmask where each bit represents one constant buffer slot.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.PSConstantBuffers)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.InputAssemblerVertexBuffers" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="245">
<summary>
Array of vertex buffers. The array is a multi-byte bitmask where each bit represents one resource slot.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.IAVertexBuffers)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.InputAssemblerIndexBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="267">
<summary>
Boolean value indicating whether to save the index buffer state.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.IAIndexBuffer)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.InputAssemblerInputLayout" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="278">
<summary>
Boolean value indicating whether to save the input layout state.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.IAInputLayout)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.InputAssemblerPrimitiveTopology" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="289">
<summary>
Boolean value indicating whether to save the primitive topology state.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.IAPrimitiveTopology)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.OutputMergerRenderTargets" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="300">
<summary>
Boolean value indicating whether to save the render targets states.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.OMRenderTargets)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.OutputMergerDepthStencilState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="311">
<summary>
Boolean value indicating whether to save the depth-stencil state.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.OMDepthStencilState)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.OutputMergerBlendState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="322">
<summary>
Boolean value indicating whether to save the blend state.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.OMBlendState)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.RasterizerViewports" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="333">
<summary>
Boolean value indicating whether to save the viewports states.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.RSViewports)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.RasterizerScissorRectangles" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="344">
<summary>
Boolean value indicating whether to save the scissor rectangles states.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.RSScissorRects)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.RasterizerState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="355">
<summary>
Boolean value indicating whether to save the rasterizer state.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.RSRasterizerState)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.StreamOutputBuffers" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="366">
<summary>
Boolean value indicating whether to save the stream-out buffers states.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.SOBuffers)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask.Predication" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10stateblockmask.h" line="377">
<summary>
Boolean value indicating whether to save the predication state.
<para>(Also see DirectX SDK: D3D10_STATE_BLOCK_MASK.Predication)</para>
</summary>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectTechnique" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttechnique.h" line="15">
<summary>
An EffectTechnique interface is a collection of passes.
<para>(Also see DirectX SDK: ID3D10EffectTechnique)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectTechnique.ComputeStateBlockMask" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttechnique.h" line="23">
<summary>
Compute a state-block mask to allow/prevent state changes.
<para>(Also see DirectX SDK: ID3D10EffectTechnique::ComputeStateBlockMask)</para>
</summary>
<returns>A state-block mask (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectTechnique.GetAnnotationByIndex(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttechnique.h" line="30">
<summary>
Get an annotation by index.
<para>(Also see DirectX SDK: ID3D10EffectTechnique::GetAnnotationByIndex)</para>
</summary>
<param name="index">The zero-based index of the interface pointer.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectTechnique.GetAnnotationByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttechnique.h" line="37">
<summary>
Get an annotation by name.
<para>(Also see DirectX SDK: ID3D10EffectTechnique::GetAnnotationByName)</para>
</summary>
<param name="name">Name of the annotation.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectTechnique.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttechnique.h" line="44">
<summary>
Get a technique description.
<para>(Also see DirectX SDK: ID3D10EffectTechnique::GetDesc)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectTechnique.GetPassByIndex(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttechnique.h" line="53">
<summary>
Get a pass by index.
<para>(Also see DirectX SDK: ID3D10EffectTechnique::GetPassByIndex)</para>
</summary>
<param name="index">A zero-based index.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectTechnique.GetPassByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttechnique.h" line="60">
<summary>
Get a pass by name.
<para>(Also see DirectX SDK: ID3D10EffectTechnique::GetPassByName)</para>
</summary>
<param name="name">The name of the pass.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectTechnique.IsValid" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttechnique.h" line="67">
<summary>
Test a technique to see if it contains valid syntax.
<para>(Also see DirectX SDK: ID3D10EffectTechnique::IsValid)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPass" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectpass.h" line="14">
<summary>
A pass interface encapsulates state assignments within a technique.
<para>(Also see DirectX SDK: ID3D10EffectPass)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPass.Apply" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectpass.h" line="22">
<summary>
Set the state contained in a pass to the device.
<para>(Also see DirectX SDK: ID3D10EffectPass::Apply)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPass.ComputeStateBlockMask" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectpass.h" line="28">
<summary>
Generate a mask for allowing/preventing state changes.
<para>(Also see DirectX SDK: ID3D10EffectPass::ComputeStateBlockMask)</para>
</summary>
<returns>A state-block mask (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPass.GetAnnotationByIndex(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectpass.h" line="35">
<summary>
Get an annotation by index.
<para>(Also see DirectX SDK: ID3D10EffectPass::GetAnnotationByIndex)</para>
</summary>
<param name="index">A zero-based index.</param>
<returns>An EffectVariable instance.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPass.GetAnnotationByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectpass.h" line="43">
<summary>
Get an annotation by name.
<para>(Also see DirectX SDK: ID3D10EffectPass::GetAnnotationByName)</para>
</summary>
<param name="name">The name of the annotation.</param>
<returns>An EffectVariable instance.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPass.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectpass.h" line="51">
<summary>
Get a pass description.
<para>(Also see DirectX SDK: ID3D10EffectPass::GetDesc)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPass.GeometryShaderDescription" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectpass.h" line="60">
<summary>
Get a geometry-shader description.
<para>(Also see DirectX SDK: ID3D10EffectPass::GetGeometryShaderDesc)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPass.PixelShaderDescription" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectpass.h" line="69">
<summary>
Get a pixel-shader description.
<para>(Also see DirectX SDK: ID3D10EffectPass::GetPixelShaderDesc)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPass.VertexShaderDescription" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectpass.h" line="78">
<summary>
Get a vertex-shader description.
<para>(Also see DirectX SDK: ID3D10EffectPass::GetVertexShaderDesc)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPass.IsValid" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectpass.h" line="87">
<summary>
Test a pass to see if it contains valid syntax.
<para>(Also see DirectX SDK: ID3D10EffectPass::IsValid)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="58">
<summary>
The device interface represents a virtual adapter for Direct3D 10.0; it is used to perform rendering and create Direct3D resources.
<para>To create a D3DDevice instance, use one of the static factory method overloads: CreateDevice() or CreateDeviceAndSwapChain().</para>
<para>(Also see DirectX SDK: ID3D10Device)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.GetCounterData(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.CounterDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="69">
<summary>
Get the type, name, units of measure, and a description of an existing counter.
<para>(Also see DirectX SDK: ID3D10Device::CheckCounter)</para>
</summary>
<param name="counterDescription">A counter description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.CounterDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.CounterDescription"/>. Specifies which counter information is to be retrieved about.</param>
<returns>A CheckCounterData object containing the values associated with the counter</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CounterInformation" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="77">
<summary>
Gets information about the device's performance counter capabilities
<para>(Also see DirectX SDK: ID3D10Device::CheckCounterInfo)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.GetFormatSupport(Microsoft.WindowsAPICodePack.DirectX.Graphics.Format)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="86">
<summary>
Get the support of a given format on the installed video device.
<para>(Also see DirectX SDK: ID3D10Device::CheckFormatSupport)</para>
</summary>
<param name="format">A Format enumeration that describes a format for which to check for support.</param>
<returns>A FormatSupportOptions enumeration values describing how the specified format is supported on the installed device. The values are ORed together.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.GetMultisampleQualityLevels(Microsoft.WindowsAPICodePack.DirectX.Graphics.Format,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="95">
<summary>
Get the number of quality levels available during multisampling.
<para>(Also see DirectX SDK: ID3D10Device::CheckMultisampleQualityLevels)</para>
</summary>
<param name="format">The texture format. See Format.</param>
<param name="sampleCount">The number of samples during multisampling.</param>
<returns>Number of quality levels supported by the adapter.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.ClearDepthStencilView(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilView,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ClearOptions,System.Single,System.Byte)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="104">
<summary>
Clears the depth-stencil resource.
<para>(Also see DirectX SDK: ID3D10Device::ClearDepthStencilView)</para>
</summary>
<param name="depthStencilView">Pointer to the depth stencil to be cleared.</param>
<param name="options">Which parts of the buffer to clear. See ClearOptions.</param>
<param name="depth">Clear the depth buffer with this value. This value will be clamped between 0 and 1.</param>
<param name="stencil">Clear the stencil buffer with this value.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.ClearRenderTargetView(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RenderTargetView,Microsoft.WindowsAPICodePack.DirectX.Graphics.ColorRgba)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="114">
<summary>
Set all the elements in a render target to one value.
<para>(Also see DirectX SDK: ID3D10DeviceContext::ClearRenderTargetView)</para>
</summary>
<param name="renderTargetView">Pointer to the rendertarget.</param>
<param name="colorRgba">The color to fill the render target with.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.ClearState" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="122">
<summary>
Restore all default device settings; return the device to the state it was in when it was created. This will set all set all input/output resource slots, shaders, input layouts, predications, scissor rectangles, depth-stencil state, rasterizer state, blend state, sampler state, and viewports to NULL. The primitive topology will be set to UNDEFINED.
<para>(Also see DirectX SDK: ID3D10Device::ClearState)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CopyResource(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="128">
<summary>
Copy the entire contents of the source resource to the destination resource using the GPU.
<para>(Also see DirectX SDK: ID3D10Device::CopyResource)</para>
</summary>
<param name="destinationResource">The destination resource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource"/>.</param>
<param name="sourceResource">The source resource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource"/>.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CopySubresourceRegion(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource,System.UInt32,System.UInt32,System.UInt32,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Box)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="136">
<summary>
Copy a region from a source resource to a destination resource.
<para>(Also see DirectX SDK: ID3D10Device::CopySubresourceRegion)</para>
</summary>
<param name="destinationResource">The destination resource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource"/>.</param>
<param name="destinationSubresource">Destination subresource index.</param>
<param name="destinationX">The x coordinate of the upper left corner of the destination region.</param>
<param name="destinationY">The y coordinate of the upper left corner of the destination region.</param>
<param name="destinationZ">The z coordinate of the upper left corner of the destination region. For a 1D or 2D subresource, this must be zero.</param>
<param name="sourceResource">The source resource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource"/>.</param>
<param name="sourceSubresourceIndex">Source subresource index.</param>
<param name="sourceBox">A 3D box (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Box"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Box"/> that defines the source subresources that can be copied. The box must fit within the source resource.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CopySubresourceRegion(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource,System.UInt32,System.UInt32,System.UInt32,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="150">
<summary>
Copy a region from a source resource to a destination resource.
The entire source subresource is copied.
<para>(Also see DirectX SDK: ID3D10Device::CopySubresourceRegion)</para>
</summary>
<param name="destinationResource">The destination resource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource"/>.</param>
<param name="destinationSubresource">Destination subresource index.</param>
<param name="destinationX">The x coordinate of the upper left corner of the destination region.</param>
<param name="destinationY">The y coordinate of the upper left corner of the destination region.</param>
<param name="destinationZ">The z coordinate of the upper left corner of the destination region. For a 1D or 2D subresource, this must be zero.</param>
<param name="sourceResource">The source resource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource"/>.</param>
<param name="sourceSubresourceIndex">Source subresource index.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateBlendState(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BlendDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="164">
<summary>
Create a blend-state object that encapsules blend state for the output-merger stage.
<para>(Also see DirectX SDK: ID3D10Device::CreateBlendState)</para>
</summary>
<param name="blendStateDescription">A blend-state description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BlendDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BlendDescription"/>.</param>
<returns>The blend-state object created (see BlendState Object).</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateCounter(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.CounterDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="172">
<summary>
Create a counter object for measuring GPU performance.
<para>(Also see DirectX SDK: ID3D10Device::CreateCounter)</para>
</summary>
<param name="description">A counter description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.CounterDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.CounterDescription"/>.</param>
<returns>A counter (see D3DCounter).</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateBuffer(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BufferDescription,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SubresourceData[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="180">
<summary>
Create a buffer (vertex buffer, index buffer, or shader-constant buffer).
<para>(Also see DirectX SDK: ID3D10Device::CreateBuffer)</para>
</summary>
<param name="description">A buffer description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BufferDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BufferDescription"/>.</param>
<param name="initialData">Pointer to the initialization data (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SubresourceData"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SubresourceData"/>; use NULL to allocate space only.</param>
<returns>The buffer created (see D3DBuffer Object).</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateBuffer(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BufferDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="189">
<summary>
Create a buffer (vertex buffer, index buffer, or shader-constant buffer) with no initial data.
<para>(Also see DirectX SDK: ID3D10Device::CreateBuffer)</para>
</summary>
<param name="description">A buffer description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BufferDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BufferDescription"/>.</param>
<returns>The buffer created (see D3DBuffer Object).</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDepthStencilState(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="197">
<summary>
Create a depth-stencil state object that encapsulates depth-stencil test information for the output-merger stage.
<para>(Also see DirectX SDK: ID3D10Device::CreateDepthStencilState)</para>
</summary>
<param name="description">A depth-stencil state description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilDescription"/>.</param>
<returns>The depth-stencil state object created (see DepthStencilState Object).</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDepthStencilView(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilViewDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="205">
<summary>
Create a depth-stencil view for accessing resource data.
<para>(Also see DirectX SDK: ID3D10Device::CreateDepthStencilView)</para>
</summary>
<param name="resource">The resource that will serve as the depth-stencil surface. This resource must have been created with the DepthStencil flag.</param>
<param name="description">A depth-stencil-view description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilViewDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilViewDescription"/>. </param>
<returns>A DepthStencilView.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDepthStencilView(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="214">
<summary>
Create a depth-stencil view for accessing resource data.
This method creates a view that accesses mipmap level 0 of the entire resource (using the format the resource was created with).
<para>(Also see DirectX SDK: ID3D10Device::CreateDepthStencilView)</para>
</summary>
<param name="resource">The resource that will serve as the depth-stencil surface. This resource must have been created with the DepthStencil flag.</param>
<returns>A DepthStencilView.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateGeometryShader(System.IntPtr,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="222">
<summary>
Create a geometry shader.
<para>(Also see DirectX SDK: ID3D10Device::CreateGeometryShader)</para>
</summary>
<param name="shaderBytecode">The compiled shader. To get this object see Getting a A Compiled Shader in DX SDK.</param>
<param name="shaderBytecodeLength">Size of the compiled geometry shader.</param>
<returns>A GeometryShader Object.  If this is NULL, all other parameters will be validated, and if all parameters pass validation this API will return S_FALSE instead of S_OK.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateGeometryShader(System.IO.Stream)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="231">
<summary>
Create a geometry shader.
<para>(Also see DirectX SDK: ID3D10Device::CreateGeometryShader)</para>
</summary>
<param name="shaderBytecodeStream">The stream to read the compiled shader shader data from. To get this object see Getting a A Compiled Shader in DX SDK.</param>
<returns>A GeometryShader Object.  If this is NULL, all other parameters will be validated, and if all parameters pass validation this API will return S_FALSE instead of S_OK.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateGeometryShaderWithStreamOutput(System.IntPtr,System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StreamOutputDeclarationEntry},System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="239">
<summary>
Create a geometry shader that can write to streaming output buffers.
<para>(Also see DirectX SDK: ID3D10Device::CreateGeometryShaderWithStreamOutput)</para>
</summary>
<param name="shaderBytecode">The compiled shader.</param>
<param name="shaderBytecodeLength">The length in bytes of compiled shader.</param>
<param name="streamOutputDeclarations">A StreamOutputDeclarationEntry collection. ( ranges from 0 to D3D11_SO_STREAM_COUNT * D3D11_SO_OUTPUT_COMPONENT_COUNT ).</param>
<param name="outputStreamStride">The size of pStreamOutputDecl. This parameter is only used when the output slot is 0 for all entries in streamOutputDeclarations.</param>
<returns>A GeometryShader interface, representing the geometry shader that was created. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateGeometryShaderWithStreamOutput(System.IO.Stream,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StreamOutputDeclarationEntry},System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="250">
<summary>
Create a geometry shader that can write to streaming output buffers.
<para>(Also see DirectX SDK: ID3D10Device::CreateGeometryShaderWithStreamOutput)</para>
</summary>
<param name="shaderBytecodeStream">The stream to read the compiled shader shader data from. To get this object see Getting a A Compiled Shader in DX SDK.</param>
<param name="streamOutputDeclarations">A StreamOutputDeclarationEntry collection. ( ranges from 0 to D3D11_SO_STREAM_COUNT * D3D11_SO_OUTPUT_COMPONENT_COUNT ).</param>
<param name="outputStreamStride">The size of pStreamOutputDecl. This parameter is only used when the output slot is 0 for all entries in streamOutputDeclarations.</param>
<returns>A GeometryShader interface, representing the geometry shader that was created. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateInputLayout(System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputElementDescription},System.IntPtr,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="260">
<summary>
Create an input-layout object to describe the input-buffer data for the input-assembler stage.
<para>(Also see DirectX SDK: ID3D10Device::CreateInputLayout)</para>
</summary>
<param name="inputElementDescriptions">A collection of the input-assembler stage input data types; each type is described by an element description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputElementDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputElementDescription"/>.</param>
<param name="shaderBytecodeWithInputSignature">The compiled shader.  The compiled shader code contains a input signature which is validated against the array of elements.</param>        
<param name="shaderBytecodeWithInputSignatureSize">The length in bytes of compiled shader.</param>        
<returns>The input-layout object created (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputLayout"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputLayout"/>. To validate the other input parameters.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateInputLayout(System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputElementDescription},System.IO.Stream)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="270">
<summary>
Create an input-layout object to describe the input-buffer data for the input-assembler stage.
<para>(Also see DirectX SDK: ID3D10Device::CreateInputLayout)</para>
</summary>
<param name="inputElementDescriptions">A collection of the input-assembler stage input data types; each type is described by an element description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputElementDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputElementDescription"/>.</param>
<param name="shaderBytecodeWithInputSignatureStream">The compiled shader stream.  The compiled shader code contains a input signature which is validated against the array of elements.</param>        
<returns>The input-layout object created (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputLayout"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputLayout"/>. To validate the other input parameters.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreatePredicate(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.QueryDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="279">
<summary>
Creates a predicate.
<para>(Also see DirectX SDK: ID3D10Device::CreatePredicate)</para>
</summary>
<param name="predicateDescription">A query description where the type of query must be a StreamOutputOverflowPredicate or OcclusionPredicate (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.QueryDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.QueryDescription"/>.</param>
<returns>A predicate (see D3DPredicate Object).</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateQuery(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.QueryDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="287">
<summary>
This class encapsulates methods for querying information from the GPU.
<para>(Also see DirectX SDK: ID3D10Device::CreateQuery)</para>
</summary>
<param name="description">A query description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.QueryDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.QueryDescription"/>.</param>
<returns>The query object created (see D3DQuery Object).</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreatePixelShader(System.IntPtr,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="295">
<summary>
Create a pixel shader.
<para>(Also see DirectX SDK: ID3D10Device::CreatePixelShader)</para>
</summary>
<param name="shaderBytecode">The compiled shader. To get this object see Getting a A Compiled Shader.</param>
<param name="shaderBytecodeLength">Size of the compiled pixel shader.</param>
<returns>A PixelShader Object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreatePixelShader(System.IO.Stream)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="304">
<summary>
Create a pixel shader.
<para>(Also see DirectX SDK: ID3D10Device::CreatePixelShader)</para>
</summary>
<param name="shaderBytecodeStream">The compiled shader stream. To get this object see Getting a A Compiled Shader.</param>
<returns>A PixelShader Object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateRasterizerState(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RasterizerDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="312">
<summary>
Create a rasterizer state object that tells the rasterizer stage how to behave.
<para>(Also see DirectX SDK: ID3D10Device::CreateRasterizerState)</para>
</summary>
<param name="description">A rasterizer state description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RasterizerDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RasterizerDescription"/>.</param>
<returns>The rasterizer state object created (see RasterizerState Object).</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateRenderTargetView(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RenderTargetViewDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="320">
<summary>
Create a render-target view for accessing resource data.
<para>(Also see DirectX SDK: ID3D10Device::CreateRenderTargetView)</para>
</summary>
<param name="resource">Pointer to the resource that will serve as the render target. This resource must have been created with the RenderTarget flag.</param>
<param name="description">A render-target-view description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RenderTargetViewDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RenderTargetViewDescription"/>. Set this parameter to NULL to create a view that accesses mipmap level 0 of the entire resource (using the format the resource was created with).</param>
<returns>A RenderTargetView.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateRenderTargetView(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="329">
<summary>
Create a render-target view for accessing resource data in mipmap level 0 of the entire resource (using the format the resource was created with).
<para>(Also see DirectX SDK: ID3D10Device::CreateRenderTargetView)</para>
</summary>
<param name="resource">Pointer to the resource that will serve as the render target. This resource must have been created with the RenderTarget flag.</param>
<returns>A RenderTargetView.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateSamplerState(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="337">
<summary>
Create a sampler-state object that encapsulates sampling information for a texture.
<para>(Also see DirectX SDK: ID3D10Device::CreateSamplerState)</para>
</summary>
<param name="description">A sampler state description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerDescription"/>.</param>
<returns>The sampler state object created (see SamplerState Object).</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateShaderResourceView(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceViewDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="345">
<summary>
Create a shader-resource view for accessing data in a resource.
<para>(Also see DirectX SDK: ID3D10Device::CreateShaderResourceView)</para>
</summary>
<param name="resource">Pointer to the resource that will serve as input to a shader. This resource must have been created with the ShaderResource flag.</param>
<param name="description">A shader-resource-view description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceViewDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceViewDescription"/>. Set this parameter to NULL to create a view that accesses the entire resource (using the format the resource was created with).</param>
<returns>A ShaderResourceView.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateShaderResourceView(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="354">
<summary>
Create a shader-resource view for accessing data in a resource. It accesses the entire resource (using the format the resource was created with).
<para>(Also see DirectX SDK: ID3D10Device::CreateShaderResourceView)</para>
</summary>
<param name="resource">Pointer to the resource that will serve as input to a shader. This resource must have been created with the ShaderResource flag.</param>
<returns>A ShaderResourceView.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateTexture1D(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture1DDescription,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SubresourceData[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="362">
<summary>
Create an array of 1D textures.
<para>(Also see DirectX SDK: ID3D10Device::CreateTexture1D)</para>
</summary>
<param name="description">A 1D texture description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture1DDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture1DDescription"/>. To create a typeless resource that can be interpreted at runtime into different, compatible formats, specify a typeless format in the texture description. To generate mipmap levels automatically, set the number of mipmap levels to 0.</param>
<param name="initialData">Subresource descriptions (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SubresourceData"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SubresourceData"/>; one for each subresource. Applications may not specify NULL for initialData when creating IMMUTABLE resources (see Usage). If the resource is multisampled, pInitialData must be NULL because multisampled resources cannot be initialized with data when they are created.</param>
<returns>The created texture (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture1D"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture1D"/>. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateTexture2D(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture2DDescription,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SubresourceData[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="371">
<summary>
Create an array of 2D textures.
<para>(Also see DirectX SDK: ID3D10Device::CreateTexture2D)</para>
</summary>
<param name="description">A 2D texture description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture2DDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture2DDescription"/>. To create a typeless resource that can be interpreted at runtime into different, compatible formats, specify a typeless format in the texture description. To generate mipmap levels automatically, set the number of mipmap levels to 0.</param>
<param name="initialData">Subresource descriptions (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SubresourceData"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SubresourceData"/>; one for each subresource. Applications may not specify NULL for pInitialData when creating IMMUTABLE resources (see Usage). If the resource is multisampled, pInitialData must be NULL because multisampled resources cannot be initialized with data when they are created.</param>
<returns>The created texture (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture2D"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture2D"/>. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateTexture3D(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture3DDescription,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SubresourceData[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="380">
<summary>
Create a single 3D texture.
<para>(Also see DirectX SDK: ID3D10Device::CreateTexture3D)</para>
</summary>
<param name="description">A 3D texture description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture3DDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture3DDescription"/>. To create a typeless resource that can be interpreted at runtime into different, compatible formats, specify a typeless format in the texture description. To generate mipmap levels automatically, set the number of mipmap levels to 0.</param>
<param name="initialData">Subresource descriptions (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SubresourceData"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SubresourceData"/>; one for each subresource. Applications may not specify NULL for pInitialData when creating IMMUTABLE resources (see Usage). If the resource is multisampled, pInitialData must be NULL because multisampled resources cannot be initialized with data when they are created.</param>
<returns>The created texture (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture3D"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture3D"/>. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateTexture1D(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture1DDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="389">
<summary>
Create an array of 1D textures.
<para>(Also see DirectX SDK: ID3D10Device::CreateTexture1D)</para>
</summary>
<param name="description">A 1D texture description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture1DDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture1DDescription"/>. To create a typeless resource that can be interpreted at runtime into different, compatible formats, specify a typeless format in the texture description. To generate mipmap levels automatically, set the number of mipmap levels to 0.</param>
<returns>The created texture (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture1D"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture1D"/>. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateTexture2D(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture2DDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="397">
<summary>
Create an array of 2D textures.
<para>(Also see DirectX SDK: ID3D10Device::CreateTexture2D)</para>
</summary>
<param name="description">A 2D texture description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture2DDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture2DDescription"/>. To create a typeless resource that can be interpreted at runtime into different, compatible formats, specify a typeless format in the texture description. To generate mipmap levels automatically, set the number of mipmap levels to 0.</param>
<returns>The created texture (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture2D"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture2D"/>. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateTexture3D(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture3DDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="405">
<summary>
Create a single 3D texture.
<para>(Also see DirectX SDK: ID3D10Device::CreateTexture3D)</para>
</summary>
<param name="description">A 3D texture description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture3DDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture3DDescription"/>. To create a typeless resource that can be interpreted at runtime into different, compatible formats, specify a typeless format in the texture description. To generate mipmap levels automatically, set the number of mipmap levels to 0.</param>
<returns>The created texture (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture3D"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture3D"/>. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateVertexShader(System.IntPtr,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="413">
<summary>
Create a vertex-shader object from a compiled shader.
<para>(Also see DirectX SDK: ID3D10Device::CreateVertexShader)</para>
</summary>
<param name="shaderBytecode">The compiled shader. To get this object see Getting a A Compiled Shader.</param>
<param name="shaderBytecodeLength">Size of the compiled vertex shader.</param>
<returns>A VertexShader Object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateVertexShader(System.IO.Stream)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="422">
<summary>
Create a vertex-shader object from a compiled shader.
<para>(Also see DirectX SDK: ID3D10Device::CreateVertexShader)</para>
</summary>
<param name="shaderBytecodeStream">The compiled shader stream. To get this object see Getting a A Compiled Shader.</param>
<returns>A VertexShader Object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.Draw(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="430">
<summary>
Draw non-indexed, non-instanced primitives.
<para>(Also see DirectX SDK: ID3D10Device::Draw)</para>
</summary>
<param name="vertexCount">Number of vertices to draw.</param>
<param name="startVertexLocation">Index of the first vertex, which is usually an offset in a vertex buffer; it could also be used as the first vertex id generated for a shader parameter marked with the SV_TargetId system-value semantic.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.DrawAuto" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="438">
<summary>
Draw geometry of an unknown size that was created by the geometry shader stage.
<para>(Also see DirectX SDK: ID3D10Device::DrawAuto)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.DrawIndexed(System.UInt32,System.UInt32,System.Int32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="444">
<summary>
Draw indexed, non-instanced primitives.
<para>(Also see DirectX SDK: ID3D10Device::DrawIndexed)</para>
</summary>
<param name="indexCount">Number of indices to draw.</param>
<param name="startIndexLocation">Index of the first index to use when accesssing the vertex buffer; begin at startIndexLocation to index vertices from the vertex buffer.</param>
<param name="baseVertexLocation">Offset from the start of the vertex buffer to the first vertex.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.DrawIndexedInstanced(System.UInt32,System.UInt32,System.UInt32,System.Int32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="453">
<summary>
Draw indexed, instanced primitives.
<para>(Also see DirectX SDK: ID3D10Device::DrawIndexedInstanced)</para>
</summary>
<param name="indexCountPerInstance">Size of the index buffer used in each instance.</param>
<param name="instanceCount">Number of instances to draw.</param>
<param name="startIndexLocation">Index of the first index.</param>
<param name="baseVertexLocation">Index of the first vertex. The index is signed, which allows a negative index. If the negative index plus the index value from the index buffer are less than 0, the result is undefined.</param>
<param name="startInstanceLocation">Index of the first instance.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.DrawInstanced(System.UInt32,System.UInt32,System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="464">
<summary>
Draw non-indexed, instanced primitives.
<para>(Also see DirectX SDK: ID3D10Device::DrawInstanced)</para>
</summary>
<param name="vertexCountPerInstance">Number of vertices to draw.</param>
<param name="instanceCount">Number of instances to draw.</param>
<param name="startVertexLocation">Index of the first vertex.</param>
<param name="startInstanceLocation">Index of the first instance.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.Flush" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="474">
<summary>
Send queued-up commands in the command buffer to the GPU.
<para>(Also see DirectX SDK: ID3D10Device::Flush)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.GenerateMips(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceView)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="480">
<summary>
Generate mipmaps for the given shader resource.
<para>(Also see DirectX SDK: ID3D10Device::GenerateMips)</para>
</summary>
<param name="shaderResourceView">An ShaderResourceView Object. The mipmaps will be generated for this shader resource.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceOptions" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="487">
<summary>
Get the flags used during the call to create the device.
<para>(Also see DirectX SDK: ID3D10Device::GetCreationFlags)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.DeviceRemovedReason" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="496">
<summary>
Get the reason why the device was removed.
<para>(Also see DirectX SDK: ID3D10Device::GetDeviceRemovedReason)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.ExceptionMode" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="505">
<summary>
Gets or sets the exception-mode flags.
<para>(Also see DirectX SDK: ID3D10Device::GetExceptionMode, ID3D10Device::SetExceptionMode)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.Predication" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="515">
<summary>
Get the rendering predicate state.
<para>(Also see DirectX SDK: ID3D10Device::GetPredication)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.OpenSharedResource``1(System.IntPtr)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="525">
<summary>
Give a device access to a shared resource created on a different device.
<para>(Also see DirectX SDK: ID3D10Device::OpenSharedResource)</para>
</summary>
<param name="resource">The resource handle.</param>
<typeparam name="T">The type of this shared resource. Must be <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.GraphicsObject"/></typeparam>
<returns>The requested resource using the given type.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.ResolveSubresource(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Graphics.Format)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="535">
<summary>
Copy a multisampled resource into a non-multisampled resource. This API is most useful when re-using the resulting rendertarget of one render pass as an input to a second render pass.
<para>(Also see DirectX SDK: ID3D10Device::ResolveSubresource)</para>
</summary>
<param name="destinationResource">Destination resource. Must be a created with the Default flag and be single-sampled. See D3DResource.</param>
<param name="destinationSubresource">A zero-based index, that identifies the destination subresource. See D3D10CalcSubresource for more details.</param>
<param name="sourceResource">Source resource. Must be multisampled.</param>
<param name="sourceSubresource">The source subresource of the source resource.</param>
<param name="format">Format that indicates how the multisampled resource will be resolved to a single-sampled resource.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.SetPredication(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DPredicate,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="546">
<summary>
Set a rendering predicate.
<para>(Also see DirectX SDK: ID3D10Device::SetPredication)</para>
</summary>
<param name="predicate">A predicate (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DPredicate"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DPredicate"/>. A NULL value indicates "no" predication; in this case, the value of PredicateValue is irrelevent but will be preserved for Device.GetPredication.</param>
<param name="predicateValue">If TRUE, rendering will be affected by when the predicate's conditions are met. If FALSE, rendering will be affected when the conditions are not met.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.UpdateSubresource(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource,System.UInt32,System.IntPtr,System.UInt32,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Box)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="554">
<summary>
The CPU copies data from memory to a subresource created in non-mappable memory.
<para>(Also see DirectX SDK: ID3D10Device::UpdateSubresource)</para>
</summary>
<param name="destinationResource">The destination resource (see D3DResource Object).</param>
<param name="destinationSubresource">A zero-based index, that identifies the destination subresource. See D3D10CalcSubresource for more details.</param>
<param name="destinationBox">A box that defines the portion of the destination subresource to copy the resource data into. Coordinates are in bytes for buffers and in texels for textures. The dimensions of the source must fit the destination (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Box"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Box"/>.</param>
<param name="sourceData">The source data in memory.</param>
<param name="sourceRowPitch">The size of one row of the source data.</param>
<param name="sourceDepthPitch">The size of one depth slice of source data.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.UpdateSubresource(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource,System.UInt32,System.IntPtr,System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="566">
<summary>
The CPU copies data from memory to a subresource created in non-mappable memory.
Because no destination box is defined, the data is written to the destination subresource with no offset.
<para>(Also see DirectX SDK: ID3D10Device::UpdateSubresource)</para>
</summary>
<param name="destinationResource">The destination resource (see D3DResource Object).</param>
<param name="destinationSubresource">A zero-based index, that identifies the destination subresource. See D3D10CalcSubresource for more details.</param>
<param name="sourceData">The source data in memory.</param>
<param name="sourceRowPitch">The size of one row of the source data.</param>
<param name="sourceDepthPitch">The size of one depth slice of source data.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateEffectFromCompiledBinary(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="578">
<summary>
Loads a precompiled effect from a file.
<para>(Also see DirectX SDK: D3D10CreateEffectFromMemory() function)</para>
</summary>
<para>(Also see DirectX SDK: D3D10CreateEffectFromMemory)</para>
<param name="path">The path to the file that contains the compiled effect.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateEffectFromCompiledBinary(System.IO.BinaryReader)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="586">
<summary>
Loads a precompiled effect from a binary data stream.
<para>(Also see DirectX SDK: D3D10CreateEffectFromMemory() function)</para>
</summary>
<para>(Also see DirectX SDK: D3D10CreateEffectFromMemory)</para>
<param name="binaryEffect">The binary data stream.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateEffectFromCompiledBinary(System.IO.BinaryReader,System.Int32,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPool)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="594">
<summary>
Loads a precompiled effect from a binary data stream.
<para>(Also see DirectX SDK: D3D10CreateEffectFromMemory() function)</para>
</summary>
<para>(Also see DirectX SDK: D3D10CreateEffectFromMemory)</para>
<param name="binaryEffect">The binary data stream.</param>
<param name="effectCompileOptions">Effect compile options</param>
<param name="effectPool">A memory space for effect variables shared across effects.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateEffectFromCompiledBinary(System.IO.Stream)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="604">
<summary>
Loads a precompiled effect from a binary data stream.
</summary>
<para>(Also see DirectX SDK: D3D10CreateEffectFromMemory)</para>
<param name="inputStream">The input data stream.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateEffectFromCompiledBinary(System.IO.Stream,System.Int32,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPool)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="611">
<summary>
Loads a precompiled effect from a binary data stream.
</summary>
<para>(Also see DirectX SDK: D3D10CreateEffectFromMemory)</para>
<param name="inputStream">The input data stream.</param>
<param name="effectCompileOptions">Effect compile options</param>
<param name="effectPool">A memory space for effect variables shared across effects.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateStateBlock(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="620">
<summary>
Create a state block.
</summary>
<param name="stateBlockMask">Indicates which parts of the device state will be captured when calling <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlock"/>.Capture and reapplied when calling <b>StateBlock</b>.Capture</param>
<returns>The <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlock"/> object that was created</returns>
<remarks>
A state block is a collection of device state, and is used for saving and
restoring device state. Use a state-block mask to enable subsets of state
for saving and restoring.

The <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StateBlockMask"/> object can be filled by using
any of its public members. A state block mask can also be obtained
by calling <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectTechnique"/>.ComputeStateBlockMask or
<see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPass"/>.ComputeStateBlockMask.
</remarks>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.GS" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="637">
<summary>
Get the associated geometry shader pipeline stage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.IA" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="645">
<summary>
Get the associated input assembler pipeline stage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.OM" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="653">
<summary>
Get the associated output merger pipeline stage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.PS" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="661">
<summary>
Get the associated pixel shader pipeline stage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.RS" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="669">
<summary>
Get the associated rasterizer pipeline stage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.SO" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="677">
<summary>
Get the associated stream output pipeline stage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.VS" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="685">
<summary>
Get the associated vertex shader pipeline stage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.InfoQueue" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="693">
<summary>
Gets an information queue object that can retrieve, store and filter debug messages.
</summary>
<returns>An InfoQueue (information queue) object.</returns>
<remarks>
Can only be obtained if the device was created using <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceOptions"/>.Debug flag. Otherwise, throws an exception.
</remarks>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.SwitchToRef" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="705">
<summary>
Gets a switch-to-reference object that enables an application to switch between a hardware and software device.
</summary>
<returns>A SwitchToRef (switch-to-reference) object.</returns>
<remarks>
Can only be obtained if the device was created using <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceOptions"/>.SwitchToRef flag. Otherwise, throws an exception.
</remarks>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.GraphicsDevice" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="717">
<summary>
Gets the Graphics Device object for this device
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceAndSwapChain(System.IntPtr)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="740">
<summary>
Create a Direct3D 10.0 device and a swap chain using the default hardware adapter 
and the most common settings.
<para>(Also see DirectX SDK: D3D10CreateDeviceAndSwapChain() function)</para>
</summary>
<param name="windowHandle">The window handle to the output window.</param>
<returns>The created Direct3D 10.0 Device</returns>
<remarks>
The swap chain created can be retrieved from the <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.SwapChain"/> property.
If DirectX SDK environment variable is found, and the build is a Debug one,
this method will attempt to use <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceOptions"/>.Debug flag. This should allow 
using the InfoQueue object.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceAndSwapChain(Microsoft.WindowsAPICodePack.DirectX.Graphics.Adapter,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DriverType,System.String,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.CreateDeviceOptions,Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChainDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="755">
<summary>
Create a Direct3D 10.0 device and a swap chain.
<para>(Also see DirectX SDK: D3D10CreateDeviceAndSwapChain() function)</para>
</summary>
<param name="adapter">An Adapter object. Can be null.</param>
<param name="driverType">The type of driver for the device.</param>
<param name="softwareRasterizerLibrary">A path the DLL that implements a software rasterizer. Must be NULL if driverType is non-software.</param>
<param name="options">Device creation flags that enable API layers. These flags can be bitwise OR'd together.</param>
<param name="swapChainDescription">Description of the swap chain.</param>
<returns>The created Direct3D 10.0 Device</returns>
<remarks>
The swap chain created can be retrieved from the <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.SwapChain"/> property.
By default, all Direct3D 10 calls are handled in a thread-safe way. 
By creating a single-threaded device (using <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceOptions"/>.SingleThreaded, 
you disable thread-safe calling.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDevice" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="778">
<summary>
Create a Direct3D 10.0 device using the default hardware adapter and the most common settings.
<para>(Also see DirectX SDK: D3D10CreateDevice() function)</para>
</summary>
<returns>The created Direct3D 10.0 Device</returns>
<remarks>
If DirectX SDK environment variable is found, and the build is a Debug one,
this method will attempt to use <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceOptions"/>.Debug flag. This should allow 
using the InfoQueue object.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDevice(Microsoft.WindowsAPICodePack.DirectX.Graphics.Adapter,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DriverType,System.String,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.CreateDeviceOptions)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device.h" line="790">
<summary>
Create a Direct3D 10.0 device. 
<para>(Also see DirectX SDK: D3D10CreateDevice() function)</para>
</summary>
<param name="adapter">An Adapter object. Can be null.</param>
<param name="driverType">The type of driver for the device.</param>
<param name="softwareRasterizerLibrary">A path the DLL that implements a software rasterizer. Must be NULL if driverType is non-software.</param>
<param name="options">Device creation flags that enable API layers. These flags can be bitwise OR'd together.</param>
<returns>The created Direct3D 10.0 Device</returns>
<remarks>
By default, all Direct3D 10 calls are handled in a thread-safe way. 
By creating a single-threaded device (using <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceOptions"/>.SingleThreaded, 
you disable thread-safe calling.
</remarks>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="14">
<summary>
The device interface represents a virtual adapter for Direct3D 10.1; it is used to perform rendering and create Direct3D resources.
<para>To create a D3DDevice1 instance, use one of the static factory method overloads: CreateDevice1() or CreateDeviceAndSwapChain1().</para>
<para>(Also see DirectX SDK: ID3D10Device1)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.CreateBlendState1(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BlendDescription1)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="23">
<summary>
Create a blend-state object that encapsules blend state for the output-merger stage.
<para>(Also see DirectX SDK: ID3D10Device1::CreateBlendState1)</para>
</summary>
<param name="blendStateDescription">A blend-state description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BlendDescription1"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BlendDescription1"/>.</param>
<returns>A blend-state object created (see BlendState1 Object).</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.CreateShaderResourceView1(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceViewDescription1)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="31">
<summary>
Create a shader-resource view for accessing data in a resource.
<para>(Also see DirectX SDK: ID3D10Device1::CreateShaderResourceView1)</para>
</summary>
<param name="resource">Pointer to the resource that will serve as input to a shader. This resource must have been created with the ShaderResource flag.</param>
<param name="description">A shader-resource-view description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceViewDescription1"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceViewDescription1"/>. Set this parameter to NULL to create a view that accesses the entire resource (using the format the resource was created with).</param>
<returns>A shader-resource view (see ShaderResourceView1)</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.DeviceFeatureLevel" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="40">
<summary>
Gets the feature level of the hardware device.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.CreateDeviceAndSwapChain1(System.IntPtr)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="48">
<summary>
Create a Direct3D 10.1 device and a swap chain using the default hardware adapter 
and the most common settings.
<para>(Also see DirectX SDK: D3D10CreateDeviceAndSwapChain1() function)</para>
</summary>
<param name="windowHandle">The window handle to the output window.</param>
<returns>The created Direct3D 10.1 Device</returns>
<remarks>
The swap chain created can be retrieved from the <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.SwapChain"/> property.
If DirectX SDK environment variable is found, and the build is a Debug one,
this method will attempt to use <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceOptions"/>.Debug flag. This should allow 
using the InfoQueue object.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.CreateDeviceAndSwapChain1(Microsoft.WindowsAPICodePack.DirectX.Graphics.Adapter,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DriverType,System.String,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.CreateDeviceOptions,Microsoft.WindowsAPICodePack.DirectX.Direct3D.FeatureLevel,Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChainDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="63">
<summary>
Create a Direct3D 10.1 device and a swap chain.
<para>(Also see DirectX SDK: D3D10CreateDeviceAndSwapChain1() function)</para>
</summary>
<param name="adapter">An Adapter object. Can be null.</param>
<param name="driverType">The type of driver for the device.</param>
<param name="softwareRasterizerLibrary">A path the DLL that implements a software rasterizer. Must be NULL if driverType is non-software.</param>
<param name="options">Device creation flags that enable API layers. These flags can be bitwise OR'd together.</param>
<param name="hardwareLevel">The feature level supported by this device.</param>
<param name="swapChainDescription">Description of the swap chain.</param>
<returns>The created Direct3D 10.1 Device</returns>
<remarks>
The swap chain created can be retrieved from the <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.SwapChain"/> property.
By default, all Direct3D 10 calls are handled in a thread-safe way. 
By creating a single-threaded device (using <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceOptions"/>.SingleThreaded), 
you disable thread-safe calling.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.CreateDevice1" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="88">
<summary>
Create a Direct3D 10.1 device using the default hardware adapter and the most common settings.
<para>(Also see DirectX SDK: D3D10CreateDevice1() function)</para>
</summary>
<returns>The created Direct3D 10.1 Device</returns>
<remarks>
If DirectX SDK environment variable is found, and the build is a Debug one,
this method will attempt to use <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceOptions"/>.Debug flag. This should allow 
using the InfoQueue object.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.CreateDevice1(Microsoft.WindowsAPICodePack.DirectX.Graphics.Adapter,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DriverType,System.String,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.CreateDeviceOptions,Microsoft.WindowsAPICodePack.DirectX.Direct3D.FeatureLevel)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="100">
<summary>
Create a Direct3D 10.1 device. 
<para>(Also see DirectX SDK: D3D10CreateDevice1() function)</para>
</summary>
<param name="adapter">An Adapter object. Can be null.</param>
<param name="driverType">The type of driver for the device.</param>
<param name="options">Device creation flags that enable API layers. These flags can be bitwise OR'd together.</param>
<param name="softwareRasterizerLibrary">A path the DLL that implements a software rasterizer. Must be NULL if driverType is non-software.</param>
<param name="hardwareLevel">The highest hardware feature level supported by this device.</param>
<returns>The created Direct3D 10.1 Device</returns>
<remarks>By default, all Direct3D 10 calls are handled in a thread-safe way. 
By creating a single-threaded device (using <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceOptions"/>.SingleThreaded), 
you disable thread-safe calling.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.CreateEffectFromCompiledBinary(System.IO.BinaryReader,System.Int32,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPool)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="121">
<summary>
Loads a precompiled effect from a binary data stream.
<para>(Also see DirectX SDK: D3D10CreateEffectFromMemory() function)</para>
</summary>
<param name="binaryEffect">The binary data stream.</param>
<param name="effectCompileOptions">Effect compile options</param>
<param name="effectPool">A memory space for effect variables shared across effects.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Effect" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effect.h" line="17">
<summary>
An Effect interface manages a set of state objects, resources and shaders for implementing a rendering effect.
<para>(Also see DirectX SDK: ID3D10Effect)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Effect.GetConstantBufferByIndex(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effect.h" line="25">
<summary>
Get a constant buffer by index.
<para>(Also see DirectX SDK: ID3D10Effect::GetConstantBufferByIndex)</para>
</summary>
<param name="index">A zero-based index.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Effect.GetConstantBufferByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effect.h" line="32">
<summary>
Get a constant buffer by name.
<para>(Also see DirectX SDK: ID3D10Effect::GetConstantBufferByName)</para>
</summary>
<param name="name">The constant-buffer name.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Effect.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effect.h" line="39">
<summary>
Get an effect description.
<para>(Also see DirectX SDK: ID3D10Effect::GetDesc)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Effect.Device" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effect.h" line="48">
<summary>
Get the device that created the effect as 10.0 device.
<para>(Also see DirectX SDK: ID3D10Effect::GetDevice)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Effect.GetTechniqueByIndex(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effect.h" line="57">
<summary>
Get a technique by index.
<para>(Also see DirectX SDK: ID3D10Effect::GetTechniqueByIndex)</para>
</summary>
<param name="index">A zero-based index.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Effect.GetTechniqueByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effect.h" line="64">
<summary>
Get a technique by name.
<para>(Also see DirectX SDK: ID3D10Effect::GetTechniqueByName)</para>
</summary>
<param name="name">The name of the technique.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Effect.GetVariableByIndex(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effect.h" line="71">
<summary>
Get a variable by index.
<para>(Also see DirectX SDK: ID3D10Effect::GetVariableByIndex)</para>
</summary>
<param name="index">A zero-based index.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Effect.GetVariableByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effect.h" line="78">
<summary>
Get a variable by name.
<para>(Also see DirectX SDK: ID3D10Effect::GetVariableByName)</para>
</summary>
<param name="name">The variable name.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Effect.GetVariableBySemantic(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effect.h" line="85">
<summary>
Get a variable by semantic.
<para>(Also see DirectX SDK: ID3D10Effect::GetVariableBySemantic)</para>
</summary>
<param name="semantic">The semantic name.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Effect.IsOptimized" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effect.h" line="92">
<summary>
Test an effect to see if the reflection metadata has been removed from memory.
<para>(Also see DirectX SDK: ID3D10Effect::IsOptimized)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Effect.IsPool" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effect.h" line="101">
<summary>
Test an effect to see if it is part of a memory pool.
<para>(Also see DirectX SDK: ID3D10Effect::IsPool)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Effect.IsValid" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effect.h" line="110">
<summary>
Test an effect to see if it contains valid syntax.
<para>(Also see DirectX SDK: ID3D10Effect::IsValid)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Effect.Optimize" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effect.h" line="119">
<summary>
Minimize the amount of memory required for an effect.
<para>(Also see DirectX SDK: ID3D10Effect::Optimize)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="27">
<summary>
The EffectVariable interface is the base class for all effect variables.
<para>(Also see DirectX SDK: ID3D10EffectVariable)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsBlend" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="34">
<summary>
Get a effect-blend variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsBlend)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsConstantBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="43">
<summary>
Get a constant buffer.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsConstantBuffer)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsDepthStencil" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="52">
<summary>
Get a depth-stencil variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsDepthStencil)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsDepthStencilView" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="61">
<summary>
Get a depth-stencil-view variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsDepthStencilView)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsMatrix" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="70">
<summary>
Get a matrix variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsMatrix)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsRasterizer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="79">
<summary>
Get a rasterizer variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsRasterizer)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsRenderTargetView" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="88">
<summary>
Get a render-target-view variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsRenderTargetView)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsSampler" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="97">
<summary>
Get a sampler variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsSampler)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsScalar" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="106">
<summary>
Get a scalar variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsScalar)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="115">
<summary>
Get a shader variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsShader)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsShaderResource" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="124">
<summary>
Get a shader-resource variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsShaderResource)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsString" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="133">
<summary>
Get a string variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsString)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsVector" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="142">
<summary>
Get a vector variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsVector)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.GetAnnotationByIndex(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="151">
<summary>
Get an annotation by index.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetAnnotationByIndex)</para>
</summary>
<param name="index">A zero-based index.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.GetAnnotationByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="158">
<summary>
Get an annotation by name.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetAnnotationByName)</para>
</summary>
<param name="name">The annotation name.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="165">
<summary>
Get a description.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetDesc)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.GetElement(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="174">
<summary>
Get an array element.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetElement)</para>
</summary>
<param name="index">A zero-based index; otherwise 0.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.GetMemberByIndex(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="181">
<summary>
Get a structure member by index.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetMemberByIndex)</para>
</summary>
<param name="index">A zero-based index.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.GetMemberByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="188">
<summary>
Get a structure member by name.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetMemberByName)</para>
</summary>
<param name="name">Member name.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.GetMemberBySemantic(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="195">
<summary>
Get a structure member by semantic.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetMemberBySemantic)</para>
</summary>
<param name="semantic">The semantic.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.ParentConstantBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="202">
<summary>
Get a constant buffer.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetParentConstantBuffer)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.EffectType" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="214">
<summary>
Get type information.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetType)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.IsValid" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="223">
<summary>
Compare the data type with the data stored.
<para>(Also see DirectX SDK: ID3D10EffectVariable::IsValid)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.GetRawValue(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="232">
<summary>
Get data.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetRawValue)</para>
</summary>
<param name="size">The number of bytes to get.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.SetRawValue(System.Byte[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="239">
<summary>
Set data.
<para>(Also see DirectX SDK: ID3D10EffectVariable::SetRawValue)</para>
</summary>
<param name="data">The variable to set.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectBlendVariable" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectblendvariable.h" line="11">
<summary>
The blend-variable interface accesses blend state.
<para>(Also see DirectX SDK: ID3D10EffectBlendVariable)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectBlendVariable.GetBackingStore(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectblendvariable.h" line="26">
<summary>
Get a blend-state variable.
<para>(Also see DirectX SDK: ID3D10EffectBlendVariable::GetBackingStore)</para>
</summary>
<param name="index">Index into an array of blend-state descriptions. If there is only one blend-state variable in the effect, use 0.</param>
<returns>A blend-state description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BlendDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BlendDescription"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectBlendVariable.GetBlendState(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectblendvariable.h" line="34">
<summary>
Get a blend-state object.
<para>(Also see DirectX SDK: ID3D10EffectBlendVariable::GetBlendState)</para>
</summary>
<param name="index">index into an array of blend-state interfaces. If there is only one blend-state interface, use 0.</param>
<returns>A blend-state interface (see BlendState Object).</returns>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectConstantBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectconstantbuffer.h" line="12">
<summary>
A constant-buffer interface accesses constant buffers or texture buffers.
<para>(Also see DirectX SDK: ID3D10EffectConstantBuffer)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectConstantBuffer.ConstantBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectconstantbuffer.h" line="20">
<summary>
Gets or sets a constant-buffer.
<para>(Also see DirectX SDK: ID3D10EffectConstantBuffer::GetConstantBuffer, ID3D10EffectConstantBuffer::SetConstantBuffer)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectConstantBuffer.TextureBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectconstantbuffer.h" line="30">
<summary>
Gets or sets a texture-buffer.
<para>(Also see DirectX SDK: ID3D10EffectConstantBuffer::GetTextureBuffer, ID3D10EffectConstantBuffer::SetTextureBuffer)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectDepthStencilVariable" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectdepthstencilvariable.h" line="11">
<summary>
A depth-stencil-variable interface accesses depth-stencil state.
<para>(Also see DirectX SDK: ID3D10EffectDepthStencilVariable)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectDepthStencilVariable.GetBackingStore(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectdepthstencilvariable.h" line="19">
<summary>
Get a variable that contains depth-stencil state.
<para>(Also see DirectX SDK: ID3D10EffectDepthStencilVariable::GetBackingStore)</para>
</summary>
<param name="index">Index into an array of depth-stencil-state descriptions. If there is only one depth-stencil variable in the effect, use 0.</param>
<returns>A depth-stencil-state description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilDescription"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectDepthStencilVariable.GetDepthStencilState(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectdepthstencilvariable.h" line="27">
<summary>
Get a depth-stencil object.
<para>(Also see DirectX SDK: ID3D10EffectDepthStencilVariable::GetDepthStencilState)</para>
</summary>
<param name="index">Index into an array of depth-stencil interfaces. If there is only one depth-stencil interface, use 0.</param>
<returns>A blend-state interface (see DepthStencilState Object).</returns>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectDepthStencilViewVariable" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectdepthstencilviewvariable.h" line="13">
<summary>
A depth-stencil-view-variable interface accesses a depth-stencil view.
<para>(Also see DirectX SDK: ID3D10EffectDepthStencilViewVariable)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectDepthStencilViewVariable.DepthStencil" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectdepthstencilviewvariable.h" line="21">
<summary>
Gets or sets a depth-stencil-view resource.
<para>(Also see DirectX SDK: ID3D10EffectDepthStencilViewVariable::GetDepthStencil, ID3D10EffectDepthStencilViewVariable::SetDepthStencil)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectDepthStencilViewVariable.GetDepthStencilArray(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectdepthstencilviewvariable.h" line="31">
<summary>
Get a collection of depth-stencil-view resources.
<para>(Also see DirectX SDK: ID3D10EffectDepthStencilViewVariable::GetDepthStencilArray)</para>
</summary>
<param name="offset">The zero-based array index to get the first object.</param>
<param name="count">The number of elements requested in the collection.</param>
<returns>A collection of depth-stencil-view interfaces.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectDepthStencilViewVariable.SetDepthStencilArray(System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilView},System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectdepthstencilviewvariable.h" line="40">
<summary>
Set a collection of depth-stencil-view resources.
<para>(Also see DirectX SDK: ID3D10EffectDepthStencilViewVariable::SetDepthStencilArray)</para>
</summary>
<param name="resources">A collection of depth-stencil-view interfaces.</param>
<param name="offset">The zero-based index to set the first object in the collection.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectMatrixVariable" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectmatrixvariable.h" line="10">
<summary>
A matrix-variable interface accesses a matrix.
<para>(Also see DirectX SDK: ID3D10EffectMatrixVariable)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectMatrixVariable.Matrix" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectmatrixvariable.h" line="18">
<summary>
Get a 4x4 floating point matrix.
<para>(Also see DirectX SDK: ID3D10EffectMatrixVariable::GetMatrix, ID3D10EffectMatrixVariable::SetMatrix)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectMatrixVariable.MatrixTranspose" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectmatrixvariable.h" line="28">
<summary>
Set or get a 4x4 floating point matrix transpose.
<para>(Also see DirectX SDK: ID3D10EffectMatrixVariable::GetMatrixTranspose, ID3D10EffectMatrixVariable::SetMatrixTranspose)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectMatrixVariable.GetMatrixArray(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectmatrixvariable.h" line="38">
<summary>
Get an array of 4x4 matrices.
<para>(Also see DirectX SDK: ID3D10EffectMatrixVariable::GetMatrixArray)</para>
</summary>
<param name="offset">The offset (in number of matrices) between the start of the array and the first matrix returned.</param>
<param name="count">The number of matrices requested in the returned collection.</param>
<returns>A two dimentional array of matrices.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectMatrixVariable.GetMatrixTransposeArray(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectmatrixvariable.h" line="47">
<summary>
Transpose and get an array of 4x4 floating-point matrices.
<para>(Also see DirectX SDK: ID3D10EffectMatrixVariable::GetMatrixTransposeArray)</para>
</summary>
<param name="offset">The offset (in number of matrices) between the start of the array and the first matrix to get.</param>
<param name="count">The number of matrices in the array to get.</param>
<returns>A two dimentional array of tranposed matrices.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectMatrixVariable.SetMatrixArray(Microsoft.WindowsAPICodePack.DirectX.Direct3D.Matrix4x4F[],System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectmatrixvariable.h" line="56">
<summary>
Set an array of 4x4 floating-point matrices.
<para>(Also see DirectX SDK: ID3D10EffectMatrixVariable::SetMatrixArray)</para>
</summary>
<param name="data">The matrix two dimentional array.</param>
<param name="offset">The number of matrix elements to skip from the start of the array.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectMatrixVariable.SetMatrixTransposeArray(Microsoft.WindowsAPICodePack.DirectX.Direct3D.Matrix4x4F[],System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectmatrixvariable.h" line="64">
<summary>
Transpose and set an array of 4x4 floating-point matrices.
<para>(Also see DirectX SDK: ID3D10EffectMatrixVariable::SetMatrixTransposeArray)</para>
</summary>
<param name="data">A two dimentional array of matrices.</param>
<param name="offset">The offset (in number of matrices) between the start of the array and the first matrix to set.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectRasterizerVariable" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectrasterizervariable.h" line="11">
<summary>
A rasterizer-variable interface accesses rasterizer state.
<para>(Also see DirectX SDK: ID3D10EffectRasterizerVariable)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectRasterizerVariable.GetBackingStore(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectrasterizervariable.h" line="19">
<summary>
Get a variable that contains rasteriser state.
<para>(Also see DirectX SDK: ID3D10EffectRasterizerVariable::GetBackingStore)</para>
</summary>
<param name="index">Index into an array of rasteriser-state descriptions. If there is only one rasteriser variable in the effect, use 0.</param>
<returns>A rasteriser-state description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RasterizerDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RasterizerDescription"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectRasterizerVariable.GetRasterizerState(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectrasterizervariable.h" line="27">
<summary>
Get a rasterizer object.
<para>(Also see DirectX SDK: ID3D10EffectRasterizerVariable::GetRasterizerState)</para>
</summary>
<param name="index">Index into an array of rasterizer interfaces. If there is only one rasterizer interface, use 0.</param>
<returns>A rasterizer interface (see RasterizerState Object).</returns>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectRenderTargetViewVariable" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectrendertargetviewvariable.h" line="11">
<summary>
A render-target-view interface accesses a render target.
<para>(Also see DirectX SDK: ID3D10EffectRenderTargetViewVariable)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectRenderTargetViewVariable.RenderTarget" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectrendertargetviewvariable.h" line="19">
<summary>
Gets or sets a render-target.
<para>(Also see DirectX SDK: ID3D10EffectRenderTargetViewVariable::GetRenderTarget, ID3D10EffectRenderTargetViewVariable::SetRenderTarget)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectRenderTargetViewVariable.GetRenderTargetCollection(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectrendertargetviewvariable.h" line="29">
<summary>
Get a collection array of render-targets.
<para>(Also see DirectX SDK: ID3D10EffectRenderTargetViewVariable::GetRenderTargetArray)</para>
</summary>
<param name="offset">The zero-based collection index to get the first object.</param>
<param name="count">The number of elements requested in the collection.</param>
<returns>A collection of render-target-view interfaces. See RenderTargetView Object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectRenderTargetViewVariable.SetRenderTargetCollection(System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RenderTargetView},System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectrendertargetviewvariable.h" line="38">
<summary>
Set a collection of render-targets.
<para>(Also see DirectX SDK: ID3D10EffectRenderTargetViewVariable::SetRenderTargetArray)</para>
</summary>
<param name="resources">Set a collection of render-target-view interfaces. See RenderTargetView Object.</param>
<param name="offset">The zero-based collection index to store the first object at.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectSamplerVariable" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectsamplervariable.h" line="11">
<summary>
A sampler interface accesses sampler state.
<para>(Also see DirectX SDK: ID3D10EffectSamplerVariable)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectSamplerVariable.GetBackingStore(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectsamplervariable.h" line="19">
<summary>
Get a variable that contains sampler state.
<para>(Also see DirectX SDK: ID3D10EffectSamplerVariable::GetBackingStore)</para>
</summary>
<param name="index">Index into an array of sampler descriptions. If there is only one sampler variable in the effect, use 0.</param>
<returns>A sampler description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerDescription"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectSamplerVariable.GetSampler(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectsamplervariable.h" line="27">
<summary>
Get a sampler object.
<para>(Also see DirectX SDK: ID3D10EffectSamplerVariable::GetSampler)</para>
</summary>
<param name="index">Index into an array of sampler interfaces. If there is only one sampler interface, use 0.</param>
<returns>A sampler interface (see SamplerState).</returns>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectScalarVariable" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectscalarvariable.h" line="23">
<summary>
An effect-scalar-variable interface accesses scalar values.
<para>(Also see DirectX SDK: ID3D10EffectScalarVariable)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectScalarVariable.AsBoolean" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectscalarvariable.h" line="31">
<summary>
Get or set a boolean variable.
<para>(Also see DirectX SDK: ID3D10EffectScalarVariable::GetBool, ID3D10EffectScalarVariable::SetBool)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectScalarVariable.AsInt32" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectscalarvariable.h" line="41">
<summary>
Get or set an integer variable.
<para>(Also see DirectX SDK: ID3D10EffectScalarVariable::GetInt, ID3D10EffectScalarVariable::SetInt)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectScalarVariable.AsSingle" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectscalarvariable.h" line="51">
<summary>
Get or set a floating-point variable.
<para>(Also see DirectX SDK: ID3D10EffectScalarVariable::GetFloat, ID3D10EffectScalarVariable::SetFloat)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectScalarVariable.GetBooleanArray(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectscalarvariable.h" line="65">
<summary>
Get an array of boolean variables.
<para>(Also see DirectX SDK: ID3D10EffectScalarVariable::GetBoolArray)</para>
</summary>
<param name="count">The number of array elements to get.</param>
<returns>The array of boolean variables.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectScalarVariable.SetBooleanArray(System.Boolean[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectscalarvariable.h" line="73">
<summary>
Set an array of boolean variables.
<para>(Also see DirectX SDK: ID3D10EffectScalarVariable::SetBoolArray)</para>
</summary>
<param name="data">The array of variables to set.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectScalarVariable.GetInt32Array(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectscalarvariable.h" line="80">
<summary>
Get an array of integer variables.
<para>(Also see DirectX SDK: ID3D10EffectScalarVariable::GetIntArray)</para>
</summary>
<param name="count">The number of array elements to get.</param>
<returns>The array of integer variables.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectScalarVariable.SetInt32Array(System.Int32[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectscalarvariable.h" line="88">
<summary>
Set an array of integer variables.
<para>(Also see DirectX SDK: ID3D10EffectScalarVariable::SetIntArray)</para>
</summary>
<param name="data">The array of variables to set.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectScalarVariable.GetSingleArray(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectscalarvariable.h" line="95">
<summary>
Get an array of floating-point variables.
<para>(Also see DirectX SDK: ID3D10EffectScalarVariable::GetFloatArray)</para>
</summary>
<param name="count">The number of array elements to get.</param>
<returns>The array of floating-point variables.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectScalarVariable.SetSingleArray(System.Single[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectscalarvariable.h" line="103">
<summary>
Set an array of floating-point variables.
<para>(Also see DirectX SDK: ID3D10EffectScalarVariable::SetFloatArray)</para>
</summary>
<param name="data">The array of variables to set.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectShaderResourceVariable" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectshaderresourcevariable.h" line="11">
<summary>
A shader-resource interface accesses a shader resource.
<para>(Also see DirectX SDK: ID3D10EffectShaderResourceVariable)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectShaderResourceVariable.Resource" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectshaderresourcevariable.h" line="19">
<summary>
Gets or sets a shader resource.
<para>(Also see DirectX SDK: ID3D10EffectShaderResourceVariable::SetResource, ID3D10EffectShaderResourceVariable::GetResource)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectShaderResourceVariable.GetResourceArray(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectshaderresourcevariable.h" line="29">
<summary>
Get a collection of shader resources.
<para>(Also see DirectX SDK: ID3D10EffectShaderResourceVariable::GetResourceArray)</para>
</summary>
<param name="offset">The zero-based array index to get the first object.</param>
<param name="count">The number of requested elements in the array.</param>
<returns>A collection of shader-resource-view interfaces. See ShaderResourceView Object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectShaderResourceVariable.SetResourceArray(System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceView},System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectshaderresourcevariable.h" line="38">
<summary>
Set an collection of shader resources.
<para>(Also see DirectX SDK: ID3D10EffectShaderResourceVariable::SetResourceArray)</para>
</summary>
<param name="resources">A collection of shader-resource-view interfaces. See ShaderResourceView Object.</param>
<param name="offset">The zero-based array index to get the first object.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectShaderVariable" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectshadervariable.h" line="13">
<summary>
A shader-variable interface accesses a shader variable.
<para>(Also see DirectX SDK: ID3D10EffectShaderVariable)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectShaderVariable.GetGeometryShader(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectshadervariable.h" line="21">
<summary>
Get a geometry shader.
<para>(Also see DirectX SDK: ID3D10EffectShaderVariable::GetGeometryShader)</para>
</summary>
<param name="shaderIndex">A zero-based index.</param>
<returns>A GeometryShader Object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectShaderVariable.GetInputSignatureElementDescription(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectshadervariable.h" line="29">
<summary>
Get an input-signature description.
<para>(Also see DirectX SDK: ID3D10EffectShaderVariable::GetInputSignatureElementDesc)</para>
</summary>
<param name="shaderIndex">A zero-based shader index.</param>
<param name="elementIndex">A zero-based shader-element index.</param>
<returns>A parameter description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SignatureParameterDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SignatureParameterDescription"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectShaderVariable.GetOutputSignatureElementDescription(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectshadervariable.h" line="38">
<summary>
Get an output-signature description.
<para>(Also see DirectX SDK: ID3D10EffectShaderVariable::GetOutputSignatureElementDesc)</para>
</summary>
<param name="shaderIndex">A zero-based shader index.</param>
<param name="elementIndex">A zero-based element index.</param>
<returns>A parameter description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SignatureParameterDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SignatureParameterDescription"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectShaderVariable.GetPixelShader(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectshadervariable.h" line="47">
<summary>
Get a pixel shader.
<para>(Also see DirectX SDK: ID3D10EffectShaderVariable::GetPixelShader)</para>
</summary>
<param name="shaderIndex">A zero-based index.</param>
<returns>A PixelShader Object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectShaderVariable.GetShaderDescription(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectshadervariable.h" line="55">
<summary>
Get a shader description.
<para>(Also see DirectX SDK: ID3D10EffectShaderVariable::GetShaderDesc)</para>
</summary>
<param name="shaderIndex">A zero-based index.</param>
<returns>A shader description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectShaderDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectShaderDescription"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectShaderVariable.GetVertexShader(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectshadervariable.h" line="63">
<summary>
Get a vertex shader.
<para>(Also see DirectX SDK: ID3D10EffectShaderVariable::GetVertexShader)</para>
</summary>
<param name="shaderIndex">A zero-based index.</param>
<returns>A VertexShader Object.</returns>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectStringVariable" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectstringvariable.h" line="10">
<summary>
A string-variable interface accesses a string variable.
<para>(Also see DirectX SDK: ID3D10EffectStringVariable)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectStringVariable.StringValue" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectstringvariable.h" line="18">
<summary>
Get the string.
<para>(Also see DirectX SDK: ID3D10EffectStringVariable::GetString)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectStringVariable.GetStringArray(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectstringvariable.h" line="27">
<summary>
Get an array of strings.
<para>(Also see DirectX SDK: ID3D10EffectStringVariable::GetStringArray)</para>
</summary>
<param name="offset">The offset (in number of strings) between the start of the array and the first string to get.</param>
<param name="count">The number of strings requested in the returned array.</param>
<returns>The string array.</returns>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectType" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttype.h" line="13">
<summary>
The EffectType interface accesses effect variables by type.
<para>(Also see DirectX SDK: ID3D10EffectType)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectType.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttype.h" line="21">
<summary>
Get an effect-type description.
<para>(Also see DirectX SDK: ID3D10EffectType::GetDesc)</para>
</summary>
<param name="Description">A effect-type description. See EffectTypeDescription.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectType.GetMemberName(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttype.h" line="31">
<summary>
Get the name of a member.
<para>(Also see DirectX SDK: ID3D10EffectType::GetMemberName)</para>
</summary>
<param name="index">A zero-based index.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectType.GetMemberSemantic(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttype.h" line="38">
<summary>
Get the semantic attached to a member.
<para>(Also see DirectX SDK: ID3D10EffectType::GetMemberSemantic)</para>
</summary>
<param name="index">A zero-based index.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectType.GetMemberTypeByIndex(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttype.h" line="45">
<summary>
Get a member type by index.
<para>(Also see DirectX SDK: ID3D10EffectType::GetMemberTypeByIndex)</para>
</summary>
<param name="index">A zero-based index.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectType.GetMemberTypeByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttype.h" line="52">
<summary>
Get an member type by name.
<para>(Also see DirectX SDK: ID3D10EffectType::GetMemberTypeByName)</para>
</summary>
<param name="name">A member's name.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectType.GetMemberTypeBySemantic(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttype.h" line="59">
<summary>
Get a member type by semantic.
<para>(Also see DirectX SDK: ID3D10EffectType::GetMemberTypeBySemantic)</para>
</summary>
<param name="semantic">A semantic.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectType.IsValid" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effecttype.h" line="66">
<summary>
Tests that the effect type is valid.
<para>(Also see DirectX SDK: ID3D10EffectType::IsValid)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVectorVariable" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvectorvariable.h" line="13">
<summary>
A vector-variable interface accesses a four-component vector.
<para>(Also see DirectX SDK: ID3D10EffectVectorVariable)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVectorVariable.BoolVector" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvectorvariable.h" line="20">
<summary>
Get or set a four-component vector that contains boolean data.
<para>(Also see DirectX SDK: ID3D10EffectVectorVariable::GetBoolVector, ID3D10EffectVectorVariable::SetBoolVector)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVectorVariable.GetBoolVectorArray(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvectorvariable.h" line="30">
<summary>
Get an array of four-component vectors that contain boolean data.
<para>(Also see DirectX SDK: ID3D10EffectVectorVariable::GetBoolVectorArray)</para>
</summary>
<param name="count">The number of requested array elements to get.</param>
<returns>An array of boolean vectors as 4-components arrays.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVectorVariable.FloatVector" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvectorvariable.h" line="38">
<summary>
Get or set a four-component vector that contains floating-point data.
<para>(Also see DirectX SDK: ID3D10EffectVectorVariable::GetFloatVector, ID3D10EffectVectorVariable::SetFloatVector)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVectorVariable.GetFloatVectorArray(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvectorvariable.h" line="49">
<summary>
Get an array of four-component vectors that contain floating-point data.
<para>(Also see DirectX SDK: ID3D10EffectVectorVariable::GetFloatVectorArray)</para>
</summary>
<param name="count">The number of requested array elements to get.</param>
<returns>An array of floating-point vectors as 4-components arrays.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVectorVariable.IntVector" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvectorvariable.h" line="57">
<summary>
Get or set a four-component vector that contains integer data.
<para>(Also see DirectX SDK: ID3D10EffectVectorVariable::GetIntVector, ID3D10EffectVectorVariable::SetIntVector)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVectorVariable.GetIntVectorArray(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvectorvariable.h" line="67">
<summary>
Get an array of four-component vectors that contain integer data.
<para>(Also see DirectX SDK: ID3D10EffectVectorVariable::GetIntVectorArray)</para>
</summary>
<param name="count">The number of requested array elements to get.</param>
<returns>An array of integer value vectors as 4-components arrays.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVectorVariable.SetBoolVectorArray(Microsoft.WindowsAPICodePack.DirectX.Direct3D.Vector4B[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvectorvariable.h" line="81">
<summary>
Set an array of four-component vectors that contain boolean data.
<para>(Also see DirectX SDK: ID3D10EffectVectorVariable::SetBoolVectorArray)</para>
</summary>
<param name="data">An array of boolean vectors as 4-components arrays.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVectorVariable.SetFloatVectorArray(Microsoft.WindowsAPICodePack.DirectX.Direct3D.Vector4F[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvectorvariable.h" line="88">
<summary>
Set an array of four-component vectors that contain floating-point data.
<para>(Also see DirectX SDK: ID3D10EffectVectorVariable::SetFloatVectorArray)</para>
</summary>
<param name="data">An array of floating-point vectors as 4-components arrays.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVectorVariable.SetIntVectorArray(Microsoft.WindowsAPICodePack.DirectX.Direct3D.Vector4I[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvectorvariable.h" line="95">
<summary>
Set an array of four-component vectors that contain integer data.
<para>(Also see DirectX SDK: ID3D10EffectVectorVariable::SetIntVectorArray)</para>
</summary>
<param name="data">An array of integer data vectors as 4-components arrays.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.GeometryShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10geometryshader.h" line="10">
<summary>
A geometry-shader interface manages an executable program (a geometry shader) that controls the geometry-shader stage.
<para>(Also see DirectX SDK: ID3D10GeometryShader)</para>
</summary>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputLayout" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10inputlayout.h" line="10">
<summary>
An input-layout interface accesses the input data for the input-assembler stage.
<para>(Also see DirectX SDK: ID3D10InputLayout)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Multithread" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10multithread.h" line="11">
<summary>
A multithread interface accesses multithread settings and can only be used if the thread-safe layer is turned on.
<para>(Also see DirectX SDK: ID3D10Multithread)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Multithread.Enter" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10multithread.h" line="19">
<summary>
Enter a device's critical section.
<para>(Also see DirectX SDK: ID3D10Multithread::Enter)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Multithread.Leave" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10multithread.h" line="25">
<summary>
Leave a device's critical section.
<para>(Also see DirectX SDK: ID3D10Multithread::Leave)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Multithread.IsMultithreadProtected" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10multithread.h" line="31">
<summary>
Find out if multithreading is turned on or not.
<para>(Also see DirectX SDK: ID3D10Multithread::GetMultithreadProtected, ID3D10Multithread::SetMultithreadProtected)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.PixelShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10pixelshader.h" line="10">
<summary>
A pixel-shader interface manages an executable program (a pixel shader) that controls the pixel-shader stage.
<para>(Also see DirectX SDK: ID3D10PixelShader)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RasterizerState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10rasterizerstate.h" line="10">
<summary>
A rasterizer-state interface accesses rasterizer state for the rasterizer stage.
<para>(Also see DirectX SDK: ID3D10RasterizerState)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RasterizerState.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10rasterizerstate.h" line="18">
<summary>
Get the properties of a rasterizer-state object.
<para>(Also see DirectX SDK: ID3D10RasterizerState::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RenderTargetView" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10rendertargetview.h" line="10">
<summary>
A render-target-view interface identifies the render-target subresources that can be accessed during rendering.
<para>(Also see DirectX SDK: ID3D10RenderTargetView)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RenderTargetView.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10rendertargetview.h" line="18">
<summary>
Get the properties of a render target view.
<para>(Also see DirectX SDK: ID3D10RenderTargetView::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10samplerstate.h" line="10">
<summary>
A sampler-state interface accesses sampler state for a texture.
<para>(Also see DirectX SDK: ID3D10SamplerState)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10samplerstate.h" line="18">
<summary>
Get the sampler state.
<para>(Also see DirectX SDK: ID3D10SamplerState::GetDesc)</para>
</summary>
</member>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection1" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection1.h" line="12">
<summary>
A shader-reflection interface accesses shader information.
<para>(Also see DirectX SDK: ID3D10ShaderReflection1)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection1.BitwiseInstructionCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection1.h" line="20">
<summary>
Gets the number of bitwise instructions.
<para>(Also see DirectX SDK: ID3D10ShaderReflection1::GetBitwiseInstructionCount)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection1.ConversionInstructionCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection1.h" line="29">
<summary>
Gets the number of Conversion instructions.
<para>(Also see DirectX SDK: ID3D10ShaderReflection1::GetConversionInstructionCount)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection1.GSInputPrimitive" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection1.h" line="38">
<summary>
Gets the geometry-shader input-primitive description.
<para>(Also see DirectX SDK: ID3D10ShaderReflection1::GetGSInputPrimitive)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection1.MovcInstructionCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection1.h" line="47">
<summary>
Gets the number of Movc instructions.
<para>(Also see DirectX SDK: ID3D10ShaderReflection1::GetMovcInstructionCount)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection1.MovInstructionCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection1.h" line="56">
<summary>
Gets the number of Mov instructions.
<para>(Also see DirectX SDK: ID3D10ShaderReflection1::GetMovInstructionCount)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection1.GetResourceBindingDescriptionByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection1.h" line="65">
<summary>
Gets a variable by name.
<para>(Also see DirectX SDK: ID3D10ShaderReflection1::GetResourceBindingDescByName)</para>
</summary>
<param name="name">A string containing the variable name.</param>
<returns>ShaderInputBindDescription object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection1.GetVariableByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection1.h" line="73">
<summary>
Gets a variable by name.
<para>(Also see DirectX SDK: ID3D10ShaderReflection1::GetVariableByName)</para>
</summary>
<param name="name">A string containing the variable name.</param>
<returns>ShaderReflectionVariable object.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection1.IsLevel9Shader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection1.h" line="81">
<summary>
Is Level9 Shader
<para>(Also see DirectX SDK: ID3D10ShaderReflection1::IsLevel9Shader)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflection1.IsSampleFrequencyShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflection1.h" line="90">
<summary>
TBD
<para>(Also see DirectX SDK: ID3D10ShaderReflection1::IsSampleFrequencyShader)</para>
</summary>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflectionType" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflectiontype.h" line="12">
<summary>
This shader-reflection interface provides access to variable type. This class does not inherit from anything, but does declare the following methods:
<para>(Also see DirectX SDK: ID3D10ShaderReflectionType)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflectionType.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflectiontype.h" line="20">
<summary>
Get the description of a shader-reflection-variable type.
<para>(Also see DirectX SDK: ID3D10ShaderReflectionType::GetDesc)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflectionType.GetMemberTypeByIndex(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflectiontype.h" line="29">
<summary>
Get a shader-reflection-variable type by index.
<para>(Also see DirectX SDK: ID3D10ShaderReflectionType::GetMemberTypeByIndex)</para>
</summary>
<param name="index">Zero-based index.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflectionType.GetMemberTypeByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflectiontype.h" line="36">
<summary>
Get a shader-reflection-variable type by name.
<para>(Also see DirectX SDK: ID3D10ShaderReflectionType::GetMemberTypeByName)</para>
</summary>
<param name="name">Member name.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderReflectionType.GetMemberTypeName(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderreflectiontype.h" line="43">
<summary>
Get a shader-reflection-variable type.
<para>(Also see DirectX SDK: ID3D10ShaderReflectionType::GetMemberTypeName)</para>
</summary>
<param name="index">Zero-based index.</param>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceView" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderresourceview.h" line="10">
<summary>
A shader-resource-view interface specifies the subresources a shader can access during rendering. Examples of shader resources include a constant buffer, a texture buffer, a texture or a sampler.
<para>(Also see DirectX SDK: ID3D10ShaderResourceView)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceView.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderresourceview.h" line="18">
<summary>
Get the shader resource view's description.
<para>(Also see DirectX SDK: ID3D10ShaderResourceView::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceView1" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderresourceview1.h" line="10">
<summary>
A shader-resource-view interface specifies the subresources a shader can access during rendering. Examples of shader resources include a constant buffer, a texture buffer, a texture or a sampler.
<para>(Also see DirectX SDK: ID3D10ShaderResourceView1)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceView1.Description1" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10shaderresourceview1.h" line="18">
<summary>
Get the shader resource view's description.
<para>(Also see DirectX SDK: ID3D10ShaderResourceView1::GetDesc1)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SwitchToRef" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10switchtoref.h" line="12">
<summary>
A swith-to-reference interface (see the switch-to-reference layer) enables an application to switch between a hardware and software device.
<para>(Also see DirectX SDK: ID3D10SwitchToRef)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SwitchToRef.UseRef" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10switchtoref.h" line="20">
<summary>
Get or set a boolean value that indicates the type of device being used.
Set this to True to change to a software device, set this to False to change to a hardware device.
<para>(Also see DirectX SDK: ID3D10SwitchToRef::GetUseRef, ID3D10SwitchToRef::SetUseRef)</para>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture2D" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10texture2d.h" line="10">
<summary>
A 2D texture interface manages texel data, which is structured memory.
<para>(Also see DirectX SDK: ID3D10Texture2D)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture2D.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10texture2d.h" line="18">
<summary>
Get the properties of the texture resource.
<para>(Also see DirectX SDK: ID3D10Texture2D::GetDesc)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture2D.Map(System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Map,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MapOptions)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10texture2d.h" line="27">
<summary>
Get the data contained in a subresource, and deny the GPU access to that subresource.
<para>(Also see DirectX SDK: ID3D10Texture2D::Map)</para>
</summary>
<param name="subresourceIndex">Index number of the subresource. See D3D10CalcSubresource for more details.</param>
<param name="type">Specifies the CPU's read and write permissions for a resource. For possible values, see Map.</param>
<param name="options">Flag that specifies what the CPU should do when the GPU is busy. This flag is optional.</param>
<returns>Pointer to the texture resource data.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture2D.Unmap(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10texture2d.h" line="37">
<summary>
Invalidate the pointer to the resource that was retrieved by Texture2D.Map, and re-enable GPU access to the resource.
<para>(Also see DirectX SDK: ID3D10Texture2D::Unmap)</para>
</summary>
<param name="subresourceIndex">Subresource to be unmapped. See D3D10CalcSubresource for more details.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture3D" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10texture3d.h" line="10">
<summary>
A 3D texture interface accesses texel data, which is structured memory.
<para>(Also see DirectX SDK: ID3D10Texture3D)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture3D.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10texture3d.h" line="18">
<summary>
Get the properties of the texture resource.
<para>(Also see DirectX SDK: ID3D10Texture3D::GetDesc)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture3D.Map(System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Map,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MapOptions)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10texture3d.h" line="27">
<summary>
Get the data contained in a subresource, and deny the GPU access to that subresource.
<para>(Also see DirectX SDK: ID3D10Texture3D::Map)</para>
</summary>
<param name="subresourceIndex">Index number of the subresource. See D3D10CalcSubresource for more details.</param>
<param name="type">Specifies the CPU's read and write permissions for a resource. For possible values, see Map.</param>
<param name="options">Flag that specifies what the CPU should do when the GPU is busy. This flag is optional.</param>
<returns>Pointer to the texture resource data.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Texture3D.Unmap(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10texture3d.h" line="37">
<summary>
Invalidate the pointer to the resource retrieved by Texture3D.Map, and re-enable the GPU's access to the resource.
<para>(Also see DirectX SDK: ID3D10Texture3D::Unmap)</para>
</summary>
<param name="subresourceIndex">Subresource to be unmapped. See D3D10CalcSubresource for more details.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10vertexshader.h" line="10">
<summary>
A vertex-shader interface manages an executable program (a vertex shader) that controls the vertex-shader stage.
<para>(Also see DirectX SDK: ID3D10VertexShader)</para>
</summary>
</member>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BlendState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11blendstate.h" line="10">
<summary>
This blend-state interface accesses blending state for the output-merger stage.
<para>(Also see DirectX SDK: ID3D11BlendState)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BlendState.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11blendstate.h" line="18">
<summary>
Get the blend state description.
<para>(Also see DirectX SDK: ID3D11BlendState::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11resource.h" line="21">
<summary>
A resource interface provides common actions on all resources.
<para>(Also see DirectX SDK: ID3D11Resource)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource.EvictionPriority" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11resource.h" line="29">
<summary>
Gets or sets the eviction priority of a resource.
<para>(Also see DirectX SDK: ID3D11Resource::GetEvictionPriority, ID3D11Resource::SetEvictionPriority)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource.ResourceDimension" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11resource.h" line="39">
<summary>
Get the type of the resource.
<para>(Also see DirectX SDK: ID3D11Resource::GetType)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource.GraphicsSurface" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11resource.h" line="48">
<summary>
Get associated Graphics surface.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource.GraphicsSurface1" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11resource.h" line="56">
<summary>
Get associated Graphics.Surface1.
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11buffer.h" line="10">
<summary>
Allows acccess to a buffer resource, which is unstructured memory. 
Buffers typically store vertex or index data.
<para>(Also see DirectX SDK: ID3D11Buffer)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11buffer.h" line="19">
<summary>
Get the properties of a buffer resource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BufferDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BufferDescription"/>.
<para>(Also see DirectX SDK: ID3D11Buffer::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11buffer.h" line="42">
<summary>
Stores the parameters required to get or set a vertex buffer for a device.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexBuffer.#ctor(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer,System.UInt32,System.UInt32)" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11buffer.h" line="49">
<param name="buffer">A vertex buffer (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>. 
The vertex buffer must have been created with the VertexBuffer flag.</param>
<param name="stride">The stride value. This is the size (in bytes) of the elements that are to be used from the vertex buffer.</param>
<param name="offset">The offset value. This is the number of bytes between the first element of the vertex buffer and the first element that will be used.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.IndexBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11buffer.h" line="112">
<summary>
Stores the parameters required to get or set the current index buffer for a device.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.IndexBuffer.#ctor(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer,Microsoft.WindowsAPICodePack.DirectX.Graphics.Format,System.UInt32)" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11buffer.h" line="119">
<summary>
Constructor.
</summary>
<param name="buffer">A D3DBuffer object, that contains indices. The index buffer must have been created with the indexBuffer flag.</param>
<param name="format">A Format that specifies the format of the data in the index buffer. The only formats allowed for index buffer data are 16-bit (Format_R16_UINT) and 32-bit (Format_R32_UINT) integers.</param>
<param name="offset">Offset (in bytes) from the start of the index buffer to the first index to use.</param>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.CommandList" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11commandlist.h" line="10">
<summary>
The CommandList interface encapsulates a collection of graphics commands for play back.
<para>(Also see DirectX SDK: ID3D11CommandList)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.CommandList.ContextOptions" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11commandlist.h" line="18">
<summary>
Gets the initialization flags associated with the deferred context that created the command list.
The context flag is reserved for future use and is always 0.
<para>(Also see DirectX SDK: ID3D11CommandList::GetContextFlags)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshader.h" line="10">
<summary>
A compute-shader class manages an executable program (a compute shader) that controls the compute-shader stage.
<para>(Also see DirectX SDK: ID3D11ComputeShader)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDebug" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11debug.h" line="19">
<summary>
A debug interface controls debug settings, validates pipeline state and can only be used if the debug layer is turned on.
<para>(Also see DirectX SDK: ID3D11Debug)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDebug.FeatureMask" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11debug.h" line="27">
<summary>
Gets or sets a bitfield of flags that indicates which debug features are on or off.
<para>(Also see DirectX SDK: ID3D11Debug::GetFeatureMask)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDebug.PresentPerRenderOperationDelay" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11debug.h" line="37">
<summary>
Gets or sets the number of milliseconds to sleep after SwapChain.Present is called.
<para>(Also see DirectX SDK: ID3D11Debug::GetPresentPerRenderOpDelay)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDebug.RuntimeSwapChain" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11debug.h" line="47">
<summary>
Get or set the swap chain that the runtime will use for automatically calling SwapChain.Present.
<para>(Also see DirectX SDK: ID3D11Debug::GetSwapChain)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDebug.ValidateContext(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11debug.h" line="57">
<summary>
Check to see if the pipeline state is valid.
<para>(Also see DirectX SDK: ID3D11Debug::ValidateContext)</para>
</summary>
<param name="context">The DeviceContext, that represents a device context.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11depthstencilstate.h" line="10">
<summary>
A depth-stencil-state interface accesses depth-stencil state which sets up the depth-stencil test for the output-merger stage.
<para>(Also see DirectX SDK: ID3D11DepthStencilState)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilState.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11depthstencilstate.h" line="17">
<summary>
Get the depth-stencil state.
<para>(Also see DirectX SDK: ID3D11DepthStencilState::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.View" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11view.h" line="11">
<summary>
A view specifies the parts of a resource the pipeline can access during rendering.
<para>(Also see DirectX SDK: ID3D11View)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.View.Resource" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11view.h" line="19">
<summary>
Get the resource that is accessed through this view.
<para>(Also see DirectX SDK: ID3D11View::GetResource)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilView" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11depthstencilview.h" line="10">
<summary>
A depth-stencil-view interface accesses a texture resource during depth-stencil testing.
<para>(Also see DirectX SDK: ID3D11DepthStencilView)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilView.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11depthstencilview.h" line="18">
<summary>
Get the depth-stencil view.
<para>(Also see DirectX SDK: ID3D11DepthStencilView::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.CounterData" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11checkcounterdata.h" line="9">
<summary>
This class encapsulates the data returned by the D3DDevice.CheckCounter method.
<para>(Also see DirectX SDK: ID3D11Device.CheckCounter)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="53">
<summary>
The device interface represents a virtual Direct3D 11 adapter; it is used to perform rendering and create resources.
<para>To create a D3DDevice instance, use one of the static factory method overloads: CreateDevice() or CreateDeviceAndSwapChain().</para>
<para>(Also see DirectX SDK: ID3D11Device)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.GetCounterData(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.CounterDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="63">
<summary>
Get the type, name, units of measure, and a description of an existing counter.
<para>(Also see DirectX SDK: ID3D11Device::CheckCounter)</para>
</summary>
<param name="counterDescription">A counter description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.CounterDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.CounterDescription"/>. Specifies which counter information is to be retrieved about.</param>
<returns>A CheckCounterData object containing the values associated with the counter</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CounterInformation" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="71">
<summary>
Get a counter's information.
<para>(Also see DirectX SDK: ID3D11Device::CheckCounterInfo)</para>
</summary>
<returns>The counter information.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.ThreadingSupport" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="81">
<summary>
Gets information about the threading features that are supported by the current graphics driver.
<para>(Also see DirectX SDK: ID3D11Device::CheckFeatureSupport)</para>
</summary>
<returns>FeatureDataThreading value containing feature support for threading</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.IsDoubleSupported" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="91">
<summary>
Gets information about whether double-precision floating point is supported by the current graphics driver.
<para>(Also see DirectX SDK: ID3D11Device::CheckFeatureSupport)</para>
</summary>
<returns>True if driver supports double-precision floating point. Otherwise, returns false.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.GetFeatureDataFormatSupport(Microsoft.WindowsAPICodePack.DirectX.Graphics.Format)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="104">
<summary>
Gets information about the format features that are supported by the current graphics driver.
<para>(Also see DirectX SDK: ID3D11Device::CheckFeatureSupport)</para>
</summary>
<param name="format">The Graphics.Format value for which to check feature support.</param>
<returns>A FeatureDataFormatSupport value indicating features supported for the given format.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.GetFeatureDataFormatSupport2(Microsoft.WindowsAPICodePack.DirectX.Graphics.Format)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="112">
<summary>
Gets information about the extended format features that are supported by the current graphics driver.
<para>(Also see DirectX SDK: ID3D11Device::CheckFeatureSupport)</para>
</summary>
<param name="format">The Graphics.Format value for which to check extended feature support.</param>
<returns>A FeatureDataFormatSupport2 value indicating extended features supported for the given format.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.IsComputeShaderWithRawAndStructuredBuffersSupported" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="120">
<summary>
Gets whether or not compute shaders, along with raw and structured buffers, are supported by the driver.
<para>(Also see DirectX SDK: ID3D11Device::CheckFeatureSupport)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.GetFormatSupport(Microsoft.WindowsAPICodePack.DirectX.Graphics.Format)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="129">
<summary>
Get the support of a given format on the installed video device.
<para>(Also see DirectX SDK: ID3D11Device::CheckFormatSupport)</para>
</summary>
<param name="format">A Format enumeration that describes a format for which to check for support.</param>
<returns>A FormatSupportOptions enumeration values describing how the specified format is supported on the installed device. The values are ORed together.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.GetMultisampleQualityLevels(Microsoft.WindowsAPICodePack.DirectX.Graphics.Format,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="137">
<summary>
Get the number of quality levels available during multisampling.
<para>(Also see DirectX SDK: ID3D11Device::CheckMultisampleQualityLevels)</para>
</summary>
<param name="format">The texture format. See Format.</param>
<param name="sampleCount">The number of samples during multisampling.</param>
<returns>Number of quality levels supported by the adapter.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateBlendState(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BlendDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="146">
<summary>
Create a blend-state object that encapsules blend state for the output-merger stage.
<para>(Also see DirectX SDK: ID3D11Device::CreateBlendState)</para>
</summary>
<param name="description">A blend-state description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BlendDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BlendDescription"/>.</param>
<returns>The blend-state object created (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BlendState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BlendState"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateBuffer(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BufferDescription,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SubresourceData[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="154">
<summary>
Create a buffer (vertex buffer, index buffer, or shader-constant buffer).
<para>(Also see DirectX SDK: ID3D11Device::CreateBuffer)</para>
</summary>
<param name="description">A buffer description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BufferDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BufferDescription"/>.</param>
<param name="initialData">Initialization data (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SubresourceData"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SubresourceData"/>; Cannot be emmpty or null if the usage flag is Immutable).</param>
<returns>The buffer created (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateBuffer(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BufferDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="163">
<summary>
Create a buffer (vertex buffer, index buffer, or shader-constant buffer).
This method does not include initialization data. 
Use CreateBuffer(BufferDescription, SubresourceData) if you need to include initialization data.
<para>(Also see DirectX SDK: ID3D11Device::CreateBuffer)</para>
</summary>
<param name="description">A buffer description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BufferDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BufferDescription"/>.</param>
<returns>The buffer created (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateClassLinkage" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="173">
<summary>
TBD
<para>(Also see DirectX SDK: ID3D11Device::CreateClassLinkage)</para>
</summary>
<returns>A class-linkage object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateComputeShader(System.IntPtr,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="180">
<summary>
Create a compute shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateComputeShader)</para>
</summary>
<param name="shaderBytecode">A compiled shader.</param>
<param name="shaderBytecodeLength">Size of compiled shader code in bytes.</param>
<param name="classLinkage">A ClassLinkage, which represents class linkage interface; the value can be null.</param>
<returns>A ComputeShader object</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateComputeShader(System.IntPtr,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="190">
<summary>
Create a compute shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateComputeShader)</para>
</summary>
<param name="shaderBytecode">A compiled shader.</param>
<param name="shaderBytecodeLength">Size of compiled shader code in bytes.</param>
<returns>A ComputeShader object</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateComputeShader(System.IO.Stream,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="199">
<summary>
Create a compute shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateComputeShader)</para>
</summary>
<param name="stream">Stream to load compiled shader bytes from.</param>
<param name="classLinkage">A ClassLinkage, which represents class linkage interface; the value can be null.</param>
<returns>A ComputeShader object</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateComputeShader(System.IO.Stream)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="208">
<summary>
Create a compute shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateComputeShader)</para>
</summary>
<param name="stream">Stream to load compiled shader bytes from.</param>
<returns>A ComputeShader object</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateCounter(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.CounterDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="216">
<summary>
Create a counter object for measuring GPU performance.
<para>(Also see DirectX SDK: ID3D11Device::CreateCounter)</para>
</summary>
<param name="description">A counter description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.CounterDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.CounterDescription"/>.</param>
<returns>A counter (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DCounter"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DCounter"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDeferredContext(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="224">
<summary>
Creates a deferred context for play back of command lists.
<para>(Also see DirectX SDK: ID3D11Device::CreateDeferredContext)</para>
</summary>
<param name="contextOptions">Reserved for future use. Pass 0.</param>
<returns>A DeviceContext object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDepthStencilState(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="232">
<summary>
Create a depth-stencil state object that encapsulates depth-stencil test information for the output-merger stage.
<para>(Also see DirectX SDK: ID3D11Device::CreateDepthStencilState)</para>
</summary>
<param name="description">A depth-stencil state description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilDescription"/>.</param>
<returns>A depth-stencil state object created (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilState"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDepthStencilView(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilViewDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="240">
<summary>
Create a depth-stencil view for accessing resource data.
<para>(Also see DirectX SDK: ID3D11Device::CreateDepthStencilView)</para>
</summary>
<param name="resource">The resource that will serve as the depth-stencil surface. This resource must have been created with the DepthStencil flag.</param>
<param name="description">A depth-stencil-view description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilViewDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilViewDescription"/>.</param>
<returns>A DepthStencilView object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDepthStencilView(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="249">
<summary>
Create a depth-stencil view for accessing resource data
that accesses mipmap level 0 of the entire resource (using the format the resource was created with).
<para>(Also see DirectX SDK: ID3D11Device::CreateDepthStencilView)</para>
</summary>
<param name="resource">The resource that will serve as the depth-stencil surface. This resource must have been created with the DepthStencil flag.</param>
<returns>A DepthStencilView object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDomainShader(System.IntPtr,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="258">
<summary>
Create a domain shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateDomainShader)</para>
</summary>
<param name="shaderBytecode">A compiled shader.</param>        
<param name="shaderBytecodeLength">Size of compiled shader code in bytes.</param>
<param name="classLinkage">A class linkage object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>; the value can be null.</param>
<returns>A DomainShader object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDomainShader(System.IntPtr,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="268">
<summary>
Create a domain shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateDomainShader)</para>
</summary>
<param name="shaderBytecode">A compiled shader.</param>        
<param name="shaderBytecodeLength">Size of compiled shader code in bytes.</param>
<returns>A DomainShader object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDomainShader(System.IO.Stream,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="277">
<summary>
Create a domain shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateDomainShader)</para>
</summary>
<param name="stream">Stream to load compiled shader bytes from.</param>
<param name="classLinkage">A class linkage object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>; the value can be null.</param>
<returns>A DomainShader object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDomainShader(System.IO.Stream)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="286">
<summary>
Create a domain shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateDomainShader)</para>
</summary>
<param name="stream">Stream to load compiled shader bytes from.</param>
<returns>A DomainShader object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateGeometryShader(System.IntPtr,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="294">
<summary>
Create a geometry shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateGeometryShader)</para>
</summary>
<param name="shaderBytecode">The compiled shader.</param>
<param name="shaderBytecodeLength">Size of compiled shader code in bytes.</param>
<param name="classLinkage">A class linkage object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>; the value can be null.</param>
<returns>A GeometryShader object. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateGeometryShader(System.IntPtr,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="304">
<summary>
Create a geometry shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateGeometryShader)</para>
</summary>
<param name="shaderBytecode">The compiled shader.</param>
<param name="shaderBytecodeLength">Size of compiled shader code in bytes.</param>
<returns>A GeometryShader object. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateGeometryShaderWithStreamOutput(System.IntPtr,System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.StreamOutputDeclarationEntry},System.UInt32[],System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="313">
<summary>
Create a geometry shader that can write to streaming output buffers.
<para>(Also see DirectX SDK: ID3D11Device::CreateGeometryShaderWithStreamOutput)</para>
</summary>
<param name="shaderBytecode">The compiled shader.</param>
<param name="shaderBytecodeLength">The length in bytes of compiled shader.</param>
<param name="streamOutputDeclarations">A StreamOutputDeclarationEntry collection. ( ranges from 0 to D3D11_SO_STREAM_COUNT * D3D11_SO_OUTPUT_COMPONENT_COUNT ).</param>
<param name="bufferStrides">An array of buffer strides; each stride is the size of an element for that buffer (ranges from 0 to D3D11_SO_BUFFER_SLOT_COUNT).</param>
<param name="rasterizedStream">The index number of the stream to be sent to the rasterizer stage (ranges from 0 to D3D11_SO_STREAM_COUNT). Set to D3D11_SO_NO_RASTERIZED_STREAM if no stream is to be rasterized.</param>
<param name="classLinkage">A class linkage object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>; the value can be null.</param>
<returns>A GeometryShader interface, representing the geometry shader that was created. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateGeometryShaderWithStreamOutput(System.IntPtr,System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.StreamOutputDeclarationEntry},System.UInt32[],System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="326">
<summary>
Create a geometry shader that can write to streaming output buffers.
<para>(Also see DirectX SDK: ID3D11Device::CreateGeometryShaderWithStreamOutput)</para>
</summary>
<param name="shaderBytecode">The compiled shader.</param>
<param name="shaderBytecodeLength">The length in bytes of compiled shader.</param>
<param name="streamOutputDeclarations">A StreamOutputDeclarationEntry collection. ( ranges from 0 to D3D11_SO_STREAM_COUNT * D3D11_SO_OUTPUT_COMPONENT_COUNT ).</param>
<param name="bufferStrides">An array of buffer strides; each stride is the size of an element for that buffer (ranges from 0 to D3D11_SO_BUFFER_SLOT_COUNT).</param>
<param name="rasterizedStream">The index number of the stream to be sent to the rasterizer stage (ranges from 0 to D3D11_SO_STREAM_COUNT). Set to D3D11_SO_NO_RASTERIZED_STREAM if no stream is to be rasterized.</param>
<returns>A GeometryShader interface, representing the geometry shader that was created. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateGeometryShader(System.IO.Stream,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="338">
<summary>
Create a geometry shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateGeometryShader)</para>
</summary>
<param name="stream">Stream to load compiled shader bytes from.</param>
<param name="classLinkage">A class linkage object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>; the value can be null.</param>
<returns>A GeometryShader object. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateGeometryShader(System.IO.Stream)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="347">
<summary>
Create a geometry shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateGeometryShader)</para>
</summary>
<param name="stream">Stream to load compiled shader bytes from.</param>
<returns>A GeometryShader object. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateGeometryShaderWithStreamOutput(System.IO.Stream,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.StreamOutputDeclarationEntry},System.UInt32[],System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="355">
<summary>
Create a geometry shader that can write to streaming output buffers.
<para>(Also see DirectX SDK: ID3D11Device::CreateGeometryShaderWithStreamOutput)</para>
</summary>
<param name="shaderStream">Stream to load compiled shader bytes from.</param>
<param name="streamOutputDeclarations">A StreamOutputDeclarationEntry collection. ( ranges from 0 to D3D11_SO_STREAM_COUNT * D3D11_SO_OUTPUT_COMPONENT_COUNT ).</param>
<param name="bufferStrides">An array of buffer strides; each stride is the size of an element for that buffer (ranges from 0 to D3D11_SO_BUFFER_SLOT_COUNT).</param>
<param name="rasterizedStream">The index number of the stream to be sent to the rasterizer stage (ranges from 0 to D3D11_SO_STREAM_COUNT). Set to D3D11_SO_NO_RASTERIZED_STREAM if no stream is to be rasterized.</param>
<param name="classLinkage">A class linkage object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>; the value can be null.</param>
<returns>A GeometryShader interface, representing the geometry shader that was created. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateGeometryShaderWithStreamOutput(System.IO.Stream,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.StreamOutputDeclarationEntry},System.UInt32[],System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="367">
<summary>
Create a geometry shader that can write to streaming output buffers.
<para>(Also see DirectX SDK: ID3D11Device::CreateGeometryShaderWithStreamOutput)</para>
</summary>
<param name="shaderStream">Stream to load compiled shader bytes from.</param>
<param name="streamOutputDeclarations">A StreamOutputDeclarationEntry collection. ( ranges from 0 to D3D11_SO_STREAM_COUNT * D3D11_SO_OUTPUT_COMPONENT_COUNT ).</param>
<param name="bufferStrides">An array of buffer strides; each stride is the size of an element for that buffer (ranges from 0 to D3D11_SO_BUFFER_SLOT_COUNT).</param>
<param name="rasterizedStream">The index number of the stream to be sent to the rasterizer stage (ranges from 0 to D3D11_SO_STREAM_COUNT). Set to D3D11_SO_NO_RASTERIZED_STREAM if no stream is to be rasterized.</param>
<returns>A GeometryShader interface, representing the geometry shader that was created. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateHullShader(System.IntPtr,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="378">
<summary>
Create a hull shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateHullShader)</para>
</summary>
<param name="shaderBytecode">A compiled shader.</param>        
<param name="shaderBytecodeLength">Size of compiled shader code in bytes.</param>
<param name="classLinkage">A class linkage object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>; the value can be null.</param>
<returns>A hull-shader object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateHullShader(System.IntPtr,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="388">
<summary>
Create a hull shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateHullShader)</para>
</summary>
<param name="shaderBytecode">A compiled shader.</param>        
<param name="shaderBytecodeLength">Size of compiled shader code in bytes.</param>
<returns>A hull-shader object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateHullShader(System.IO.Stream,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="398">
<summary>
Create a hull shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateHullShader)</para>
</summary>
<param name="stream">Stream to load compiled shader bytes from.</param>
<param name="classLinkage">A class linkage object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>; the value can be null.</param>
<returns>A hull-shader object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateHullShader(System.IO.Stream)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="407">
<summary>
Create a hull shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateHullShader)</para>
</summary>
<param name="stream">Stream to load compiled shader bytes from.</param>
<returns>A hull-shader object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateInputLayout(System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputElementDescription},System.IntPtr,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="415">
<summary>
Create an input-layout object to describe the input-buffer data for the input-assembler stage.
<para>(Also see DirectX SDK: ID3D11Device::CreateInputLayout)</para>
</summary>
<param name="inputElementDescriptions">A collection of the input-assembler stage input data types; each type is described by an element description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputElementDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputElementDescription"/>.</param>
<param name="shaderBytecodeWithInputSignature">The compiled shader.  The compiled shader code contains a input signature which is validated against the array of elements.</param>        
<param name="shaderBytecodeWithInputSignatureSize">Size of compiled shader code in bytes.</param>
<returns>The input-layout object created (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputLayout"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputLayout"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateInputLayout(System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputElementDescription},System.IO.Stream)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="426">
<summary>
Create an input-layout object to describe the input-buffer data for the input-assembler stage.
<para>(Also see DirectX SDK: ID3D11Device::CreateInputLayout)</para>
</summary>
<param name="stream">Stream to load compiled shader bytes from.</param>
<param name="inputElementDescriptions">A collection of the input-assembler stage input data types; each type is described by an element description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputElementDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputElementDescription"/>.</param>
<returns>The input-layout object created (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputLayout"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputLayout"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreatePixelShader(System.IntPtr,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="435">
<summary>
Create a pixel shader.
<para>(Also see DirectX SDK: ID3D11Device::CreatePixelShader)</para>
</summary>
<param name="shaderBytecode">The compiled shader.</param>
<param name="shaderBytecodeLength">The compiled shader.  The compiled shader code contains a input signature which is validated against the array of elements.</param>        
<param name="classLinkage">(optional) A class linkage interface (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>; the value can be null.</param>
<returns>A PixelShader object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreatePixelShader(System.IntPtr,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="445">
<summary>
Create a pixel shader.
<para>(Also see DirectX SDK: ID3D11Device::CreatePixelShader)</para>
</summary>
<param name="shaderBytecode">The compiled shader.</param>
<param name="shaderBytecodeLength">The compiled shader.  The compiled shader code contains a input signature which is validated against the array of elements.</param>        
<returns>A PixelShader object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreatePixelShader(System.IO.Stream,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="455">
<summary>
Create a pixel shader.
<para>(Also see DirectX SDK: ID3D11Device::CreatePixelShader)</para>
</summary>
<param name="stream">Stream to load compiled shader bytes from.</param>
<param name="classLinkage">(optional) A class linkage interface (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>; the value can be null.</param>
<returns>A PixelShader object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreatePixelShader(System.IO.Stream)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="464">
<summary>
Create a pixel shader.
<para>(Also see DirectX SDK: ID3D11Device::CreatePixelShader)</para>
</summary>
<param name="stream">Stream to load compiled shader bytes from.</param>
<returns>A PixelShader object.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreatePredicate(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.QueryDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="472">
<summary>
Creates a predicate.
<para>(Also see DirectX SDK: ID3D11Device::CreatePredicate)</para>
</summary>
<param name="predicateDescription">A query description where the type of query must be a StreamOutputOverflowPredicate or OcclusionPredicate (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.QueryDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.QueryDescription"/>.</param>
<returns>A predicate object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DPredicate"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DPredicate"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateQuery(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.QueryDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="480">
<summary>
This class encapsulates methods for querying information from the GPU.
<para>(Also see DirectX SDK: ID3D11Device::CreateQuery)</para>
</summary>
<param name="description">A query description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.QueryDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.QueryDescription"/>.</param>
<returns>The query object created (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DQuery"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DQuery"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateRasterizerState(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RasterizerDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="488">
<summary>
Create a rasterizer state object that tells the rasterizer stage how to behave.
<para>(Also see DirectX SDK: ID3D11Device::CreateRasterizerState)</para>
</summary>
<param name="description">A rasterizer state description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RasterizerDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RasterizerDescription"/>.</param>
<returns>A rasterizer state object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RasterizerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RasterizerState"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateRenderTargetView(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RenderTargetViewDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="496">
<summary>
Create a render-target view for accessing resource data.
<para>(Also see DirectX SDK: ID3D11Device::CreateRenderTargetView)</para>
</summary>
<param name="resource">A D3DResource which represents a render target. This resource must have been created with the RenderTarget flag.</param>
<param name="description">A RenderTargetViewDescription which represents a render-target-view description. Set this parameter to NULL to create a view that accesses all of the subresources in mipmap level 0.</param>
<returns>A RenderTargetView. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateRenderTargetView(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="505">
<summary>
Create a render-target view for accessing resource data in mipmap level 0.
<para>(Also see DirectX SDK: ID3D11Device::CreateRenderTargetView)</para>
</summary>
<param name="resource">A D3DResource which represents a render target. This resource must have been created with the RenderTarget flag.</param>
<returns>A RenderTargetView. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateSamplerState(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="513">
<summary>
Create a sampler-state object that encapsulates sampling information for a texture.
<para>(Also see DirectX SDK: ID3D11Device::CreateSamplerState)</para>
</summary>
<param name="description">A sampler state description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerDescription"/>.</param>
<returns>The sampler state object created (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateShaderResourceView(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderResourceViewDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="521">
<summary>
Create a shader-resource view for accessing data in a resource.
<para>(Also see DirectX SDK: ID3D11Device::CreateShaderResourceView)</para>
</summary>
<param name="resource">The resource that will serve as input to a shader. This resource must have been created with the ShaderResource flag.</param>
<param name="description">A shader-resource-view description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderResourceViewDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderResourceViewDescription"/>. Set this parameter to NULL to create a view that accesses the entire resource (using the format the resource was created with).</param>
<returns>A ShaderResourceView. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateShaderResourceView(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="530">
<summary>
Create a shader-resource view for accessing data in a resource. It accesses the entire resource (using the format the resource was created with).
<para>(Also see DirectX SDK: ID3D11Device::CreateShaderResourceView)</para>
</summary>
<param name="resource">The resource that will serve as input to a shader. This resource must have been created with the ShaderResource flag.</param>
<returns>A ShaderResourceView. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateTexture1D(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture1DDescription,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SubresourceData[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="538">
<summary>
Create an array of 1D textures.
<para>(Also see DirectX SDK: ID3D11Device::CreateTexture1D)</para>
</summary>
<param name="description">A 1D texture description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture1DDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture1DDescription"/>. To create a typeless resource that can be interpreted at runtime into different, compatible formats, specify a typeless format in the texture description. To generate mipmap levels automatically, set the number of mipmap levels to 0.</param>
<param name="initialData">Subresource descriptions (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SubresourceData"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SubresourceData"/>; one for each subresource. Applications may not specify NULL for initialData when creating IMMUTABLE resources (see Usage). If the resource is multisampled, pInitialData must be NULL because multisampled resources cannot be initialized with data when they are created.</param>
<returns>The created texture (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture1D"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture1D"/>. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateTexture2D(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture2DDescription,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SubresourceData[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="547">
<summary>
Create an array of 2D textures.
<para>(Also see DirectX SDK: ID3D11Device::CreateTexture2D)</para>
</summary>
<param name="description">A 2D texture description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture2DDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture2DDescription"/>. To create a typeless resource that can be interpreted at runtime into different, compatible formats, specify a typeless format in the texture description. To generate mipmap levels automatically, set the number of mipmap levels to 0.</param>
<param name="initialData">Subresource descriptions (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SubresourceData"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SubresourceData"/>; one for each subresource. Applications may not specify NULL for pInitialData when creating IMMUTABLE resources (see Usage). If the resource is multisampled, pInitialData must be NULL because multisampled resources cannot be initialized with data when they are created.</param>
<returns>The created texture (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture2D"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture2D"/>. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateTexture3D(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture3DDescription,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SubresourceData[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="556">
<summary>
Create a single 3D texture.
<para>(Also see DirectX SDK: ID3D11Device::CreateTexture3D)</para>
</summary>
<param name="description">A 3D texture description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture3DDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture3DDescription"/>. To create a typeless resource that can be interpreted at runtime into different, compatible formats, specify a typeless format in the texture description. To generate mipmap levels automatically, set the number of mipmap levels to 0.</param>
<param name="initialData">Subresource descriptions (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SubresourceData"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SubresourceData"/>; one for each subresource. Applications may not specify NULL for pInitialData when creating IMMUTABLE resources (see Usage). If the resource is multisampled, pInitialData must be NULL because multisampled resources cannot be initialized with data when they are created.</param>
<returns>Address of the created texture (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture3D"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture3D"/>. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateTexture1D(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture1DDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="565">
<summary>
Create an array of 1D textures.
<para>(Also see DirectX SDK: ID3D11Device::CreateTexture1D)</para>
</summary>
<param name="description">A 1D texture description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture1DDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture1DDescription"/>. To create a typeless resource that can be interpreted at runtime into different, compatible formats, specify a typeless format in the texture description. To generate mipmap levels automatically, set the number of mipmap levels to 0.</param>
<returns>Address of the created texture (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture1D"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture1D"/>. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateTexture2D(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture2DDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="573">
<summary>
Create an array of 2D textures.
<para>(Also see DirectX SDK: ID3D11Device::CreateTexture2D)</para>
</summary>
<param name="description">A 2D texture description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture2DDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture2DDescription"/>. To create a typeless resource that can be interpreted at runtime into different, compatible formats, specify a typeless format in the texture description. To generate mipmap levels automatically, set the number of mipmap levels to 0.</param>
<returns>The created texture (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture2D"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture2D"/>. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateTexture3D(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture3DDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="581">
<summary>
Create a single 3D texture.
<para>(Also see DirectX SDK: ID3D11Device::CreateTexture3D)</para>
</summary>
<param name="description">A 3D texture description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture3DDescription"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture3DDescription"/>. To create a typeless resource that can be interpreted at runtime into different, compatible formats, specify a typeless format in the texture description. To generate mipmap levels automatically, set the number of mipmap levels to 0.</param>
<returns>Address of the created texture (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture3D"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture3D"/>. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateUnorderedAccessView(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.UnorderedAccessViewDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="589">
<summary>
Create a view for accessing an unordered access resource.
<para>(Also see DirectX SDK: ID3D11Device::CreateUnorderedAccessView)</para>
</summary>
<param name="resource">An D3DResource that represents a resources that will be serve as an input to a shader.</param>
<param name="description">An UnorderedAccessViewDescription that represents a shader-resource-view description.</param>
<returns>An UnorderedAccessView object that represents an unordered access view. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateUnorderedAccessView(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="598">
<summary>
Create a view for accessing an unordered access resource.
The view created accesses the entire resource (using the format the resource was created with).
<para>(Also see DirectX SDK: ID3D11Device::CreateUnorderedAccessView)</para>
</summary>
<param name="resource">An D3DResource that represents a resources that will be serve as an input to a shader.</param>
<returns>An UnorderedAccessView object that represents an unordered access view. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateVertexShader(System.IntPtr,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="607">
<summary>
Create a vertex-shader object from a compiled shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateVertexShader)</para>
</summary>
<param name="shaderBytecode">The compiled shader.</param>
<param name="shaderBytecodeLength">The compiled shader length in bytes.  The compiled shader code contains a input signature which is validated against the array of elements.</param>        
<param name="classLinkage">  A class linkage interface (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>; the value can be null.</param>
<returns>A VertexShader object. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateVertexShader(System.IntPtr,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="617">
<summary>
Create a vertex-shader object from a compiled shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateVertexShader)</para>
</summary>
<param name="shaderBytecode">The compiled shader length in bytes.</param>
<param name="shaderBytecodeLength">The compiled shader.  The compiled shader code contains a input signature which is validated against the array of elements.</param>        
<returns>A VertexShader object. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateVertexShader(System.IO.Stream,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="626">
<summary>
Create a vertex-shader object from a compiled shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateVertexShader)</para>
</summary>
<param name="stream">Stream to load compiled shader bytes from.</param>
<param name="classLinkage">  A class linkage interface (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassLinkage"/>; the value can be null.</param>
<returns>A VertexShader object. </returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateVertexShader(System.IO.Stream)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="635">
<summary>
Create a vertex-shader object from a compiled shader.
<para>(Also see DirectX SDK: ID3D11Device::CreateVertexShader)</para>
</summary>
<returns>A VertexShader object. </returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDeviceOptions" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="642">
<summary>
Get the flags used during the call to create the device.
<para>(Also see DirectX SDK: ID3D11Device::GetCreationFlags)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.DeviceRemovedReason" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="651">
<summary>
Get the reason why the device was removed.
<para>(Also see DirectX SDK: ID3D11Device::GetDeviceRemovedReason)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.ExceptionMode" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="660">
<summary>
Gets or Sets the exception-mode flags.
<para>(Also see DirectX SDK: ID3D11Device::GetExceptionMode, ID3D11Device::SetExceptionMode)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.ImmediateContext" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="670">
<summary>
Gets an immediate context which can record command lists.
<para>(Also see DirectX SDK: ID3D11Device::GetImmediateContext)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.InfoQueue" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="679">
<summary>
Gets an information queue object that can retrieve, store and filter debug messages.
</summary>
<returns>An InfoQueue (information queue) object.</returns>
<remarks>
Can only be obtained if the device was created using <see cref="F:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.CreateDeviceOptions.Debug"/> flag. Otherwise, throws an exception.
</remarks>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.SwitchToRef" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="691">
<summary>
Gets a switch-to-reference object that enables an application to switch between a hardware and software device.
</summary>
<returns>A SwitchToRef (switch-to-reference) object.</returns>
<remarks>
Can only be obtained if the device was created using CreateDeviceOptions.SwitchToRef flag. Otherwise, throws an exception.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.OpenSharedResource``1(System.IntPtr)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="703">
<summary>
Give a device access to a shared resource created on a different device.
<para>(Also see DirectX SDK: ID3D11Device::OpenSharedResource)</para>
</summary>
<param name="resource">The resource handle.</param>
<typeparam name="T">The type of this shared resource. Must be <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Graphics.GraphicsObject"/></typeparam>
<returns>The requested resource using the given type.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.DeviceFeatureLevel" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="713">
<summary>
Gets the feature level of the hardware device.
<para>(Also see DirectX SDK: ID3D10Device1::GetFeatureLevel)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.GraphicsDevice" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="722">
<summary>
Queries this device as a Graphics Device object.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDeviceAndSwapChain(System.IntPtr)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="741">
<summary>
Create a Direct3D 11.0 device and a swap chain using the default hardware adapter 
and the most common settings.
<para>(Also see DirectX SDK: D3D11CreateDeviceAndSwapChain() function)</para>
</summary>
<param name="windowHandle">The window handle to the output window.</param>
<returns>The created Direct3D 11.0 Device</returns>
<remarks>
If DirectX SDK environment variable is found, and the build is a Debug one,
this method will attempt to use <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDeviceOptions"/>.Debug flag. This should allow 
using the InfoQueue object.
Retrieve the swap chain from the SwapChain property.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDeviceAndSwapChain(Microsoft.WindowsAPICodePack.DirectX.Graphics.Adapter,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DriverType,System.String,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.CreateDeviceOptions,Microsoft.WindowsAPICodePack.DirectX.Direct3D.FeatureLevel[],Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChainDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="756">
<summary>
Create a Direct3D 11.0 device and a swap chain.
<para>(Also see DirectX SDK: D3D11CreateDeviceAndSwapChain() function)</para>
</summary>
<param name="adapter">An Adapter object. Can be null.</param>
<param name="driverType">The type of driver for the device.</param>
<param name="softwareRasterizerLibrary">A path to the DLL that implements a software rasterizer. Must be NULL if driverType is non-software.</param>
<param name="options">Device creation flags that enable API layers. These flags can be bitwise OR'd together.</param>
<param name="featureLevels">An array of FeatureLevels, which determine the order of feature levels to attempt to create. 
If set to null, the following array of feature levels will be used: 
<code>
   {
       FeatureLevel_11_0,
       FeatureLevel_10_1,
       FeatureLevel_10_0,
       FeatureLevel_9_3,
       FeatureLevel_9_2,
       FeatureLevel_9_1,
   };
</code>
</param>
<param name="swapChainDescription">Description of the swap chain.</param>
<returns>The created Direct3D 11.0 Device</returns>
<remarks>By default, all Direct3D 11 calls are handled in a thread-safe way. 
By creating a single-threaded device (using <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDeviceOptions"/>.SingleThreaded), 
you disable thread-safe calling.
Retrieve the swap chain from the SwapChain property.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDevice" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="792">
<summary>
Create a Direct3D 11.0 device using the default hardware adapter and the most common settings.
<para>(Also see DirectX SDK: D3D11CreateDevice() function)</para>
</summary>
<returns>The created Direct3D 11.0 Device</returns>
<remarks>
If DirectX SDK environment variable is found, and the build is a Debug one,
this method will attempt to use <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDeviceOptions"/>.Debug flag. This should allow 
using the InfoQueue object.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDevice(Microsoft.WindowsAPICodePack.DirectX.Graphics.Adapter,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DriverType,System.String,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.CreateDeviceOptions,Microsoft.WindowsAPICodePack.DirectX.Direct3D.FeatureLevel[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11device.h" line="804">
<summary>
Create a Direct3D 11.0 device. 
<para>(Also see DirectX SDK: D3D11CreateDevice() function)</para>
</summary>
<param name="adapter">An Adapter object. Can be null.</param>
<param name="driverType">The type of driver for the device.</param>
<param name="softwareRasterizerLibrary">A path for a DLL that implements a software rasterizer. Must be NULL if driverType is non-software.</param>
<param name="options">Device creation flags that enable API layers. These flags can be bitwise OR'd together.</param>
<param name="featureLevels">An array of FeatureLevels, which determine the order of feature levels to attempt to create. 
If set to null, the following array of feature levels will be used: 
<code>
   {
       FeatureLevel_11_0,
       FeatureLevel_10_1,
       FeatureLevel_10_0,
       FeatureLevel_9_3,
       FeatureLevel_9_2,
       FeatureLevel_9_1,
   };
</code>
</param>
<returns>The created Direct3D 11.0 Device</returns>
<remarks>By default, all Direct3D 11 calls are handled in a thread-safe way. 
By creating a single-threaded device (using <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DDevice.CreateDeviceOptions"/>.SingleThreaded), 
you disable thread-safe calling.
</remarks>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="47">
<summary>
The DeviceContext interface represents a device context which generates rendering commands.
<para>(Also see DirectX SDK: ID3D11DeviceContext)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.Begin(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Asynchronous)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="56">
<summary>
Mark the beginning of a series of commands.
<para>(Also see DirectX SDK: ID3D11DeviceContext::Begin)</para>
</summary>
<param name="asyncData">A Asynchronous object.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.ClearDepthStencilView(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilView,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClearOptions,System.Single,System.Byte)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="63">
<summary>
Clears the depth-stencil resource.
<para>(Also see DirectX SDK: ID3D11DeviceContext::ClearDepthStencilView)</para>
</summary>
<param name="depthStencilView">Pointer to the depth stencil to be cleared.</param>
<param name="clearOptions">Identify the type of data to clear (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClearOptions"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClearOptions"/>.</param>
<param name="depth">Clear the depth buffer with this value. This value will be clamped between 0 and 1.</param>
<param name="stencil">Clear the stencil buffer with this value.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.ClearRenderTargetView(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RenderTargetView,Microsoft.WindowsAPICodePack.DirectX.Graphics.ColorRgba)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="73">
<summary>
Set all the elements in a render target to one value.
<para>(Also see DirectX SDK: ID3D11DeviceContext::ClearRenderTargetView)</para>
</summary>
<param name="renderTargetView">Pointer to the rendertarget.</param>
<param name="colorRgba">The color to fill the render target with.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.ClearState" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="81">
<summary>
Restore all default settings.
<para>(Also see DirectX SDK: ID3D11DeviceContext::ClearState)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.ClearUnorderedAccessViewFloat(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.UnorderedAccessView,System.Single[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="87">
<summary>
Clears an unordered access resource with a float value.
<para>(Also see DirectX SDK: ID3D11DeviceContext::ClearUnorderedAccessViewFloat)</para>
</summary>
<param name="unorderedAccessView">Pointer to the Unordered Access View.</param>
<param name="values">A 4-component array that contains the values.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.ClearUnorderedAccessViewUInt32(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.UnorderedAccessView,System.UInt32[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="95">
<summary>
Clears an unordered access resource with bit-precise values.
<para>(Also see DirectX SDK: ID3D11DeviceContext::ClearUnorderedAccessViewUint)</para>
</summary>
<param name="unorderedAccessView">Pointer to the Unordered Access View.</param>
<param name="values">A 4-component array that contains the values.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.CopyResource(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="103">
<summary>
Copy the entire contents of the source resource to the destination resource using the GPU.
<para>(Also see DirectX SDK: ID3D11DeviceContext::CopyResource)</para>
</summary>
<param name="destinationResource">The destination resource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>.</param>
<param name="sourceResource">The source resource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.CopySubresourceRegion(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,System.UInt32,System.UInt32,System.UInt32,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Box)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="111">
<summary>
Copy a region from a source resource to a destination resource.
<para>(Also see DirectX SDK: ID3D11DeviceContext::CopySubresourceRegion)</para>
</summary>
<param name="destinationResource">The destination resource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>.</param>
<param name="destinationSubresource">Destination subresource index.</param>
<param name="destinationX">The x offset between the source box location and the destination location.</param>
<param name="destinationY">The y offset between the source box location and the destination location. For a 1D subresource, this must be zero.</param>
<param name="destinationZ">The z offset between the source box location and the destination location. For a 1D or 2D subresource, this must be zero.</param>
<param name="sourceResource">The source resource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>.</param>
<param name="sourceSubresource">Source subresource index.</param>
<param name="sourceBox">A 3D box (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Box"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Box"/> that defines the source subresources that can be copied. The box must fit within the source resource.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.CopySubresourceRegion(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,System.UInt32,System.UInt32,System.UInt32,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="125">
<summary>
Copy a region from a source resource to a destination resource.
Because the source box is not defined by this function, the entire source subresource is copied. 
<para>(Also see DirectX SDK: ID3D11DeviceContext::CopySubresourceRegion)</para>
</summary>
<param name="destinationResource">The destination resource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>.</param>
<param name="destinationSubresource">Destination subresource index.</param>
<param name="destinationX">The x offset between the source box location and the destination location.</param>
<param name="destinationY">The y offset between the source box location and the destination location. For a 1D subresource, this must be zero.</param>
<param name="destinationZ">The z offset between the source box location and the destination location. For a 1D or 2D subresource, this must be zero.</param>
<param name="sourceResource">The source resource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>.</param>
<param name="sourceSubresource">Source subresource index.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.Dispatch(System.UInt32,System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="139">
<summary>
Execute a command list from a thread group.
<para>(Also see DirectX SDK: ID3D11DeviceContext::Dispatch)</para>
</summary>
<param name="threadGroupCountX">The index of the thread in the x direction.</param>
<param name="threadGroupCountY">The index of the thread in the y direction.</param>
<param name="threadGroupCountZ">The index of the thread in the z direction.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.DispatchIndirect(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="148">
<summary>
Execute a command list to draw GPU-generated primitives over one of more thread groups.
<para>(Also see DirectX SDK: ID3D11DeviceContext::DispatchIndirect)</para>
</summary>
<param name="bufferForArgs">A D3DBuffer, which must be loaded with data that matches the argument list for DeviceContext.Dispatch.</param>
<param name="alignedOffsetForArgs">A byte-aligned offset between the start of the buffer and the arguments.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.Draw(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="156">
<summary>
Draw non-indexed, non-instanced primitives.
<para>(Also see DirectX SDK: ID3D11DeviceContext::Draw)</para>
</summary>
<param name="vertexCount">Number of vertices to draw.</param>
<param name="startVertexLocation">Index of the first vertex, which is usually an offset in a vertex buffer; it could also be used as the first vertex id generated for a shader parameter marked with the SV_TargetId system-value semantic.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.DrawAuto" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="164">
<summary>
Draw geometry of an unknown size.
<para>(Also see DirectX SDK: ID3D11DeviceContext::DrawAuto)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.DrawIndexed(System.UInt32,System.UInt32,System.Int32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="170">
<summary>
Draw indexed, non-instanced primitives.
<para>(Also see DirectX SDK: ID3D11DeviceContext::DrawIndexed)</para>
</summary>
<param name="indexCount">Number of indices to draw.</param>
<param name="startIndexLocation">The location of the first index read by the GPU from the index buffer.</param>
<param name="baseVertexLocation">A value added to each index before reading a vertex from the vertex buffer.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.DrawIndexedInstanced(System.UInt32,System.UInt32,System.UInt32,System.Int32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="179">
<summary>
Draw indexed, instanced primitives.
<para>(Also see DirectX SDK: ID3D11DeviceContext::DrawIndexedInstanced)</para>
</summary>
<param name="indexCountPerInstance">Number of indices read from the index buffer for each instance.</param>
<param name="instanceCount">Number of instances to draw.</param>
<param name="startIndexLocation">The location of the first index read by the GPU from the index buffer.</param>
<param name="baseVertexLocation">A value added to each index before reading a vertex from the vertex buffer.</param>
<param name="startInstanceLocation">A value added to each index before reading per-instance data from a vertex buffer.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.DrawIndexedInstancedIndirect(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="190">
<summary>
Draw indexed, instanced, GPU-generated primitives.
<para>(Also see DirectX SDK: ID3D11DeviceContext::DrawIndexedInstancedIndirect)</para>
</summary>
<param name="bufferForArgs">A pointer to a <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>, which is a buffer containing the GPU generated primitives.</param>
<param name="offset">Offset into bufferForArgs to the start of the GPU-generated primitives</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.DrawInstanced(System.UInt32,System.UInt32,System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="198">
<summary>
Draw non-indexed, instanced primitives.
<para>(Also see DirectX SDK: ID3D11DeviceContext::DrawInstanced)</para>
</summary>
<param name="vertexCountPerInstance">Number of vertices to draw.</param>
<param name="instanceCount">Number of instances to draw.</param>
<param name="startVertexLocation">Index of the first vertex.</param>
<param name="startInstanceLocation">A value added to each index before reading per-instance data from a vertex buffer.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.DrawInstancedIndirect(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="208">
<summary>
Draw instances, GPU-generated primitives
<para>(Also see DirectX SDK: ID3D11DeviceContext::DrawInstancedIndirect)</para>
</summary>
<param name="bufferForArgs">A pointer to a <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>, which is a buffer containing the GPU-generated primitives</param>
<param name="offset">Offset in bufferForArgs to the start of the GPU-generated primitives</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.End(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Asynchronous)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="216">
<summary>
Mark the end of a series of commands.
<para>(Also see DirectX SDK: ID3D11DeviceContext::End)</para>
</summary>
<param name="async">An Asynchronous object.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.ExecuteCommandList(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.CommandList,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="223">
<summary>
Queues commands from a command list onto a device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::ExecuteCommandList)</para>
</summary>
<param name="commandList">A CommandList interface that encapsulates a command list.</param>
<param name="restoreContextState">A Boolean flag that determines whether the immediate context state is saved (prior) and restored (after) the execution of a command list. Use TRUE to indicate that the runtime needs to save and restore the state, which will cause lower performance. Use FALSE to indicate that no state shall be saved or restored, which causes the immediate context to return to its default state after the command list executes.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.FinishCommandList(System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="231">
<summary>
Create a command list and record graphics commands into it.
<para>(Also see DirectX SDK: ID3D11DeviceContext::FinishCommandList)</para>
</summary>
<param name="restoreDeferredContextState">A Boolean flag that determines whether the immediate context state is saved (prior) and restored (after) the execution of a command list. Use TRUE to indicate that the runtime needs to save and restore the state, which will cause lower performance. Use FALSE to indicate that no state shall be saved or restored, which causes the immediate context to return to its default state after the command list executes.</param>
<returns>
A CommandList instance initialized with the recorded command list information.
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.Flush" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="241">
<summary>
Send queued-up commands in the command buffer to the GPU.
<para>(Also see DirectX SDK: ID3D11DeviceContext::Flush)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.GenerateMips(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderResourceView)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="247">
<summary>
Generate mipmaps for the given shader resource.
<para>(Also see DirectX SDK: ID3D11DeviceContext::GenerateMips)</para>
</summary>
<param name="shaderResourceView">An ShaderResourceView interface that represents the shader resource.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.ContextOptions" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="254">
<summary>
Gets the initialization flags associated with the current deferred context.
<para>(Also see DirectX SDK: ID3D11DeviceContext::GetContextFlags)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.GetData(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Asynchronous,System.IntPtr,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.AsyncGetDataOptions)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="263">
<summary>
Get data from the GPU asynchronously.
<para>(Also see DirectX SDK: ID3D11DeviceContext::GetData)</para>
</summary>
<param name="asyncData">A Asynchronous object.</param>
<param name="data">Address of memory that will receive the data. If NULL, GetData will be used only to check status. The type of data output depends on the type of asynchronous object. See Remarks.</param>
<param name="dataSize">Size of the data to retrieve or 0. Must be 0 when pData is NULL.</param>
<param name="options">Optional flags. Can be 0 or any combination of the flags enumerated by AsyncGetDataOptions.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.Predication" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="273">
<summary>
Get the rendering predicate state.
<para>(Also see DirectX SDK: ID3D11DeviceContext::GetPredication)</para>
</summary>
<param name="outPredicate">Address of a predicate (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DPredicate"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DPredicate"/>. Value stored here will be NULL upon device creation.</param>
<param name="outPredicateValue">Address of a boolean to fill with the predicate comparison value. FALSE upon device creation.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.GetResourceMinimumLevelOfDetail(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="286">
<summary>
Gets the minimum level-of-detail (LOD).
<para>(Also see DirectX SDK: ID3D11DeviceContext::GetResourceMinLOD)</para>
</summary>
<param name="resource">A D3DResource which represents the resource.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.DeviceContextType" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="296">
<summary>
Gets the type of device context.
<para>(Also see DirectX SDK: ID3D11DeviceContext::GetType)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.Map(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Map,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MapOptions)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="305">
<summary>
Get the data contained in a subresource, and deny the GPU access to that subresource.
<para>(Also see DirectX SDK: ID3D11DeviceContext::Map)</para>
</summary>
<param name="resource">A D3DResource object.</param>
<param name="subresource">Index number of the subresource.</param>
<param name="mapType">Specifies the CPU's read and write permissions for a resource. For possible values, see Map.</param>
<param name="mapOptions">Flag that specifies what the CPU should do when the GPU is busy. This flag is optional.</param>
<returns>The mapped subresource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MappedSubresource"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MappedSubresource"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.ResolveSubresource(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Graphics.Format)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="316">
<summary>
Copy a multisampled resource into a non-multisampled resource.
<para>(Also see DirectX SDK: ID3D11DeviceContext::ResolveSubresource)</para>
</summary>
<param name="destinationResource">Destination resource. Must be a created with the Default flag and be single-sampled. See D3DResource.</param>
<param name="destinationSubresource">A zero-based index, that identifies the destination subresource. Use D3D11CalcSubresource to calculate the index.</param>
<param name="sourceResource">Source resource. Must be multisampled.</param>
<param name="sourceSubresource">&gt;The source subresource of the source resource.</param>
<param name="format">A Format that indicates how the multisampled resource will be resolved to a single-sampled resource.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.SetPredication(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DPredicate,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="327">
<summary>
Set a rendering predicate.
<para>(Also see DirectX SDK: ID3D11DeviceContext::SetPredication)</para>
</summary>
<param name="predicate">A predicate (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DPredicate"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DPredicate"/>. A NULL value indicates "no" predication; in this case, the value of PredicateValue is irrelevent but will be preserved for DeviceContext.GetPredication.</param>
<param name="predicateValue">If TRUE, rendering will be affected by when the predicate's conditions are met. If FALSE, rendering will be affected when the conditions are not met.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.SetResourceMinimumLevelOfDetail(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,System.Single)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="335">
<summary>
Sets the minimum level-of-detail (LOD).
<para>(Also see DirectX SDK: ID3D11DeviceContext::SetResourceMinLOD)</para>
</summary>
<param name="resource">A D3DResource which represents the resource.</param>
<param name="minimum">The level-of-detail, which ranges between 0 and 1.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.Unmap(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="343">
<summary>
Invalidate the resource and re-enable the GPU's access to that resource.
<para>(Also see DirectX SDK: ID3D11DeviceContext::Unmap)</para>
</summary>
<param name="resource">A D3DResource object.</param>
<param name="subresource">A subresource to be unmapped.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.UpdateSubresource(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,System.UInt32,System.IntPtr,System.UInt32,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Box)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="351">
<summary>
The CPU copies data from memory to a subresource created in non-mappable memory.
<para>(Also see DirectX SDK: ID3D11DeviceContext::UpdateSubresource)</para>
</summary>
<param name="destinationResource">The destination resource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>.</param>
<param name="destinationSubresource">A zero-based index, that identifies the destination subresource. See D3D11CalcSubresource for more details.</param>
<param name="destinationBox">A box that defines the portion of the destination subresource to copy the resource data into. Coordinates are in bytes for buffers and in texels for textures.  The dimensions of the source must fit the destination (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Box"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Box"/>.</param>
<param name="sourceData">The source data in memory.</param>
<param name="sourceRowPitch">The size of one row of the source data.</param>
<param name="sourceDepthPitch">The size of one depth slice of source data.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.UpdateSubresource(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource,System.UInt32,System.IntPtr,System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="363">
<summary>
The CPU copies data from memory to a subresource created in non-mappable memory.
A destination box is not defined by this method, so the data is written to the destination subresource with no offset.
<para>(Also see DirectX SDK: ID3D11DeviceContext::UpdateSubresource)</para>
</summary>
<param name="destinationResource">The destination resource (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DResource"/>.</param>
<param name="destinationSubresource">A zero-based index, that identifies the destination subresource. See D3D11CalcSubresource for more details.</param>
<param name="sourceData">The source data in memory.</param>
<param name="sourceRowPitch">The size of one row of the source data.</param>
<param name="sourceDepthPitch">The size of one depth slice of source data.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.CS" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="375">
<summary>
Get the associated compute shader pipelines tage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.DS" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="383">
<summary>
Get the associated domain shader pipeline stage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.GS" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="391">
<summary>
Get the associated geometry shader pipeline stage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.HS" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="399">
<summary>
Get the associated hull shader pipeline stage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.IA" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="407">
<summary>
Get the associated input assembler pipeline stage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.OM" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="415">
<summary>
Get the associated output merger pipeline stage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.PS" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="423">
<summary>
Get the associated pixel shader pipeline stage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.RS" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="431">
<summary>
Get the associated rasterizer pipeline stage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.SO" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="439">
<summary>
Get the associated stream output pipeline stage object.
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DeviceContext.VS" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11devicecontext.h" line="447">
<summary>
Get the associated vertex shader pipeline stage object.
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11domainshader.h" line="10">
<summary>
A domain-shader class manages an executable program (a domain shader) that controls the domain-shader stage.
<para>(Also see DirectX SDK: ID3D11DomainShader)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11geometryshader.h" line="10">
<summary>
A geometry-shader class manages an executable program (a geometry shader) that controls the geometry-shader stage.
<para>(Also see DirectX SDK: ID3D11GeometryShader)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11hullshader.h" line="10">
<summary>
A hull-shader class manages an executable program (a hull shader) that controls the hull-shader stage.
<para>(Also see DirectX SDK: ID3D11HullShader)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputLayout" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11inputlayout.h" line="10">
<summary>
An input-layout interface accesses the input data for the input-assembler stage.
<para>(Also see DirectX SDK: ID3D11InputLayout)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11pixelshader.h" line="10">
<summary>
A pixel-shader class manages an executable program (a pixel shader) that controls the pixel-shader stage.
<para>(Also see DirectX SDK: ID3D11PixelShader)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RasterizerState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11rasterizerstate.h" line="10">
<summary>
A rasterizer-state interface accesses rasterizer state for the rasterizer stage.
<para>(Also see DirectX SDK: ID3D11RasterizerState)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RasterizerState.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11rasterizerstate.h" line="18">
<summary>
Get the properties of a rasterizer-state object.
<para>(Also see DirectX SDK: ID3D11RasterizerState::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RenderTargetView" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11rendertargetview.h" line="10">
<summary>
A render-target-view interface identifies the render-target subresources that can be accessed during rendering.
<para>(Also see DirectX SDK: ID3D11RenderTargetView)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RenderTargetView.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11rendertargetview.h" line="18">
<summary>
Get the properties of a render target view.
<para>(Also see DirectX SDK: ID3D11RenderTargetView::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11samplerstate.h" line="10">
<summary>
A sampler-state interface accesses sampler state for a texture.
<para>(Also see DirectX SDK: ID3D11SamplerState)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11samplerstate.h" line="18">
<summary>
Get the sampler state.
<para>(Also see DirectX SDK: ID3D11SamplerState::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderResourceView" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11shaderresourceview.h" line="10">
<summary>
A shader-resource-view interface specifies the subresources a shader can access during rendering. Examples of shader resources include a constant buffer, a texture buffer, a texture or a sampler.
<para>(Also see DirectX SDK: ID3D11ShaderResourceView)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderResourceView.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11shaderresourceview.h" line="18">
<summary>
Get the shader resource view's description.
<para>(Also see DirectX SDK: ID3D11ShaderResourceView::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SwitchToRef" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11switchtoref.h" line="13">
<summary>
A switch-to-reference interface enables an application to switch between a hardware and software device.
<para>(Also see DirectX SDK: ID3D11SwitchToRef)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SwitchToRef.UseRef" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11switchtoref.h" line="21">
<summary>
Get or sets a boolean value that indicates the type of device being used.
Set this property to true to change to a software device or to false to change to a hardware device.
<para>(Also see DirectX SDK: ID3D10SwitchToRef::GetUseRef, ID3D10SwitchToRef::SetUseRef)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture1D" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11texture1d.h" line="10">
<summary>
A 1D texture interface accesses texel data, which is structured memory.
<para>(Also see DirectX SDK: ID3D11Texture1D)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture1D.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11texture1d.h" line="18">
<summary>
Get the properties of the texture resource.
<para>(Also see DirectX SDK: ID3D11Texture1D::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture2D" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11texture2d.h" line="10">
<summary>
A 2D texture interface manages texel data, which is structured memory.
<para>(Also see DirectX SDK: ID3D11Texture2D)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture2D.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11texture2d.h" line="18">
<summary>
Get the properties of the texture resource.
<para>(Also see DirectX SDK: ID3D11Texture2D::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture3D" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11texture3d.h" line="10">
<summary>
A 3D texture interface accesses texel data, which is structured memory.
<para>(Also see DirectX SDK: ID3D11Texture3D)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Texture3D.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11texture3d.h" line="18">
<summary>
Get the properties of the texture resource.
<para>(Also see DirectX SDK: ID3D11Texture3D::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.UnorderedAccessView" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11unorderedaccessview.h" line="11">
<summary>
A view interface specifies the parts of a resource the pipeline can access during rendering.
<para>(Also see DirectX SDK: ID3D11UnorderedAccessView)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.UnorderedAccessView.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11unorderedaccessview.h" line="19">
<summary>
Get a description of the resource.
<para>(Also see DirectX SDK: ID3D11UnorderedAccessView::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11vertexshader.h" line="10">
<summary>
A vertex-shader class manages an executable program (a vertex shader) that controls the vertex-shader stage.
<para>(Also see DirectX SDK: ID3D11VertexShader)</para>
</summary>
</member>
</members>
</doc>