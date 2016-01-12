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
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="27">
<summary>
The EffectVariable interface is the base class for all effect variables.
<para>(Also see DirectX SDK: ID3D10EffectVariable)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsBlend" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="34">
<summary>
Get a effect-blend variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsBlend)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsConstantBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="43">
<summary>
Get a constant buffer.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsConstantBuffer)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsDepthStencil" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="52">
<summary>
Get a depth-stencil variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsDepthStencil)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsDepthStencilView" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="61">
<summary>
Get a depth-stencil-view variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsDepthStencilView)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsMatrix" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="70">
<summary>
Get a matrix variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsMatrix)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsRasterizer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="79">
<summary>
Get a rasterizer variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsRasterizer)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsRenderTargetView" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="88">
<summary>
Get a render-target-view variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsRenderTargetView)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsSampler" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="97">
<summary>
Get a sampler variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsSampler)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsScalar" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="106">
<summary>
Get a scalar variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsScalar)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsShader" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="115">
<summary>
Get a shader variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsShader)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsShaderResource" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="124">
<summary>
Get a shader-resource variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsShaderResource)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsString" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="133">
<summary>
Get a string variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsString)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.AsVector" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="142">
<summary>
Get a vector variable.
<para>(Also see DirectX SDK: ID3D10EffectVariable::AsVector)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.GetAnnotationByIndex(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="151">
<summary>
Get an annotation by index.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetAnnotationByIndex)</para>
</summary>
<param name="index">A zero-based index.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.GetAnnotationByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="158">
<summary>
Get an annotation by name.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetAnnotationByName)</para>
</summary>
<param name="name">The annotation name.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.Description" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="165">
<summary>
Get a description.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetDesc)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.GetElement(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="174">
<summary>
Get an array element.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetElement)</para>
</summary>
<param name="index">A zero-based index; otherwise 0.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.GetMemberByIndex(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="181">
<summary>
Get a structure member by index.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetMemberByIndex)</para>
</summary>
<param name="index">A zero-based index.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.GetMemberByName(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="188">
<summary>
Get a structure member by name.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetMemberByName)</para>
</summary>
<param name="name">Member name.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.GetMemberBySemantic(System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="195">
<summary>
Get a structure member by semantic.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetMemberBySemantic)</para>
</summary>
<param name="semantic">The semantic.</param>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.ParentConstantBuffer" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="202">
<summary>
Get a constant buffer.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetParentConstantBuffer)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.EffectType" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="214">
<summary>
Get type information.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetType)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.IsValid" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="223">
<summary>
Compare the data type with the data stored.
<para>(Also see DirectX SDK: ID3D10EffectVariable::IsValid)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.GetRawValue(System.UInt32)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="232">
<summary>
Get data.
<para>(Also see DirectX SDK: ID3D10EffectVariable::GetRawValue)</para>
</summary>
<param name="size">The number of bytes to get.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.EffectVariable.SetRawValue(System.Byte[])" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10effectvariable.h" line="239">
<summary>
Set data.
<para>(Also see DirectX SDK: ID3D10EffectVariable::SetRawValue)</para>
</summary>
<param name="data">The variable to set.</param>
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
</members>
</doc>