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