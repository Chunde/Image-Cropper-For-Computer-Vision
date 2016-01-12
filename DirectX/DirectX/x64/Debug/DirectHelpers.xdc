<?xml version="1.0"?><doc>
<members>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.DirectHelpers" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\directhelpers.h" line="13">
<summary>
This class provides a set of helper methods that can be used to extend
the API, and wrap external natives interfaces.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectHelpers.GetExceptionForHresult(System.Int32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directhelpers.h" line="25">
<summary>
Return an exception for a given HResult
</summary>
<param name="hresult">The HResult value</param>
<returns>The equivalent exception</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectHelpers.GetExceptionForErrorCode(Microsoft.WindowsAPICodePack.DirectX.ErrorCode)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directhelpers.h" line="32">
<summary>
Return an exception for a given ErrorCode
</summary>
<param name="errorCode">The ErrorCode value</param>
<returns>The equivalent exception</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectHelpers.ThrowExceptionForErrorCode(Microsoft.WindowsAPICodePack.DirectX.ErrorCode)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directhelpers.h" line="39">
<summary>
Throw an exception for a given ErrorCode. 
No exception will be thrown if the errorCode is Success.
</summary>
<param name="errorCode">The ErrorCode value</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectHelpers.ThrowExceptionForHresult(System.Int32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directhelpers.h" line="46">
<summary>
Throw an exception for a given HResult
No exception will be thrown if the errorCode is Success.
</summary>
<param name="hresult">The HResult value</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectHelpers.CreateIUnknownWrapper``1(System.IntPtr)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directhelpers.h" line="53">
<summary>
Create a wrapper for a given native IUnknown interface pointer.
This method will not increase the ref count for the wrapped native
interface. However, when this class is disposed, the native interface
will have Release() called.
This method is mainly intended to wrap interfaces that inherit from IUnknown.
</summary>
<param name="nativeIUnknown">The native pointer to the IUnknown interface.</param>
<typeparam name="T">The type of the IUnknown wrapper to create. Must inherit from <see cref="T:Microsoft.WindowsAPICodePack.DirectX.DirectUnknown"/>.</typeparam>
<returns>A DirectUnknown wrapper.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.DirectHelpers.CreateInterfaceWrapper``1(System.IntPtr)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\directhelpers.h" line="66">
<summary>
Create a wrapper for a given native interface pointer that does not have an IUnknown.
This method will not increase the ref count for the wrapped native
interface. Also, when this class is disposed, the native interface
will not be deleted or released.
This method is mainly intended to wrap interfaces that do not inherit from IUnknown.
</summary>
<typeparam name="T">The type of the object wrapper to create. Must inherit from <see cref="T:Microsoft.WindowsAPICodePack.DirectX.DirectObject"/>.</typeparam>
<param name="nativeInterface">The native pointer to the interface.</param>
<returns>A DirectObject wrapper.</returns>
</member>
</members>
</doc>