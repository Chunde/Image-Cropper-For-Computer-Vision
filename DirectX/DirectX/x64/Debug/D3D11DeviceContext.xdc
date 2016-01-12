<?xml version="1.0"?><doc>
<members>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshader.h" line="10">
<summary>
A compute-shader class manages an executable program (a compute shader) that controls the compute-shader stage.
<para>(Also see DirectX SDK: ID3D11ComputeShader)</para>
</summary>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11domainshader.h" line="10">
<summary>
A domain-shader class manages an executable program (a domain shader) that controls the domain-shader stage.
<para>(Also see DirectX SDK: ID3D11DomainShader)</para>
</summary>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11vertexshader.h" line="10">
<summary>
A vertex-shader class manages an executable program (a vertex shader) that controls the vertex-shader stage.
<para>(Also see DirectX SDK: ID3D11VertexShader)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11pipelinestage.h" line="11">
<summary>
A pipeline stage. base class for all pipline stage related classes.
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShaderPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshaderpipelinestage.h" line="9">
<summary>
Compute Shader pipeline stage. 
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShaderPipelineStage.GetConstantBuffers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshaderpipelinestage.h" line="15">
<summary>
Get the constant buffers used by the compute-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::CSGetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin retrieving constant buffers from (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="bufferCount">Number of buffers to retrieve (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - startSlot).</param>
<returns>A collection of constant buffer objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/> to be returned by the method.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShaderPipelineStage.GetSamplers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshaderpipelinestage.h" line="24">
<summary>
Get an array of sampler state objects from the compute-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::CSGetSamplers)</para>
</summary>
<param name="startSlot">Index into a zero-based array to begin getting samplers from (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplerCount">Number of samplers to get from a device context. Each pipeline stage has a total of 16 sampler slots available (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - startSlot).</param>
<returns>A collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShaderPipelineStage.GetShaderAndClasses(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshaderpipelinestage.h" line="38">
<summary>
Get the compute shader currently set on the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::CSGetShader)</para>
</summary>
<param name="classInstanceCount">The number of class-instances to retrieve.</param>
<returns>
A ComputeShader object and its classes (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShader"/>, <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>)
<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShader"/>, <seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>.
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShaderPipelineStage.Shader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshaderpipelinestage.h" line="50">
<summary>
Gets or sets the compute shader currently set on the device. (See <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShader"/>.
<para>(Also see DirectX SDK: ID3D11DeviceContext::CSGetShader, ID3D11DeviceContext::CSSetShader)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShaderPipelineStage.GetShaderResources(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshaderpipelinestage.h" line="60">
<summary>
Get the compute-shader resources.
<para>(Also see DirectX SDK: ID3D11DeviceContext::CSGetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin getting shader resources from (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="viewCount">The number of resources to get from the device. Up to a maximum of 128 slots are available for shader resources (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - startSlot).</param>
<returns>A collection of shader resource view objects to be returned by the device.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShaderPipelineStage.GetUnorderedAccessViews(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshaderpipelinestage.h" line="69">
<summary>
Gets an array of views for an unordered resource.
<para>(Also see DirectX SDK: ID3D11DeviceContext::CSGetUnorderedAccessViews)</para>
</summary>
<param name="startSlot">Index of the first element in the zero-based array to return (ranges from 0 to D3D11_PS_CS_UAV_REGISTER_COUNT - 1).</param>
<param name="viewCount">Number of views to get (ranges from 0 to D3D11_PS_CS_UAV_REGISTER_COUNT - startSlot).</param>
<returns>A collection of Unorderd Access Views (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.UnorderedAccessView"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.UnorderedAccessView"/> to get.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShaderPipelineStage.SetConstantBuffers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshaderpipelinestage.h" line="78">
<summary>
Set the constant buffers used by the compute-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::CSSetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the zero-based array to begin setting constant buffers to (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="constantBuffers">A collection of constant buffers (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/> being given to the device.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShaderPipelineStage.SetSamplers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshaderpipelinestage.h" line="86">
<summary>
Set an array of sampler states to the compute-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::CSSetSamplers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting samplers to (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplers">A collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShaderPipelineStage.SetShader(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShader,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshaderpipelinestage.h" line="94">
<summary>
Set a compute shader to the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::CSSetShader)</para>
</summary>
<param name="computeShader">A compute shader (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShader"/>. Passing in NULL disables the shader for this pipeline stage.</param>
<param name="classInstances">A collection of class-instance objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance"/>. Each interface used by a shader must have a corresponding class instance or the shader will get disabled. 
Set to null if the shader does not use any interfaces.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShaderPipelineStage.SetShader(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShader})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshaderpipelinestage.h" line="103">
<summary>
Set a compute shader to the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::CSSetShader)</para>
</summary>
<param name="shaderAndClasses">
A ComputeShader object and its classes (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShader"/>, <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>)
<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShader"/>, <seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>.
Passing in null for the shader disables the shader for this pipeline stage.
</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShaderPipelineStage.SetShaderResources(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderResourceView})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshaderpipelinestage.h" line="114">
<summary>
Bind an array of shader resources to the compute-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::CSSetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting shader resources to (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="shaderResourceViews">Collection of shader resource view objects to set to the device.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ComputeShaderPipelineStage.SetUnorderedAccessViews(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.UnorderedAccessView},System.UInt32[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11computeshaderpipelinestage.h" line="122">
<summary>
Sets an array of views for an unordered resource.
<para>(Also see DirectX SDK: ID3D11DeviceContext::CSSetUnorderedAccessViews)</para>
</summary>
<param name="startSlot">Index of the first element in the zero-based array to begin setting.</param>
<param name="unorderedAccessViews">A collection of Unordered Access Views (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.UnorderedAccessView"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.UnorderedAccessView"/> to be set by the method.</param>
<param name="initialCounts">Number of objects in the array.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShaderPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11domainshaderpipelinestage.h" line="9">
<summary>
Domain Shader pipeline stage. 
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShaderPipelineStage.GetConstantBuffers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11domainshaderpipelinestage.h" line="15">
<summary>
Get the constant buffers used by the domain-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::DSGetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin retrieving constant buffers from (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="bufferCount">Number of buffers to retrieve (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - startSlot).</param>
<returns>Collection of constant buffer objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/> to be returned by the method.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShaderPipelineStage.GetSamplers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11domainshaderpipelinestage.h" line="24">
<summary>
Get an array of sampler state objects from the domain-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::DSGetSamplers)</para>
</summary>
<param name="startSlot">Index into a zero-based array to begin getting samplers from (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplerCount">Number of samplers to get from a device context. Each pipeline stage has a total of 16 sampler slots available (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - startSlot).</param>
<returns>A collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShaderPipelineStage.GetShaderAndClasses(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11domainshaderpipelinestage.h" line="33">
<summary>
Get the domain shader currently set on the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::DSGetShader)</para>
</summary>
<param name="classInstanceCount">The number of class-instance elements requested.</param>
<returns>
A DomainShader object and its classes (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShader"/>, <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>)
<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShader"/>, <seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>.
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShaderPipelineStage.Shader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11domainshaderpipelinestage.h" line="44">
<summary>
Get the domain shader currently set on the device. (See <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShader"/>
<para>(Also see DirectX SDK: ID3D11DeviceContext::DSGetShader, ID3D11DeviceContext::DSSetShader)</para>
Passing in null disables the shader for this pipeline stage.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShaderPipelineStage.GetShaderResources(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11domainshaderpipelinestage.h" line="55">
<summary>
Get the domain-shader resources.
<para>(Also see DirectX SDK: ID3D11DeviceContext::DSGetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin getting shader resources from (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="viewCount">The number of resources to get from the device. Up to a maximum of 128 slots are available for shader resources (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - startSlot).</param>
<returns>A collection of shader resource view objects to be returned by the device.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShaderPipelineStage.SetConstantBuffers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11domainshaderpipelinestage.h" line="64">
<summary>
Set the constant buffers used by the domain-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::DSSetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the zero-based array to begin setting constant buffers to (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="constantBuffers">Collection of constant buffers (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/> being given to the device.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShaderPipelineStage.SetSamplers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11domainshaderpipelinestage.h" line="72">
<summary>
Set an array of sampler states to the domain-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::DSSetSamplers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting samplers to (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplers">A collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>. See Remarks.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShaderPipelineStage.SetShader(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShader,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11domainshaderpipelinestage.h" line="80">
<summary>
Set a domain shader to the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::DSSetShader)</para>
</summary>
<param name="domainShader">A domain shader (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShader"/>. 
Passing in null disables the shader for this pipeline stage.</param>
<param name="classInstances">A collection of class-instance objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance"/>. 
Each interface used by a shader must have a corresponding class instance or the shader will get disabled. 
Set to null if the shader does not use any interfaces.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShaderPipelineStage.SetShader(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShader})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11domainshaderpipelinestage.h" line="91">
<summary>
Set a domain shader to the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::DSSetShader)</para>
</summary>
<param name="shaderAndClasses">
A DomainShader object and its classes (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShader"/>, <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>)
<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShader"/>, <seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>.
Passing in null for the shader disables the shader for this pipeline stage.
</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DomainShaderPipelineStage.SetShaderResources(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderResourceView})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11domainshaderpipelinestage.h" line="102">
<summary>
Bind an array of shader resources to the domain-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::DSSetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting shader resources to (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="shaderResourceViews">Collection of shader resource view objects to set to the device.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShaderPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11geometryshaderpipelinestage.h" line="9">
<summary>
Geometry Shader pipeline stage. 
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShaderPipelineStage.GetConstantBuffers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11geometryshaderpipelinestage.h" line="15">
<summary>
Get the constant buffers used by the geometry shader pipeline stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::GSGetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin retrieving constant buffers from (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="bufferCount">Number of buffers to retrieve (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - startSlot).</param>
<returns>A collection of constant buffer objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/> to be returned by the method.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShaderPipelineStage.GetSamplers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11geometryshaderpipelinestage.h" line="24">
<summary>
Get an array of sampler state objects from the geometry shader pipeline stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::GSGetSamplers)</para>
</summary>
<param name="startSlot">Index into a zero-based array to begin getting samplers from (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplerCount">Number of samplers to get from a device context. Each pipeline stage has a total of 16 sampler slots available (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - startSlot).</param>
<returns>A collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShaderPipelineStage.GetShaderAndClasses(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11geometryshaderpipelinestage.h" line="33">
<summary>
Get the geometry shader currently set on the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::GSGetShader)</para>
</summary>
<param name="classInstanceCount">The number of class-instance elements requested.</param>
<returns>
A GeometryShader object and its classes (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShader"/>, <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>)
<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShader"/>, <seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>.
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShaderPipelineStage.Shader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11geometryshaderpipelinestage.h" line="44">
<summary>
Get the geometry shader currently set on the device. (See <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShader"/>
<para>(Also see DirectX SDK: ID3D11DeviceContext::GSGetShader, ID3D11DeviceContext::GSSetShader)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShaderPipelineStage.GetShaderResources(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11geometryshaderpipelinestage.h" line="54">
<summary>
Get the geometry shader resources.
<para>(Also see DirectX SDK: ID3D11DeviceContext::GSGetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin getting shader resources from (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="viewCount">The number of resources to request from the device. Up to a maximum of 128 slots are available for shader resources (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - startSlot).</param>
<returns>Collection of shader resource view objects to be returned by the device.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShaderPipelineStage.SetConstantBuffers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11geometryshaderpipelinestage.h" line="63">
<summary>
Set the constant buffers used by the geometry shader pipeline stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::GSSetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting constant buffers to (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="constantBuffers">Collection of constant buffers (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/> being given to the device.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShaderPipelineStage.SetSamplers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11geometryshaderpipelinestage.h" line="71">
<summary>
Set an array of sampler states to the geometry shader pipeline stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::GSSetSamplers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting samplers to (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplers">A collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>. See Remarks.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShaderPipelineStage.SetShader(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShader,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11geometryshaderpipelinestage.h" line="79">
<summary>
Set a geometry shader to the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::GSSetShader)</para>
</summary>
<param name="geometryShader">A geometry shader (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShader"/>. Passing in NULL disables the shader for this pipeline stage.</param>
<param name="classInstances">A collection of class-instance objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance"/>. Each interface used by a shader must have a corresponding class instance or the shader will get disabled. Set to NULL if the shader does not use any interfaces.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShaderPipelineStage.SetShader(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShader})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11geometryshaderpipelinestage.h" line="87">
<summary>
Set a geometry shader to the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::GSSetShader)</para>
</summary>
<param name="shaderAndClasses">
A GeometryShader object and its classes (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShader"/>, <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>)
<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShader"/>, <seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>.
Passing in null for the shader disables the shader for this pipeline stage.
</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShaderPipelineStage.SetShaderResources(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderResourceView})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11geometryshaderpipelinestage.h" line="98">
<summary>
Bind an array of shader resources to the geometry shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::GSSetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting shader resources to (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="shaderResourceViews">Collection of shader resource view objects to set to the device.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShaderPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11hullshaderpipelinestage.h" line="9">
<summary>
Hull Shader pipeline stage. 
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShaderPipelineStage.GetConstantBuffers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11hullshaderpipelinestage.h" line="15">
<summary>
Get the constant buffers used by the hull-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::HSGetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin retrieving constant buffers from (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="bufferCount">Number of buffers to retrieve (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - startSlot).</param>
<returns>Collection of constant buffer objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/> to be returned by the method.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShaderPipelineStage.GetSamplers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11hullshaderpipelinestage.h" line="24">
<summary>
Get an array of sampler state objects from the hull-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::HSGetSamplers)</para>
</summary>
<param name="startSlot">Index into a zero-based array to begin getting samplers from (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplerCount">Number of samplers to get from a device context. Each pipeline stage has a total of 16 sampler slots available (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - startSlot).</param>
<returns>A collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShaderPipelineStage.GetShaderAndClasses(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11hullshaderpipelinestage.h" line="33">
<summary>
Get the hull shader currently set on the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::HSGetShader)</para>
</summary>
<param name="classInstanceCount">The number of class-instance elements requested.</param>
<returns>
A HullShader object and its classes (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader"/>, <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>)
<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader"/>, <seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>.
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShaderPipelineStage.Shader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11hullshaderpipelinestage.h" line="44">
<summary>
Gets or sets the hull shader currently set on the device. (See <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.GeometryShader"/>
<para>(Also see DirectX SDK: ID3D11DeviceContext::HSGetShader, ID3D11DeviceContext::HSSetShader)</para>
Setting this property to null disables the shader for this pipeline stage.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShaderPipelineStage.GetShaderResources(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11hullshaderpipelinestage.h" line="55">
<summary>
Get the hull-shader resources.
<para>(Also see DirectX SDK: ID3D11DeviceContext::HSGetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin getting shader resources from (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="viewCount">The number of resources to get from the device. Up to a maximum of 128 slots are available for shader resources (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - startSlot).</param>
<returns>Collection of shader resource view objects to be returned by the device.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShaderPipelineStage.SetConstantBuffers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11hullshaderpipelinestage.h" line="64">
<summary>
Set the constant buffers used by the hull-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::HSSetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting constant buffers to (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="constantBuffers">Collection of constant buffers (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/> being given to the device.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShaderPipelineStage.SetSamplers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11hullshaderpipelinestage.h" line="72">
<summary>
Set an array of sampler states to the hull-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::HSSetSamplers)</para>
</summary>
<param name="startSlot">Index into the zero-based array to begin setting samplers to (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplers">A collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>. See Remarks.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShaderPipelineStage.SetShader(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11hullshaderpipelinestage.h" line="80">
<summary>
Set a hull shader to the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::HSSetShader)</para>
</summary>
<param name="shader">A hull shader (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader"/>. 
Passing in null disables the shader for this pipeline stage.</param>
<param name="classInstances">A collection of class-instance objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance"/>. 
Each interface used by a shader must have a corresponding class instance or the shader will get disabled. Set to null if the shader does not use any interfaces.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShaderPipelineStage.SetShader(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11hullshaderpipelinestage.h" line="90">
<summary>
Set a hull shader to the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::HSSetShader)</para>
</summary>
<param name="shaderAndClasses">
A HullShader object and its classes (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader"/>, <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>)
<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShader"/>, <seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>.
Passing in null for the shader disables the shader for this pipeline stage.
</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.HullShaderPipelineStage.SetShaderResources(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderResourceView})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11hullshaderpipelinestage.h" line="101">
<summary>
Bind an array of shader resources to the hull-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::HSSetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting shader resources to (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="shaderResourceViews">Collection of shader resource view objects to set to the device. 
Up to a maximum of 128 slots are available for shader resources(ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - startSlot).</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputAssemblerPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11inputassemblerpipelinestage.h" line="9">
<summary>
InputAssembler pipeline stage. 
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputAssemblerPipelineStage.IndexBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11inputassemblerpipelinestage.h" line="15">
<summary>
Gets or sets the index buffer that is bound to the input-assembler stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::IAGetIndexBuffer)</para>
</summary>
<remarks>Setting this property using a buffer that is currently bound for writing (i.e.
bound to the stream output pipeline stage) will effectively bind null instead because a
buffer cannot be bound as both an input and an output at the same time.
</remarks>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputAssemblerPipelineStage.InputLayout" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11inputassemblerpipelinestage.h" line="29">
<summary>
Gets or sets the input-layout object that is bound to the input-assembler stage. (See <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputAssemblerPipelineStage.InputLayout"/>)<seealso cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputAssemblerPipelineStage.InputLayout"/>
<para>(Also see DirectX SDK: ID3D11DeviceContext::IAGetInputLayout, ID3D11DeviceContext::IASetInputLayout)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputAssemblerPipelineStage.PrimitiveTopology" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11inputassemblerpipelinestage.h" line="39">
<summary>
Get information about the primitive type, and data order that describes input data for the input assembler stage. (See <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputAssemblerPipelineStage.PrimitiveTopology"/>)<seealso cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputAssemblerPipelineStage.PrimitiveTopology"/>.
<para>(Also see DirectX SDK: ID3D11DeviceContext::IAGetPrimitiveTopology, ID3D11DeviceContext::IASetPrimitiveTopology)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputAssemblerPipelineStage.GetVertexBuffers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11inputassemblerpipelinestage.h" line="49">
<summary>
Get the vertex buffers bound to the input-assembler stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::IAGetVertexBuffers)</para>
</summary>
<param name="startSlot">The input slot of the first vertex buffer to get. The first vertex buffer is explicitly bound to the start slot; this causes each additional vertex buffer in the array to be implicitly bound to each subsequent input slot. There are 16 input slots.</param>
<param name="bufferCount">The number of vertex buffers to get starting at the offset. The number of buffers (plus the starting slot) cannot exceed the total number of IA-stage input slots.</param>
<returns>A collection of vertex buffers returned by the method (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexBuffer"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputAssemblerPipelineStage.SetVertexBuffers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer},System.UInt32[],System.UInt32[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11inputassemblerpipelinestage.h" line="58">
<summary>
Bind an array of vertex buffers to the input-assembler stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::IASetVertexBuffers)</para>
</summary>
<param name="startSlot">The first input slot for binding. The first vertex buffer is explicitly bound to the start slot; this causes each additional vertex buffer in the array to be implicitly bound to each subsequent input slot. There are 16 input slots (ranges from 0 to D3D11_IA_VERTEX_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="vertexBuffers">A collection of vertex buffers (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>. 
The number of buffers (plus the starting slot) cannot exceed the total number of IA-stage input slots (ranges from 0 to D3D11_IA_VERTEX_INPUT_RESOURCE_SLOT_COUNT - startSlot).
The vertex buffers must have been created with the VertexBuffer flag.</param>
<param name="strides">An array of stride values; one stride value for each buffer in the vertex-buffer array. Each stride is the size (in bytes) of the elements that are to be used from that vertex buffer.</param>
<param name="offsets">An array of offset values; one offset value for each buffer in the vertex-buffer array. Each offset is the number of bytes between the first element of a vertex buffer and the first element that will be used.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InputAssemblerPipelineStage.SetVertexBuffers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexBuffer})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11inputassemblerpipelinestage.h" line="70">
<summary>
Bind an array of vertex buffers to the input-assembler stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::IASetVertexBuffers)</para>
</summary>
<param name="startSlot">The first input slot for binding. The first vertex buffer is explicitly bound to the start slot; this causes each additional vertex buffer in the array to be implicitly bound to each subsequent input slot. There are 16 input slots (ranges from 0 to D3D11_IA_VERTEX_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="vertexBuffers">
A collection of vertex buffers (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexBuffer"/>. 
The number of buffers (plus the starting slot) cannot exceed the total number of IA-stage input slots (ranges from 0 to D3D11_IA_VERTEX_INPUT_RESOURCE_SLOT_COUNT - startSlot).
The vertex buffers must have been created with the <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.BindingOptions"/><b>.VertexBuffer flag</b>.
</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerBlendState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11outputmergerblendstate.h" line="13">
<summary>
Stores the blend state, including blend factors and mask, for the merger pipeline stage
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerBlendState.BlendState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11outputmergerblendstate.h" line="19">
<summary>
Gets the BlendState object for this merger pipeline stage blend state
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerBlendState.BlendFactor" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11outputmergerblendstate.h" line="27">
<summary>
Gets the blend factors for this merger pipeline stage blend state
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerBlendState.SampleMask" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11outputmergerblendstate.h" line="35">
<summary>
Gets the sample mask for this merger pipeline stage blend state
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerRenderTargets" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11outputmergerrendertargets.h" line="11">
<summary>
Stores the render targets for a merger pipeline stage
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11outputmergerpipelinestage.h" line="10">
<summary>
OutputMerger pipeline stage. 
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage.BlendState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11outputmergerpipelinestage.h" line="17">
<summary>
Get or sets the blend state of the output-merger stage.
<para>(Also see DirectX SDK: ID3D10Device::OMGetBlendState, ID3D10Device::OMSetBlendState)</para>
</summary>
<remarks>
<para>
If OutputMergerBlendState.BlendState is null, the default blending state will be set.
See the DX SDK (ID3D10Device::OMSetBlendState) for more details about the default blending state.
</para>
<para>
A sample mask determines which samples get updated in all the active render targets. 
The mapping of bits in a sample mask to samples in a multisample render target is 
the responsibility of an individual application. 
A sample mask is always applied; it is independent of whether multisampling is enabled, 
and does not depend on whether an application uses multisample render targets.
</para>
</remarks>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage.DepthStencilState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11outputmergerpipelinestage.h" line="40">
<summary>
Gets the depth-stencil state of the output-merger stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::OMGetDepthStencilState)</para>
</summary>
<returns>A depth-stencil state object (see <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage.DepthStencilState"/>)<seealso cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage.DepthStencilState"/> to be filled with information from the device.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage.DepthStencilView" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11outputmergerpipelinestage.h" line="50">
<summary>
Get the depth stencil view bound to the output-merger stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::OMGetRenderTargets)</para>
</summary>
<returns>The depth-stencil view bound to the output-merger stage.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage.GetDepthStencilStateAndReferenceValue(System.UInt32@)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11outputmergerpipelinestage.h" line="60">
<summary>
Gets the depth-stencil state of the output-merger stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::OMGetDepthStencilState)</para>
</summary>
<param name="stencilRef">The stencil reference value used in the depth-stencil test.</param>
<returns>A depth-stencil state object (see <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage.DepthStencilState"/>)<seealso cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage.DepthStencilState"/> to be filled with information from the device.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage.SetDepthStencilStateAndReferenceValue(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilState,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11outputmergerpipelinestage.h" line="68">
<summary>
Sets the depth-stencil state of the output-merger stage with a reference value.
<para>(Also see DirectX SDK: ID3D11DeviceContext::OMSetDepthStencilState)</para>
</summary>
<param name="depthStencilState">A depth-stencil state interface (see <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage.DepthStencilState"/>)<seealso cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage.DepthStencilState"/> to bind to the device. Set this to NULL to use the default state listed in DepthStencilDescription.</param>
<param name="stencilRef">Reference value to perform against when doing a depth-stencil test.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage.SetRenderTargets(System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RenderTargetView},Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilView)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11outputmergerpipelinestage.h" line="95">
<summary>
Bind one or more render targets atomically and the depth-stencil buffer to the output-merger stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::OMSetRenderTargets)</para>
</summary>
<param name="renderTargetViews">A collection of render targets (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RenderTargetView"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RenderTargetView"/> to bind to the device (ranges between 0 and D3D11_SIMULTANEOUS_RENDER_TARGET_COUNT). 
If this parameter is null, no render targets are bound.</param>
<param name="depthStencilView">A depth-stencil view (see <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage.DepthStencilView"/>)<seealso cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage.DepthStencilView"/> to bind to the device. 
If this parameter is null, the depth-stencil state is not bound.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.OutputMergerPipelineStage.SetRenderTargetsAndUnorderedAccessViews(System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RenderTargetView},Microsoft.WindowsAPICodePack.DirectX.Direct3D11.DepthStencilView,System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.UnorderedAccessView},System.Collections.Generic.IEnumerable`1{System.UInt32})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11outputmergerpipelinestage.h" line="105">
<summary>
Bind resources to the output-merger stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::OMSetRenderTargetsAndUnorderedAccessViews)</para>
</summary>
<param name="renderTargetViews">A collection of ID3D11RenderTargetViews, which represent render-target views. Specify NULL to set none.</param>
<param name="depthStencilView">A DepthStencilView, which represents a depth-stencil view. Specify NULL to set none.</param>
<param name="viewStartSlot">Index into a zero-based array to begin setting unordered access views (ranges from 0 to D3D11_PS_CS_UAV_REGISTER_COUNT - 1).</param>
<param name="unorderedAccessViews">A collection of ID3D11UnorderedAccessViews, which represent unordered access views.</param>
<param name="initialCounts">An array The number of unordered access views to set.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShaderPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11pixelshaderpipelinestage.h" line="9">
<summary>
Pixel Shader pipeline stage. 
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShaderPipelineStage.GetConstantBuffers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11pixelshaderpipelinestage.h" line="15">
<summary>
Get the constant buffers used by the pixel shader pipeline stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::PSGetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin retrieving constant buffers from (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="bufferCount">Number of buffers to retrieve (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - startSlot).</param>
<returns>Collection of constant buffer objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/> to be returned by the method.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShaderPipelineStage.GetSamplers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11pixelshaderpipelinestage.h" line="24">
<summary>
Get an array of sampler states from the pixel shader pipeline stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::PSGetSamplers)</para>
</summary>
<param name="startSlot">Index into a zero-based array to begin getting samplers from (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplerCount">Number of samplers to get from a device context. Each pipeline stage has a total of 16 sampler slots available (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - startSlot).</param>
<returns>Collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/> to be returned by the device.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShaderPipelineStage.GetShaderAndClasses(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11pixelshaderpipelinestage.h" line="33">
<summary>
Get the pixel shader currently set on the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::PSGetShader)</para>
</summary>
<param name="classInstanceCount">The number of class-instance elements in the array.</param>
<returns>
A PixelShader object and its classes (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShader"/>, <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>)
<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShader"/>, <seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>.
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShaderPipelineStage.Shader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11pixelshaderpipelinestage.h" line="44">
<summary>
Gets or sets the pixel shader currently set on the device. (See <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShader"/>.
<para>(Also see DirectX SDK: ID3D11DeviceContext::PSGetShader, ID3D11DeviceContext::PSSetShader)</para>
Passing in null disables the shader for this pipeline stage.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShaderPipelineStage.GetShaderResources(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11pixelshaderpipelinestage.h" line="55">
<summary>
Get the pixel shader resources.
<para>(Also see DirectX SDK: ID3D11DeviceContext::PSGetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin getting shader resources from (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="viewCount">The number of resources to get from the device. Up to a maximum of 128 slots are available for shader resources (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - startSlot).</param>
<returns>Collection of shader resource view objects to be returned by the device.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShaderPipelineStage.SetConstantBuffers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11pixelshaderpipelinestage.h" line="64">
<summary>
Set the constant buffers used by the pixel shader pipeline stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::PSSetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting constant buffers to (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="constantBuffers">Collection of constant buffers (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/> being given to the device.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShaderPipelineStage.SetSamplers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11pixelshaderpipelinestage.h" line="72">
<summary>
Set an array of sampler states to the pixel shader pipeline stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::PSSetSamplers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting samplers to (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplers">A collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>. See Remarks.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShaderPipelineStage.SetShader(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShader,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11pixelshaderpipelinestage.h" line="80">
<summary>
Sets a pixel shader to the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::PSSetShader)</para>
</summary>
<param name="pixelShader">A pixel shader (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShader"/>. 
Passing in null disables the shader for this pipeline stage.</param>
<param name="classInstances">A collection of class-instance objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance"/>. 
Each interface used by a shader must have a corresponding class instance or the shader will get disabled. 
Set to null if the shader does not use any interfaces.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShaderPipelineStage.SetShader(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShader})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11pixelshaderpipelinestage.h" line="91">
<summary>
Sets a pixel shader to the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::PSSetShader)</para>
</summary>
<param name="shaderAndClasses">
A PixelShader object and its classes (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShader"/>, <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>)
<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShader"/>, <seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>.
Passing in null for the shader disables the shader for this pipeline stage.
</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PixelShaderPipelineStage.SetShaderResources(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderResourceView})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11pixelshaderpipelinestage.h" line="102">
<summary>
Bind an array of shader resources to the pixel shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::PSSetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting shader resources to (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="shaderResourceViews">Collection of shader resource view objects to set to the device.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RasterizerPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11rasterizerpipelinestage.h" line="8">
<summary>
Rasterizer pipeline stage. 
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RasterizerPipelineStage.BoundedGetScissorRects(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11rasterizerpipelinestage.h" line="15">
<summary>
Get the collection of scissor rectangles bound to the rasterizer stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::RSGetScissorRects)</para>
</summary>
<returns>A collection of scissor rectangles (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D.D3DRect"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D.D3DRect"/>.
If maximumNumberOfRects is greater than the number of scissor rects currently bound, 
then the collection will be trimmed to contain only the currently bound. 
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RasterizerPipelineStage.ScissorRects" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11rasterizerpipelinestage.h" line="25">
<summary>
Gets or sets an array of scissor rectangles bound the rasterizer stage. (See <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D.D3DRect"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D.D3DRect"/>.
<para>(Also see DirectX SDK: ID3D11DeviceContext::RSGetScissorRects, ID3D11DeviceContext::RSSetScissorRects)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RasterizerPipelineStage.State" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11rasterizerpipelinestage.h" line="35">
<summary>
Gets or sets the rasterizer state of the rasterizer stage of the pipeline. (See <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RasterizerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RasterizerState"/>.
<para>(Also see DirectX SDK: ID3D11DeviceContext::RSGetState, ID3D11DeviceContext::RSSetState)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RasterizerPipelineStage.BoundedGetViewports(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11rasterizerpipelinestage.h" line="45">
<summary>
Get the array of viewports bound to the rasterizer stage
<para>(Also see DirectX SDK: ID3D11DeviceContext::RSGetViewports)</para>
</summary>
<param name="maxNumberOfViewports">The input specifies the maximum number of viewports (ranges from 0 to D3D11_VIEWPORT_AND_SCISSORRECT_OBJECT_COUNT_PER_PIPELINE) to retrieve, the output contains the actual number of viewports returned.</param>
<returns>A collection of Viewport structures that are bound to the device. 
If the number of viewports (in maxNumberOfViewports) is greater than the actual number of viewports currently bound, 
then the collection will be trimmed to contain only the currently bound. 
See the structure page for details about how the viewport size is dependent on the device feature level 
which has changed between Direct3D 11 and Direct3D 10.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.RasterizerPipelineStage.Viewports" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11rasterizerpipelinestage.h" line="57">
<summary>
Bind an array of viewports to the rasterizer stage of the pipeline.
<para>(Also see DirectX SDK: ID3D11DeviceContext::RSSetViewports)</para>
</summary>
<param name="viewports">A collection of Viewport structures to bind to the device. 
See the SDK for details about how the viewport size is dependent on the device feature 
level which has changed between Direct3D 11 and Direct3D 10.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.StreamOutputPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11streamoutputpipelinestage.h" line="8">
<summary>
StreamOutput pipeline stage. 
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.StreamOutputPipelineStage.GetTargets(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11streamoutputpipelinestage.h" line="15">
<summary>
Get the target output buffers for the stream-output stage of the pipeline.
<para>(Also see DirectX SDK: ID3D11DeviceContext::SOGetTargets)</para>
</summary>
<param name="bufferCount">Number of buffers to get.</param>
<returns>A collection of output buffers (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/> to be retrieved from the device.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.StreamOutputPipelineStage.SetTargets(System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer},System.UInt32[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11streamoutputpipelinestage.h" line="23">
<summary>
Set the target output buffers for the stream-output stage of the pipeline.
<para>(Also see DirectX SDK: ID3D11DeviceContext::SOSetTargets)</para>
</summary>
<param name="targets">The collection of output buffers (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/> to bind to the device. 
The buffers must have been created with the <b>StreamOutput</b> flag.
A maximum of four output buffers can be set. If less than four are defined by the call, the remaining buffer slots are set to NULL.</param>
<param name="offsets">Array of offsets to the output buffers from ppBuffers, 
one offset for each buffer. The offset values must be in bytes.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShaderPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11vertexshaderpipelinestage.h" line="9">
<summary>
Vertex Shader pipeline stage. 
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShaderPipelineStage.GetConstantBuffers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11vertexshaderpipelinestage.h" line="16">
<summary>
Get the constant buffers used by the vertex shader pipeline stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::VSGetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin retrieving constant buffers from (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="bufferCount">Number of buffers to retrieve (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - startSlot).</param>
<returns>Collection of constant buffer objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/> to be returned by the method.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShaderPipelineStage.GetSamplers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11vertexshaderpipelinestage.h" line="25">
<summary>
Get an array of sampler states from the vertex shader pipeline stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::VSGetSamplers)</para>
</summary>
<param name="startSlot">Index into a zero-based array to begin getting samplers from (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplerCount">Number of samplers to get from a device context. Each pipeline stage has a total of 16 sampler slots available (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - startSlot).</param>
<returns>Collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/> to be returned by the device.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShaderPipelineStage.GetShaderAndClasses(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11vertexshaderpipelinestage.h" line="34">
<summary>
Get the vertex shader currently set on the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::VSGetShader)</para>
</summary>
<param name="classInstanceCount">The number of class-instance elements requested.</param>
<returns>
A VertexShader object and its classes (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShader"/>, <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>)
<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShader"/>, <seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>.
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShaderPipelineStage.Shader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11vertexshaderpipelinestage.h" line="45">
<summary>
Get the vertex shader currently set on the device. (See <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShader"/>.
<para>(Also see DirectX SDK: ID3D11DeviceContext::VSGetShader, ID3D11DeviceContext::VSSetShader)</para>
Passing in null disables the shader for this pipeline stage.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShaderPipelineStage.GetShaderResources(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11vertexshaderpipelinestage.h" line="56">
<summary>
Get the vertex shader resources.
<para>(Also see DirectX SDK: ID3D11DeviceContext::VSGetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin getting shader resources from (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="viewCount">The number of resources to get from the device. Up to a maximum of 128 slots are available for shader resources (ranges from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - startSlot).</param>
<returns>Collection of shader resource views to be returned by the device.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShaderPipelineStage.SetConstantBuffers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11vertexshaderpipelinestage.h" line="65">
<summary>
Set the constant buffers used by the vertex shader pipeline stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::VSSetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting constant buffers to (ranges from 0 to D3D11_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="constantBuffers">Collection of constant buffers (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.D3DBuffer"/> being given to the device.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShaderPipelineStage.SetSamplers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11vertexshaderpipelinestage.h" line="73">
<summary>
Set an array of sampler states to the vertex shader pipeline stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::VSSetSamplers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting samplers to (ranges from 0 to D3D11_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplers">A collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.SamplerState"/>. See Remarks.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShaderPipelineStage.SetShader(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShader,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11vertexshaderpipelinestage.h" line="81">
<summary>
Set a vertex shader to the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::VSSetShader)</para>
</summary>
<param name="vertexShader">A vertex shader (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShader"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShader"/>. 
Passing in null disables the shader for this pipeline stage.</param>
<param name="classInstances">A collection of class-instance objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ClassInstance"/>. 
Each interface used by a shader must have a corresponding class instance or the shader will get disabled. 
Set this parameter to null if the shader does not use any interfaces.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShaderPipelineStage.SetShader(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShader})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11vertexshaderpipelinestage.h" line="92">
<summary>
Set a vertex shader to the device.
<para>(Also see DirectX SDK: ID3D11DeviceContext::VSSetShader)</para>
</summary>
<param name="shaderAndClasses">
A VertexShader object and its classes (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShader"/>, <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>)
<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShader"/>, <seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderAndClasses`1"/>.
Passing in null for the shader disables the shader for this pipeline stage.
</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.VertexShaderPipelineStage.SetShaderResources(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D11.ShaderResourceView})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11vertexshaderpipelinestage.h" line="103">
<summary>
Bind an array of shader resources to the vertex-shader stage.
<para>(Also see DirectX SDK: ID3D11DeviceContext::VSSetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting shader resources to (range is from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="shaderResourceViews">Collection of shader resource view objects to set to the device.
Up to a maximum of 128 slots are available for shader resources (range is from 0 to D3D11_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - startSlot).</param>
</member>
</members>
</doc>