//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Universal Render Pipeline/XR/XROcclusionMesh" {
Properties {
}
SubShader {
 Tags { "RenderPipeline" = "UniversalPipeline" }
 Pass {
  Tags { "RenderPipeline" = "UniversalPipeline" }
  ColorMask 0 0
  ZTest Always
  Cull Off
  GpuProgramID 2651
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "XR_OCCLUSION_MESH_COMBINED" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "XR_OCCLUSION_MESH_COMBINED" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}