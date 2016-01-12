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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.PipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11pipelinestage.h" line="11">
<summary>
A pipeline stage. base class for all pipline stage related classes.
</summary>
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
</members>
</doc>