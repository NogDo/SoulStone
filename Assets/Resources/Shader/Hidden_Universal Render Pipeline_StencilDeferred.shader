//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Universal Render Pipeline/StencilDeferred" {
Properties {
_StencilRef ("StencilRef", Float) = 0
_StencilReadMask ("StencilReadMask", Float) = 0
_StencilWriteMask ("StencilWriteMask", Float) = 0
_LitPunctualStencilRef ("LitPunctualStencilWriteMask", Float) = 0
_LitPunctualStencilReadMask ("LitPunctualStencilReadMask", Float) = 0
_LitPunctualStencilWriteMask ("LitPunctualStencilWriteMask", Float) = 0
_SimpleLitPunctualStencilRef ("SimpleLitPunctualStencilWriteMask", Float) = 0
_SimpleLitPunctualStencilReadMask ("SimpleLitPunctualStencilReadMask", Float) = 0
_SimpleLitPunctualStencilWriteMask ("SimpleLitPunctualStencilWriteMask", Float) = 0
_LitDirStencilRef ("LitDirStencilRef", Float) = 0
_LitDirStencilReadMask ("LitDirStencilReadMask", Float) = 0
_LitDirStencilWriteMask ("LitDirStencilWriteMask", Float) = 0
_SimpleLitDirStencilRef ("SimpleLitDirStencilRef", Float) = 0
_SimpleLitDirStencilReadMask ("SimpleLitDirStencilReadMask", Float) = 0
_SimpleLitDirStencilWriteMask ("SimpleLitDirStencilWriteMask", Float) = 0
_ClearStencilRef ("ClearStencilRef", Float) = 0
_ClearStencilReadMask ("ClearStencilReadMask", Float) = 0
_ClearStencilWriteMask ("ClearStencilWriteMask", Float) = 0
}
SubShader {
 Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
 Pass {
  Name "Stencil Volume"
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ColorMask 0 0
  ZClip Off
  ZWrite Off
  Cull Off
  Stencil {
   ReadMask 0
   WriteMask 0
   CompFront NotEqual
   PassFront Keep
   FailFront Keep
   ZFailFront Invert
   CompBack NotEqual
   PassBack Keep
   FailBack Keep
   ZFailBack Invert
  }
  GpuProgramID 25716
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SPOT" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Deferred Punctual Light (Lit)"
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  Blend One One, Zero One
  ZClip Off
  ZTest GEqual
  ZWrite Off
  Cull Front
  Stencil {
   ReadMask 0
   WriteMask 0
   Comp Equal
   Pass Zero
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 103814
Program "vp" {
SubProgram "d3d11 " {
Keywords { "_POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SPOT" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_LIT" "_POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_LIT" "_POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_GBUFFER_NORMALS_OCT" "_LIT" "_POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_GBUFFER_NORMALS_OCT" "_LIT" "_POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_GBUFFER_NORMALS_OCT" "_LIT" "_SHADOWS_SOFT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_GBUFFER_NORMALS_OCT" "_LIT" "_SHADOWS_SOFT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_LIT" "_SHADOWS_SOFT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_LIT" "_SHADOWS_SOFT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_LIT" "_POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_LIT" "_POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_GBUFFER_NORMALS_OCT" "_LIT" "_POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_GBUFFER_NORMALS_OCT" "_LIT" "_POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_LIT" "_POINT" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_LIT" "_POINT" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_GBUFFER_NORMALS_OCT" "_LIT" "_POINT" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_GBUFFER_NORMALS_OCT" "_LIT" "_POINT" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_LIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_LIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_GBUFFER_NORMALS_OCT" "_LIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_GBUFFER_NORMALS_OCT" "_LIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_GBUFFER_NORMALS_OCT" "_LIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_GBUFFER_NORMALS_OCT" "_LIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_LIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_LIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Deferred Punctual Light (SimpleLit)"
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  Blend One One, Zero One
  ZClip Off
  ZTest GEqual
  ZWrite Off
  Cull Front
  Stencil {
   ReadMask 0
   WriteMask 0
   CompBack Equal
   PassBack Zero
   FailBack Keep
   ZFailBack Keep
  }
  GpuProgramID 180428
Program "vp" {
SubProgram "d3d11 " {
Keywords { "_POINT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SPOT" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_POINT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_POINT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_GBUFFER_NORMALS_OCT" "_POINT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_GBUFFER_NORMALS_OCT" "_POINT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_GBUFFER_NORMALS_OCT" "_SHADOWS_SOFT" "_SIMPLELIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_GBUFFER_NORMALS_OCT" "_SHADOWS_SOFT" "_SIMPLELIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_SHADOWS_SOFT" "_SIMPLELIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" "_SIMPLELIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_POINT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_POINT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_GBUFFER_NORMALS_OCT" "_POINT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_GBUFFER_NORMALS_OCT" "_POINT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_POINT" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_POINT" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_GBUFFER_NORMALS_OCT" "_POINT" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_GBUFFER_NORMALS_OCT" "_POINT" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_SIMPLELIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_SIMPLELIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_GBUFFER_NORMALS_OCT" "_SIMPLELIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_GBUFFER_NORMALS_OCT" "_SIMPLELIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_GBUFFER_NORMALS_OCT" "_SIMPLELIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_GBUFFER_NORMALS_OCT" "_SIMPLELIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_SIMPLELIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_SIMPLELIT" "_SPOT" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Deferred Directional Light (Lit)"
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  Blend One One, Zero One
  ZTest NotEqual
  ZWrite Off
  Cull Off
  Stencil {
   ReadMask 0
   WriteMask 0
   Comp Equal
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 208078
Program "vp" {
SubProgram "d3d11 " {
Keywords { "_DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_LIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_LIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_LIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_LIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_LIT" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_LIT" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_LIT" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_LIT" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Deferred Directional Light (SimpleLit)"
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  Blend One One, Zero One
  ZTest NotEqual
  ZWrite Off
  Cull Off
  Stencil {
   ReadMask 0
   WriteMask 0
   Comp Equal
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 263993
Program "vp" {
SubProgram "d3d11 " {
Keywords { "_DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_MAIN_LIGHT_SHADOWS" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_DEFERRED_ADDITIONAL_LIGHT_SHADOWS" "_DEFERRED_SUBTRACTIVE_LIGHTING" "_DIRECTIONAL" "_GBUFFER_NORMALS_OCT" "_MAIN_LIGHT_SHADOWS" "_SIMPLELIT" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Fog"
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  Blend OneMinusSrcAlpha SrcAlpha, Zero One
  ZTest NotEqual
  ZWrite Off
  Cull Off
  GpuProgramID 354403
Program "vp" {
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_FOG" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_FOG" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_FOG" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "ClearStencilPartial"
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ColorMask 0 0
  ZTest NotEqual
  ZWrite Off
  Cull Off
  Stencil {
   ReadMask 0
   WriteMask 0
   Comp NotEqual
   Pass Zero
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 405489
Program "vp" {
SubProgram "d3d11 " {
Keywords { "_CLEAR_STENCIL_PARTIAL" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "_CLEAR_STENCIL_PARTIAL" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Hidden/Universal Render Pipeline/FallbackError"
}