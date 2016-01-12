<?xml version="1.0"?><doc>
<members>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.LibraryLoader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\libraryloader.h" line="21">
<summary>
A private class supporting dll and functions loading.
Loaded dlls and functions are cached in a hash table.
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.GeometryShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10geometryshader.h" line="10">
<summary>
A geometry-shader interface manages an executable program (a geometry shader) that controls the geometry-shader stage.
<para>(Also see DirectX SDK: ID3D10GeometryShader)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputLayout" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10inputlayout.h" line="10">
<summary>
An input-layout interface accesses the input data for the input-assembler stage.
<para>(Also see DirectX SDK: ID3D10InputLayout)</para>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.PipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10pipelinestage.h" line="11">
<summary>
A pipeline stage. base class for all pipline stage related classes.
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.GeometryShaderPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10geometryshaderpipelinestage.h" line="8">
<summary>
Geometry Shader pipeline stage. 
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.GeometryShaderPipelineStage.GetConstantBuffers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10geometryshaderpipelinestage.h" line="14">
<summary>
Get the constant buffers used by the geometry shader pipeline stage.
<para>(Also see DirectX SDK: ID3D10Device::GSGetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin retrieving constant buffers from (ranges from 0 to D3D10_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="bufferCount">Number of buffers to retrieve (ranges from 0 to D3D10_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - startSlot).</param>
<returns>A collection of constant buffer objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/> to be returned by the method.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.GeometryShaderPipelineStage.GetSamplers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10geometryshaderpipelinestage.h" line="23">
<summary>
Get an array of sampler state objects from the geometry shader pipeline stage.
<para>(Also see DirectX SDK: ID3D10Device::GSGetSamplers)</para>
</summary>
<param name="startSlot">Index into a zero-based array to begin getting samplers from (ranges from 0 to D3D10_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplerCount">Number of samplers to get from a device context. Each pipeline stage has a total of 16 sampler slots available (ranges from 0 to D3D10_COMMONSHADER_SAMPLER_SLOT_COUNT - startSlot).</param>
<returns>A collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState"/>.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.GeometryShaderPipelineStage.Shader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10geometryshaderpipelinestage.h" line="32">
<summary>
Gets or sets the geometry shader currently set on the device.
<para>(Also see DirectX SDK: ID3D10Device::GSGetShader, ID3D10Device::GSSetShader)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.GeometryShaderPipelineStage.GetShaderResources(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10geometryshaderpipelinestage.h" line="42">
<summary>
Get the geometry shader resources.
<para>(Also see DirectX SDK: ID3D10Device::GSGetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin getting shader resources from (ranges from 0 to D3D10_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="viewCount">The number of resources to request from the device. Up to a maximum of 128 slots are available for shader resources (ranges from 0 to D3D10_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - startSlot).</param>
<returns>Collection of shader resource view objects to be returned by the device.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.GeometryShaderPipelineStage.SetConstantBuffers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10geometryshaderpipelinestage.h" line="51">
<summary>
Set the constant buffers used by the geometry shader pipeline stage.
<para>(Also see DirectX SDK: ID3D10Device::GSSetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting constant buffers to (ranges from 0 to D3D10_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="constantBuffers">Collection of constant buffers (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/> being given to the device.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.GeometryShaderPipelineStage.SetSamplers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10geometryshaderpipelinestage.h" line="59">
<summary>
Set an array of sampler states to the geometry shader pipeline stage.
<para>(Also see DirectX SDK: ID3D10Device::GSSetSamplers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting samplers to (ranges from 0 to D3D10_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplers">A collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState"/>. See Remarks.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.GeometryShaderPipelineStage.SetShaderResources(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceView})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10geometryshaderpipelinestage.h" line="67">
<summary>
Bind an array of shader resources to the geometry shader stage.
<para>(Also see DirectX SDK: ID3D10Device::GSSetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting shader resources to (ranges from 0 to D3D10_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="shaderResourceViews">Collection of shader resource view objects to set to the device.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputAssemblerPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10inputassemblerpipelinestage.h" line="9">
<summary>
InputAssembler pipeline stage. 
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputAssemblerPipelineStage.IndexBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10inputassemblerpipelinestage.h" line="15">
<summary>
Get or sets the index buffer that is bound to the input-assembler stage.
(see <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputAssemblerPipelineStage.IndexBuffer"/>)<seealso cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputAssemblerPipelineStage.IndexBuffer"/>
<para>(Also see DirectX SDK: ID3D10Device::IAGetIndexBuffer, ID3D10Device::IASetIndexBuffer)</para>
</summary>
<remarks>Calling this method using a buffer that is currently bound for writing (i.e. bound to the stream output pipeline stage) will effectively 
bind null instead because a buffer cannot be bound as both an input and an output at the same time.</remarks>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputAssemblerPipelineStage.InputLayout" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10inputassemblerpipelinestage.h" line="28">
<summary>
Gets or sets the input-layout object that is bound to the input-assembler stage.
<para>(Also see DirectX SDK: ID3D10Device::IAGetInputLayout, ID3D10Device::IASetInputLayout)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputAssemblerPipelineStage.PrimitiveTopology" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10inputassemblerpipelinestage.h" line="38">
<summary>
Gets or sets information about the primitive type, and data order that describes input data for the input assembler stage.
<para>(Also see DirectX SDK: ID3D10Device::IAGetPrimitiveTopology, ID3D10Device::IASetPrimitiveTopology)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputAssemblerPipelineStage.GetVertexBuffers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10inputassemblerpipelinestage.h" line="48">
<summary>
Get the vertex buffers bound to the input-assembler stage.
<para>(Also see DirectX SDK: ID3D10Device::IAGetVertexBuffers)</para>
</summary>
<param name="startSlot">The input slot of the first vertex buffer to get. The first vertex buffer is explicitly bound to the start slot; this causes each additional vertex buffer in the array to be implicitly bound to each subsequent input slot. There are 16 input slots.</param>
<param name="bufferCount">The number of vertex buffers to get starting at the offset. The number of buffers (plus the starting slot) cannot exceed the total number of IA-stage input slots.</param>
<returns>A collection of vertex buffers returned by the method (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexBuffer"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputAssemblerPipelineStage.SetVertexBuffers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer},System.UInt32[],System.UInt32[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10inputassemblerpipelinestage.h" line="57">
<summary>
Bind an array of vertex buffers to the input-assembler stage.
<para>(Also see DirectX SDK: ID3D10Device::IASetVertexBuffers)</para>
</summary>
<param name="startSlot">The first input slot for binding. The first vertex buffer is explicitly bound to the start slot; this causes each additional vertex buffer in the array to be implicitly bound to each subsequent input slot. There are 16 input slots (ranges from 0 to D3D10_IA_VERTEX_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="vertexBuffers">A collection of vertex buffers (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/>. 
The number of buffers (plus the starting slot) cannot exceed the total number of IA-stage input slots (ranges from 0 to D3D10_IA_VERTEX_INPUT_RESOURCE_SLOT_COUNT - startSlot).
The vertex buffers must have been created with the VertexBuffer flag.</param>
<param name="strides">An array of stride values; one stride value for each buffer in the vertex-buffer array. Each stride is the size (in bytes) of the elements that are to be used from that vertex buffer.</param>
<param name="offsets">An array of offset values; one offset value for each buffer in the vertex-buffer array. Each offset is the number of bytes between the first element of a vertex buffer and the first element that will be used.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InputAssemblerPipelineStage.SetVertexBuffers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexBuffer})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10inputassemblerpipelinestage.h" line="69">
<summary>
Bind an array of vertex buffers to the input-assembler stage.
<para>(Also see DirectX SDK: ID3D10Device::IASetVertexBuffers)</para>
</summary>
<param name="startSlot">The first input slot for binding. The first vertex buffer is explicitly bound to the start slot; this causes each additional vertex buffer in the array to be implicitly bound to each subsequent input slot. There are 16 input slots (ranges from 0 to D3D10_IA_VERTEX_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="vertexBuffers">
A collection of vertex buffers (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexBuffer"/>. 
The number of buffers (plus the starting slot) cannot exceed the total number of IA-stage input slots (ranges from 0 to D3D10_IA_VERTEX_INPUT_RESOURCE_SLOT_COUNT - startSlot).
The vertex buffers must have been created with the <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BindingOptions"/><b>.VertexBuffer flag</b>.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.OutputMergerBlendState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10outputmergerblendstate.h" line="13">
<summary>
Stores the blend state, including blend factors and mask, for the merger pipeline stage
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.OutputMergerBlendState.BlendState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10outputmergerblendstate.h" line="19">
<summary>
Gets the BlendState object for this merger pipeline stage blend state
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.OutputMergerBlendState.BlendFactor" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10outputmergerblendstate.h" line="27">
<summary>
Gets the blend factors for this merger pipeline stage blend state
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.OutputMergerBlendState.SampleMask" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10outputmergerblendstate.h" line="35">
<summary>
Gets the sample mask for this merger pipeline stage blend state
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.OutputMergerRenderTargets" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10outputmergerrendertargets.h" line="11">
<summary>
Stores the render targets for a merger pipeline stage
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.OutputMergerPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10outputmergerpipelinestage.h" line="10">
<summary>
OutputMerger pipeline stage. 
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.OutputMergerPipelineStage.BlendState" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10outputmergerpipelinestage.h" line="17">
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
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.OutputMergerPipelineStage.RenderTargets" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10outputmergerpipelinestage.h" line="40">
<summary>
Get or sets render targets and depth-stencil buffer bound to the output-merger stage.
<para>(Also see DirectX SDK: ID3D10Device::OMGetRenderTargets, ID3D10Device::OMSetRenderTargets)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.OutputMergerPipelineStage.DepthStencilView" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10outputmergerpipelinestage.h" line="50">
<summary>
Get the depth stencil view bound to the output-merger stage.
<para>(Also see DirectX SDK: ID3D10Device::OMGetRenderTargets)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.OutputMergerPipelineStage.GetDepthStencilStateAndReferenceValue(System.UInt32@)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10outputmergerpipelinestage.h" line="74">
<summary>
Gets the depth-stencil state of the output-merger stage.
<para>(Also see DirectX SDK: ID3D10Device::OMGetDepthStencilState)</para>
</summary>
<param name="stencilRef">The stencil reference value used in the depth-stencil test.</param>
<returns>A depth-stencil state object (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilState"/> to be filled with information from the device.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.OutputMergerPipelineStage.SetDepthStencilStateAndReferenceValue(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilState,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10outputmergerpipelinestage.h" line="82">
<summary>
Sets the depth-stencil state of the output-merger stage.
<para>(Also see DirectX SDK: ID3D10Device::OMSetDepthStencilState)</para>
</summary>
<param name="depthStencilState">A depth-stencil state interface (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DepthStencilState"/> to bind to the device. Set this to NULL to use the default state listed in DepthStencilDescription.</param>
<param name="stencilRef">Reference value to perform against when doing a depth-stencil test.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.PixelShaderPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10pixelshaderpipelinestage.h" line="8">
<summary>
Pixel Shader pipeline stage. 
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.PixelShaderPipelineStage.GetConstantBuffers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10pixelshaderpipelinestage.h" line="14">
<summary>
Get the constant buffers used by the pixel shader pipeline stage.
<para>(Also see DirectX SDK: ID3D10Device::PSGetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin retrieving constant buffers from (ranges from 0 to D3D10_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="bufferCount">Number of buffers to retrieve (ranges from 0 to D3D10_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - startSlot).</param>
<returns>Collection of constant buffer objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/> to be returned by the method.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.PixelShaderPipelineStage.GetSamplers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10pixelshaderpipelinestage.h" line="23">
<summary>
Get an array of sampler states from the pixel shader pipeline stage.
<para>(Also see DirectX SDK: ID3D10Device::PSGetSamplers)</para>
</summary>
<param name="startSlot">Index into a zero-based array to begin getting samplers from (ranges from 0 to D3D10_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplerCount">Number of samplers to get from a device context. Each pipeline stage has a total of 16 sampler slots available (ranges from 0 to D3D10_COMMONSHADER_SAMPLER_SLOT_COUNT - startSlot).</param>
<returns>Collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState"/> to be returned by the device.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.PixelShaderPipelineStage.Shader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10pixelshaderpipelinestage.h" line="32">
<summary>
Gets or sets the pixel shader currently set on the device.
Setting to null disables the shader for this pipeline stage.
<para>(Also see DirectX SDK: ID3D10Device::PSGetShader, ID3D10Device::PSSetShader)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.PixelShaderPipelineStage.GetShaderResources(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10pixelshaderpipelinestage.h" line="43">
<summary>
Get the pixel shader resources.
<para>(Also see DirectX SDK: ID3D10Device::PSGetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin getting shader resources from (ranges from 0 to D3D10_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="viewCount">The number of resources to get from the device. Up to a maximum of 128 slots are available for shader resources (ranges from 0 to D3D10_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - startSlot).</param>
<returns>Collection of shader resource view objects to be returned by the device.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.PixelShaderPipelineStage.SetConstantBuffers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10pixelshaderpipelinestage.h" line="52">
<summary>
Set the constant buffers used by the pixel shader pipeline stage.
<para>(Also see DirectX SDK: ID3D10Device::PSSetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting constant buffers to (ranges from 0 to D3D10_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="constantBuffers">Collection of constant buffers (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/> being given to the device.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.PixelShaderPipelineStage.SetSamplers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10pixelshaderpipelinestage.h" line="60">
<summary>
Set an array of sampler states to the pixel shader pipeline stage.
<para>(Also see DirectX SDK: ID3D10Device::PSSetSamplers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting samplers to (ranges from 0 to D3D10_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplers">A collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState"/>. See Remarks.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.PixelShaderPipelineStage.SetShaderResources(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceView})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10pixelshaderpipelinestage.h" line="68">
<summary>
Bind an array of shader resources to the pixel shader stage.
<para>(Also see DirectX SDK: ID3D10Device::PSSetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting shader resources to (ranges from 0 to D3D10_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="shaderResourceViews">Collection of shader resource view objects to set to the device.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RasterizerPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10rasterizerpipelinestage.h" line="8">
<summary>
Rasterizer pipeline stage. 
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RasterizerPipelineStage.BoundedGetScissorRects(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10rasterizerpipelinestage.h" line="15">
<summary>
Get the collection of scissor rectangles bound to the rasterizer stage.
<para>(Also see DirectX SDK: ID3D10Device::RSGetScissorRects)</para>
</summary>
<returns>A collection of scissor rectangles (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D.D3DRect"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D.D3DRect"/>.
If maximumNumberOfRects is greater than the number of scissor rects currently bound, 
then the collection will be trimmed to contain only the currently bound. 
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RasterizerPipelineStage.State" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10rasterizerpipelinestage.h" line="25">
<summary>
Gets or sets the rasterizer state from the rasterizer stage of the pipeline.
<para>(Also see DirectX SDK: ID3D10Device::RSGetState, ID3D10Device::RSSetState)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RasterizerPipelineStage.BoundedGetViewports(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10rasterizerpipelinestage.h" line="35">
<summary>
Get the array of viewports bound to the rasterizer stage
<para>(Also see DirectX SDK: ID3D10Device::RSGetViewports)</para>
</summary>
<param name="maxNumberOfViewports">The input specifies the maximum number of viewports (ranges from 0 to D3D10_VIEWPORT_AND_SCISSORRECT_OBJECT_COUNT_PER_PIPELINE) to retrieve, the output contains the actual number of viewports returned.</param>
<returns>A collection of Viewport structures that are bound to the device. 
If the number of viewports (in maxNumberOfViewports) is greater than the actual number of viewports currently bound, 
then the collection will be trimmed to contain only the currently bound. 
</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RasterizerPipelineStage.ScissorRects" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10rasterizerpipelinestage.h" line="46">
<summary>
Bind an array of scissor rectangles to the rasterizer stage.
<para>(Also see DirectX SDK: ID3D10Device::RSSetScissorRects)</para>
</summary>
<param name="rects">A collection of scissor rectangles (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D.D3DRect"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D.D3DRect"/>.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.RasterizerPipelineStage.Viewports" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10rasterizerpipelinestage.h" line="57">
<summary>
Bind an array of viewports to the rasterizer stage of the pipeline.
<para>(Also see DirectX SDK: ID3D10Device::RSSetViewports)</para>
</summary>
<param name="viewports">A collection of Viewport structures to bind to the device.</param>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StreamOutputPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10streamoutputpipelinestage.h" line="9">
<summary>
StreamOutput pipeline stage. 
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.StreamOutputPipelineStage.Targets" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10streamoutputpipelinestage.h" line="16">
<summary>
Gets or sets the target output buffers for the stream-output stage of the pipeline.
See <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.OutputBuffer"/>.
<para>(Also see DirectX SDK: ID3D10Device::SOGetTargets, ID3D10Device::SOSetTargets)</para>
</summary>
<remarks>
Always returns four targets. It may be set with fewer than four, in which case
the remaining targets will be set to null.
</remarks>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexShaderPipelineStage" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10vertexshaderpipelinestage.h" line="8">
<summary>
Vertex Shader pipeline stage. 
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexShaderPipelineStage.GetConstantBuffers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10vertexshaderpipelinestage.h" line="15">
<summary>
Get the constant buffers used by the vertex shader pipeline stage.
<para>(Also see DirectX SDK: ID3D10Device::VSGetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin retrieving constant buffers from (ranges from 0 to D3D10_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="bufferCount">Number of buffers to retrieve (ranges from 0 to D3D10_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - startSlot).</param>
<returns>Collection of constant buffer objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/> to be returned by the method.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexShaderPipelineStage.GetSamplers(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10vertexshaderpipelinestage.h" line="24">
<summary>
Get an array of sampler states from the vertex shader pipeline stage.
<para>(Also see DirectX SDK: ID3D10Device::VSGetSamplers)</para>
</summary>
<param name="startSlot">Index into a zero-based array to begin getting samplers from (ranges from 0 to D3D10_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplerCount">Number of samplers to get from a device context. Each pipeline stage has a total of 16 sampler slots available (ranges from 0 to D3D10_COMMONSHADER_SAMPLER_SLOT_COUNT - startSlot).</param>
<returns>Collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState"/> to be returned by the device.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexShaderPipelineStage.Shader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10vertexshaderpipelinestage.h" line="33">
<summary>
Gets or sets the vertex shader currently set on the device.
Passing in null disables the shader for this pipeline stage.
<para>(Also see DirectX SDK: ID3D10Device::VSGetShader, ID3D10Device::VSSetShader)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexShaderPipelineStage.GetShaderResources(System.UInt32,System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10vertexshaderpipelinestage.h" line="44">
<summary>
Get the vertex shader resources.
<para>(Also see DirectX SDK: ID3D10Device::VSGetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin getting shader resources from (ranges from 0 to D3D10_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="viewCount">The number of resources to get from the device. Up to a maximum of 128 slots are available for shader resources (ranges from 0 to D3D10_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - startSlot).</param>
<returns>Collection of shader resource views to be returned by the device.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexShaderPipelineStage.SetConstantBuffers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10vertexshaderpipelinestage.h" line="53">
<summary>
Set the constant buffers used by the vertex shader pipeline stage.
<para>(Also see DirectX SDK: ID3D10Device::VSSetConstantBuffers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting constant buffers to (ranges from 0 to D3D10_COMMONSHADER_CONSTANT_BUFFER_API_SLOT_COUNT - 1).</param>
<param name="constantBuffers">Collection of constant buffers (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DBuffer"/> being given to the device.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexShaderPipelineStage.SetSamplers(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10vertexshaderpipelinestage.h" line="61">
<summary>
Set an array of sampler states to the vertex shader pipeline stage.
<para>(Also see DirectX SDK: ID3D10Device::VSSetSamplers)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting samplers to (ranges from 0 to D3D10_COMMONSHADER_SAMPLER_SLOT_COUNT - 1).</param>
<param name="samplers">A collection of sampler-state objects (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.SamplerState"/>. See Remarks.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.VertexShaderPipelineStage.SetShaderResources(System.UInt32,System.Collections.Generic.IEnumerable`1{Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceView})" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10vertexshaderpipelinestage.h" line="69">
<summary>
Bind an array of shader resources to the vertex-shader stage.
<para>(Also see DirectX SDK: ID3D10Device::VSSetShaderResources)</para>
</summary>
<param name="startSlot">Index into the device's zero-based array to begin setting shader resources to (range is from 0 to D3D10_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - 1).</param>
<param name="shaderResourceViews">Collection of shader resource view objects to set to the device.
Up to a maximum of 128 slots are available for shader resources (range is from 0 to D3D10_COMMONSHADER_INPUT_RESOURCE_SLOT_COUNT - startSlot).</param>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Asynchronous" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10asynchronous.h" line="10">
<summary>
This class encapsulates methods for retrieving data from the GPU asynchronously.
<para>(Also see DirectX SDK: ID3D10Asynchronous)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Asynchronous.Begin" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10asynchronous.h" line="18">
<summary>
Starts the collection of GPU data.
<para>(Also see DirectX SDK: ID3D10Asynchronous::Begin)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Asynchronous.End" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10asynchronous.h" line="24">
<summary>
Ends the collection of GPU data.
<para>(Also see DirectX SDK: ID3D10Asynchronous::End)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Asynchronous.GetData(System.IntPtr,System.UInt32,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.AsyncGetDataOptions)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10asynchronous.h" line="30">
<summary>
Get data from the GPU asynchronously.
<para>(Also see DirectX SDK: ID3D10Asynchronous::GetData)</para>
</summary>
<param name="data">Address of memory that will receive the data. If NULL, GetData will be used only to check status. The type of data output depends on the type of asynchronous object. See Remarks.</param>
<param name="dataSize">Size of the data to retrieve or 0. This value can be obtained with Asynchronous.GetDataSize. Must be 0 when pData is NULL.</param>
<param name="options">Optional flags. Can be 0 or any combination of the flags enumerated by AsyncGetDataOptions.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Asynchronous.DataSize" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10asynchronous.h" line="38">
<summary>
Get the size of the data (in bytes) that is output when calling Asynchronous.GetData.
<para>(Also see DirectX SDK: ID3D10Asynchronous::GetDataSize)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DCounter" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10counter.h" line="10">
<summary>
This class encapsulates methods for measuring GPU performance.
<para>(Also see DirectX SDK: ID3D10Counter)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DCounter.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10counter.h" line="18">
<summary>
Get a counter description.
<para>(Also see DirectX SDK: ID3D10Counter::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DQuery" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10query.h" line="10">
<summary>
A query interface queries information from the GPU.
<para>(Also see DirectX SDK: ID3D10Query)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DQuery.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10query.h" line="18">
<summary>
Get a query description.
<para>(Also see DirectX SDK: ID3D10Query::GetDesc)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DPredicate" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10predicate.h" line="11">
<summary>
A predicate interface determines whether geometry should be processed depending on the results of a previous draw call.
<para>(Also see DirectX SDK: ID3D10Predicate)</para>
</summary>
</member>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="11">
<summary>
An information-queue interface stores, retrieves, and filters debug messages. The queue consists of a message queue, an optional storage filter stack, and a optional retrieval filter stack.
<para>(Also see DirectX SDK: ID3D10InfoQueue)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.AddApplicationMessage(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity,System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="19">
<summary>
Add a user-defined message to the message queue and send that message to debug output.
<para>(Also see DirectX SDK: ID3D10InfoQueue::AddApplicationMessage)</para>
</summary>
<param name="severity">Severity of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>.</param>
<param name="description">Message string.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.AddMessage(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId,System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="27">
<summary>
Add a Direct3D 10 debug message to the message queue and send that message to debug output.
<para>(Also see DirectX SDK: ID3D10InfoQueue::AddMessage)</para>
</summary>
<param name="category">Category of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory"/>.</param>
<param name="severity">Severity of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>.</param>
<param name="id">Unique identifier of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId"/>.</param>
<param name="description">User-defined message.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.ClearStoredMessages" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="37">
<summary>
Clear all messages from the message queue.
<para>(Also see DirectX SDK: ID3D10InfoQueue::ClearStoredMessages)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.GetBreakOnCategory(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="43">
<summary>
Get a message category to break on when a message with that category passes through the storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetBreakOnCategory)</para>
</summary>
<param name="category">Message category to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory"/>.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.GetBreakOnId(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="50">
<summary>
Get a message identifier to break on when a message with that identifier passes through the storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetBreakOnID)</para>
</summary>
<param name="id">Message identifier to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId"/>.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.GetBreakOnSeverity(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="57">
<summary>
Get a message severity level to break on when a message with that severity level passes through the storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetBreakOnSeverity)</para>
</summary>
<param name="severity">Message severity level to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.GetMessage(System.UInt64)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="64">
<summary>
Get a message from the message queue.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetMessage)</para>
</summary>
<param name="messageIndex">Index into message queue after an optional retrieval filter has been applied. 
This can be between 0 and the number of messages in the message queue that pass through the retrieval filter (which can be obtained with GetNumStoredMessagesAllowedByRetrievalFilter(). 
0 is the message at the front of the message queue.</param>
<returns>Returned message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Message"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Message"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.TryGetMessage(System.UInt64,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Message@)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="74">
<summary>
Try to get a message from the message queue.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetMessage)</para>
</summary>
<param name="messageIndex">Index into message queue after an optional retrieval filter has been applied. 
This can be between 0 and the number of messages in the message queue that pass through the retrieval filter 
(which can be obtained with StoredAllowedByRetrievalFilterCount property. 
Index 0 is the message at the front of the message queue. </param>        
<param name="message">Returned message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Message"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Message"/>.</param>      
<returns>True if successful; false otherwise.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.MessageCountLimit" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="86">
<summary>
Get or set the maximum number of messages that can be added to the message queue.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetMessageCountLimit)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.MuteDebugOutput" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="96">
<summary>
Get or set a boolean that turns the debug output on or off.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetMuteDebugOutput)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.AllowedByStorageFilterCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="106">
<summary>
Get the number of messages that were allowed to pass through a storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetNumMessagesAllowedByStorageFilter)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.DeniedByStorageFilterCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="115">
<summary>
Get the number of messages that were denied passage through a storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetNumMessagesDeniedByStorageFilter)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.DiscardedByMessageCountLimitCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="124">
<summary>
Get the number of messages that were discarded due to the message count limit.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetNumMessagesDiscardedByMessageCountLimit)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.StoredCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="134">
<summary>
Get the number of messages currently stored in the message queue.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetNumStoredMessages)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.StoredAllowedByRetrievalFilterCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="143">
<summary>
Get the number of messages that are able to pass through a retrieval filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetNumStoredMessagesAllowedByRetrievalFilter)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.SetBreakOnCategory(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="152">
<summary>
Set a message category to break on when a message with that category passes through the storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::SetBreakOnCategory)</para>
</summary>
<param name="category">Message category to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory"/>.</param>
<param name="enable">Turns this breaking condition on or off (true for on, false for off).</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.SetBreakOnId(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="160">
<summary>
Set a message identifier to break on when a message with that identifier passes through the storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::SetBreakOnID)</para>
</summary>
<param name="id">Message identifier to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId"/>.</param>
<param name="enable">Turns this breaking condition on or off (true for on, false for off).</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.SetBreakOnSeverity(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="168">
<summary>
Set a message severity level to break on when a message with that severity level passes through the storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::SetBreakOnSeverity)</para>
</summary>
<param name="severity">Message severity level to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>.</param>
<param name="enable">Turns this breaking condition on or off (true for on, false for off).</param>
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
</members>
</doc>