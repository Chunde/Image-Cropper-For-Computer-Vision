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
</members>
</doc>