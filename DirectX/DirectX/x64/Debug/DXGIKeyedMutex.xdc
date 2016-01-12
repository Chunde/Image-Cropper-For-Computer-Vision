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
</members>
</doc>