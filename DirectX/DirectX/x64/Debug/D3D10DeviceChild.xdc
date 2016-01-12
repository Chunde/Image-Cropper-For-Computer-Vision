<?xml version="1.0"?><doc>
<members>
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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="14">
<summary>
The device interface represents a virtual adapter for Direct3D 10.1; it is used to perform rendering and create Direct3D resources.
<para>To create a D3DDevice1 instance, use one of the static factory method overloads: CreateDevice1() or CreateDeviceAndSwapChain1().</para>
<para>(Also see DirectX SDK: ID3D10Device1)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.CreateBlendState1(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BlendDescription1)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="23">
<summary>
Create a blend-state object that encapsules blend state for the output-merger stage.
<para>(Also see DirectX SDK: ID3D10Device1::CreateBlendState1)</para>
</summary>
<param name="blendStateDescription">A blend-state description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BlendDescription1"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.BlendDescription1"/>.</param>
<returns>A blend-state object created (see BlendState1 Object).</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.CreateShaderResourceView1(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DResource,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceViewDescription1)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="31">
<summary>
Create a shader-resource view for accessing data in a resource.
<para>(Also see DirectX SDK: ID3D10Device1::CreateShaderResourceView1)</para>
</summary>
<param name="resource">Pointer to the resource that will serve as input to a shader. This resource must have been created with the ShaderResource flag.</param>
<param name="description">A shader-resource-view description (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceViewDescription1"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.ShaderResourceViewDescription1"/>. Set this parameter to NULL to create a view that accesses the entire resource (using the format the resource was created with).</param>
<returns>A shader-resource view (see ShaderResourceView1)</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.DeviceFeatureLevel" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="40">
<summary>
Gets the feature level of the hardware device.
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.CreateDeviceAndSwapChain1(System.IntPtr)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="48">
<summary>
Create a Direct3D 10.1 device and a swap chain using the default hardware adapter 
and the most common settings.
<para>(Also see DirectX SDK: D3D10CreateDeviceAndSwapChain1() function)</para>
</summary>
<param name="windowHandle">The window handle to the output window.</param>
<returns>The created Direct3D 10.1 Device</returns>
<remarks>
The swap chain created can be retrieved from the <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.SwapChain"/> property.
If DirectX SDK environment variable is found, and the build is a Debug one,
this method will attempt to use <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceOptions"/>.Debug flag. This should allow 
using the InfoQueue object.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.CreateDeviceAndSwapChain1(Microsoft.WindowsAPICodePack.DirectX.Graphics.Adapter,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DriverType,System.String,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.CreateDeviceOptions,Microsoft.WindowsAPICodePack.DirectX.Direct3D.FeatureLevel,Microsoft.WindowsAPICodePack.DirectX.Graphics.SwapChainDescription)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="63">
<summary>
Create a Direct3D 10.1 device and a swap chain.
<para>(Also see DirectX SDK: D3D10CreateDeviceAndSwapChain1() function)</para>
</summary>
<param name="adapter">An Adapter object. Can be null.</param>
<param name="driverType">The type of driver for the device.</param>
<param name="softwareRasterizerLibrary">A path the DLL that implements a software rasterizer. Must be NULL if driverType is non-software.</param>
<param name="options">Device creation flags that enable API layers. These flags can be bitwise OR'd together.</param>
<param name="hardwareLevel">The feature level supported by this device.</param>
<param name="swapChainDescription">Description of the swap chain.</param>
<returns>The created Direct3D 10.1 Device</returns>
<remarks>
The swap chain created can be retrieved from the <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.SwapChain"/> property.
By default, all Direct3D 10 calls are handled in a thread-safe way. 
By creating a single-threaded device (using <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceOptions"/>.SingleThreaded), 
you disable thread-safe calling.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.CreateDevice1" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="88">
<summary>
Create a Direct3D 10.1 device using the default hardware adapter and the most common settings.
<para>(Also see DirectX SDK: D3D10CreateDevice1() function)</para>
</summary>
<returns>The created Direct3D 10.1 Device</returns>
<remarks>
If DirectX SDK environment variable is found, and the build is a Debug one,
this method will attempt to use <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceOptions"/>.Debug flag. This should allow 
using the InfoQueue object.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.CreateDevice1(Microsoft.WindowsAPICodePack.DirectX.Graphics.Adapter,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.DriverType,System.String,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.CreateDeviceOptions,Microsoft.WindowsAPICodePack.DirectX.Direct3D.FeatureLevel)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="100">
<summary>
Create a Direct3D 10.1 device. 
<para>(Also see DirectX SDK: D3D10CreateDevice1() function)</para>
</summary>
<param name="adapter">An Adapter object. Can be null.</param>
<param name="driverType">The type of driver for the device.</param>
<param name="options">Device creation flags that enable API layers. These flags can be bitwise OR'd together.</param>
<param name="softwareRasterizerLibrary">A path the DLL that implements a software rasterizer. Must be NULL if driverType is non-software.</param>
<param name="hardwareLevel">The highest hardware feature level supported by this device.</param>
<returns>The created Direct3D 10.1 Device</returns>
<remarks>By default, all Direct3D 10 calls are handled in a thread-safe way. 
By creating a single-threaded device (using <see cref="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice.CreateDeviceOptions"/>.SingleThreaded), 
you disable thread-safe calling.
</remarks>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.D3DDevice1.CreateEffectFromCompiledBinary(System.IO.BinaryReader,System.Int32,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectPool)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10device1.h" line="121">
<summary>
Loads a precompiled effect from a binary data stream.
<para>(Also see DirectX SDK: D3D10CreateEffectFromMemory() function)</para>
</summary>
<param name="binaryEffect">The binary data stream.</param>
<param name="effectCompileOptions">Effect compile options</param>
<param name="effectPool">A memory space for effect variables shared across effects.</param>
</member>
</members>
</doc>