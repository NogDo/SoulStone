//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Universal Render Pipeline/ScreenSpaceAmbientOcclusion" {
Properties {
}
SubShader {
 Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
 Pass {
  Name "SSAO_Occlusion"
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 55064
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_LOW" "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_LOW" "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_MEDIUM" "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_MEDIUM" "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_HIGH" "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_HIGH" "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_LOW" "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_LOW" "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_MEDIUM" "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_MEDIUM" "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_HIGH" "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_HIGH" "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_LOW" "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_LOW" "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_MEDIUM" "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_MEDIUM" "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_HIGH" "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_HIGH" "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_LOW" "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_LOW" "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_MEDIUM" "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_MEDIUM" "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_HIGH" "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_HIGH" "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_LOW" "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_LOW" "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_MEDIUM" "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_MEDIUM" "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_HIGH" "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_HIGH" "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_LOW" "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_LOW" "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_MEDIUM" "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_MEDIUM" "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_RECONSTRUCT_NORMAL_HIGH" "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_RECONSTRUCT_NORMAL_HIGH" "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "SSAO_HorizontalBlur"
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 88359
Program "vp" {
SubProgram "d3d11 " {
Local Keywords { "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_SOURCE_DEPTH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_SOURCE_DEPTH_NORMALS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ORTHOGRAPHIC" "_SOURCE_GBUFFER" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "SSAO_VerticalBlur"
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 164283
Program "vp" {
SubProgram "d3d11 " {
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
  Name "SSAO_FinalBlur"
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 221891
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
}
}