<?xml version="1.0"?><doc>
<members>
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
</members>
</doc>