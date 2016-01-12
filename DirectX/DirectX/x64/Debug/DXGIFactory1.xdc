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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.LibraryLoader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\libraryloader.h" line="21">
<summary>
A private class supporting dll and functions loading.
Loaded dlls and functions are cached in a hash table.
</summary>
</member>
</members>
</doc>