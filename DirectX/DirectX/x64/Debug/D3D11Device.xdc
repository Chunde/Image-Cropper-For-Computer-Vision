<?xml version="1.0"?><doc>
<members>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.LibraryLoader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\libraryloader.h" line="21">
<summary>
A private class supporting dll and functions loading.
Loaded dlls and functions are cached in a hash table.
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshader.h" line="10">
<summary>
A compute-shader class manages an executable program (a compute shader) that controls the compute-shader stage.
<para>(Also see DirectX SDK: ID3D11ComputeShader)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Asynchronous" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11asynchronous.h" line="10">
<summary>
This class encapsulates methods for retrieving data from the GPU asynchronously.
<para>(Also see DirectX SDK: ID3D11Asynchronous)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Asynchronous.DataSize" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11asynchronous.h" line="18">
<summary>
Get the size of the data (in bytes) that is output when calling DeviceContext.GetData.
<para>(Also see DirectX SDK: ID3D11Asynchronous::GetDataSize)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DCounter" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11counter.h" line="10">
<summary>
This class encapsulates methods for measuring GPU performance.
<para>(Also see DirectX SDK: ID3D11Counter)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DCounter.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11counter.h" line="18">
<summary>
Get the counter description.
<para>(Also see DirectX SDK: ID3D11Counter::GetDesc)</para>
</summary>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DQuery" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11query.h" line="10">
<summary>
A query interface queries information from the GPU.
<para>(Also see DirectX SDK: ID3D11Query)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DQuery.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11query.h" line="18">
<summary>
Get a query description.
<para>(Also see DirectX SDK: ID3D11Query::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DPredicate" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11predicate.h" line="11">
<summary>
A predicate interface determines whether geometry should be processed depending on the results of a previous draw call.
<para>(Also see DirectX SDK: ID3D11Predicate)</para>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="10">
<summary>
An information-queue interface stores, retrieves, and filters debug messages. The queue consists of a message queue, an optional storage filter stack, and a optional retrieval filter stack.
<para>(Also see DirectX SDK: ID3D11InfoQueue)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.AddApplicationMessage(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity,System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="18">
<summary>
Add a user-defined message to the message queue and send that message to debug output.
<para>(Also see DirectX SDK: ID3D11InfoQueue::AddApplicationMessage)</para>
</summary>
<param name="severity">Severity of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity"/>.</param>
<param name="description">Message string.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.AddMessage(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId,System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="26">
<summary>
Add a debug message to the message queue and send that message to debug output.
<para>(Also see DirectX SDK: ID3D11InfoQueue::AddMessage)</para>
</summary>
<param name="category">Category of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory"/>.</param>
<param name="severity">Severity of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity"/>.</param>
<param name="id">Unique identifier of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId"/>.</param>
<param name="description">User-defined message.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.ClearStoredMessages" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="36">
<summary>
Clear all messages from the message queue.
<para>(Also see DirectX SDK: ID3D11InfoQueue::ClearStoredMessages)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.GetBreakOnCategory(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="42">
<summary>
Get a message category to break on when a message with that category passes through the storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetBreakOnCategory)</para>
</summary>
<param name="category">Message category to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory"/>.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.GetBreakOnId(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="49">
<summary>
Get a message identifier to break on when a message with that identifier passes through the storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetBreakOnID)</para>
</summary>
<param name="id">Message identifier to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId"/>.</param>
<returns>
Whether this breaking condition is turned on or off (true for on, false for off).
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.GetBreakOnSeverity(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="59">
<summary>
Get a message severity level to break on when a message with that severity level passes through the storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetBreakOnSeverity)</para>
</summary>
<param name="severity">Message severity level to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity"/>.</param>
<returns>
Whether this breaking condition is turned on or off (true for on, false for off).
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.GetMessage(System.UInt64)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="69">
<summary>
Get a message from the message queue.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetMessage)</para>
</summary>
<param name="messageIndex">Index into message queue after an optional retrieval filter has been applied. 
This can be between 0 and the number of messages in the message queue that pass through the retrieval filter (which can be obtained with GetNumStoredMessagesAllowedByRetrievalFilter(). 
0 is the message at the front of the message queue.</param>
<returns>Returned message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Message"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Message"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.TryGetMessage(System.UInt64,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Message@)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="79">
<summary>
Try to get a message from the message queue.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetMessage)</para>
</summary>
<param name="messageIndex">Index into message queue after an optional retrieval filter has been applied. 
This can be between 0 and the number of messages in the message queue that pass through the retrieval filter 
(which can be obtained with GetNumStoredMessagesAllowedByRetrievalFilter(). 
Index 0 is the message at the front of the message queue. </param>        
<param name="message">Returned message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Message"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Message"/>.</param>      
<returns>True if successful; false otherwise.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.MessageCountLimit" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="91">
<summary>
Get or set the maximum number of messages that can be added to the message queue.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetMessageCountLimit)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.MuteDebugOutput" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="101">
<summary>
Get or set a boolean that turns the debug output on or off.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetMuteDebugOutput)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.AllowedByStorageFilterCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="112">
<summary>
Get the number of messages that were allowed to pass through a storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetNumMessagesAllowedByStorageFilter)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.DeniedByStorageFilterCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="121">
<summary>
Get the number of messages that were denied passage through a storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetNumMessagesDeniedByStorageFilter)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.DiscardedByMessageCountLimitCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="130">
<summary>
Get the number of messages that were discarded due to the message count limit.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetNumMessagesDiscardedByMessageCountLimit)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.StoredCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="139">
<summary>
Get the number of messages currently stored in the message queue.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetNumStoredMessages)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.StoredAllowedByRetrievalFilterCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="148">
<summary>
Get the number of messages that are able to pass through a retrieval filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetNumStoredMessagesAllowedByRetrievalFilter)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.SetBreakOnCategory(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="157">
<summary>
Set a message category to break on when a message with that category passes through the storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::SetBreakOnCategory)</para>
</summary>
<param name="category">Message category to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory"/>.</param>
<param name="enable">Turns this breaking condition on or off (true for on, false for off).</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.SetBreakOnId(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="165">
<summary>
Set a message identifier to break on when a message with that identifier passes through the storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::SetBreakOnID)</para>
</summary>
<param name="id">Message identifier to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId"/>.</param>
<param name="enable">Turns this breaking condition on or off (true for on, false for off).</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.SetBreakOnSeverity(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="173">
<summary>
Set a message severity level to break on when a message with that severity level passes through the storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::SetBreakOnSeverity)</para>
</summary>
<param name="severity">A MessageSeverity, which represents a message severity level to break on.</param>
<param name="enable">Turns this breaking condition on or off (true for on, false for off).</param>
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