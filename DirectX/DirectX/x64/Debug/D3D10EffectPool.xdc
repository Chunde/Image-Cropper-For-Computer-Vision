<?xml version="1.0"?><doc>
<members>
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
</members>
</doc>