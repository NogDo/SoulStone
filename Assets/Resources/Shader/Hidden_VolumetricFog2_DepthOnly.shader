//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/VolumetricFog2/DepthOnly" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
_AlphaCutOff ("Alpha CutOff", Float) = 0
}
SubShader {
 Pass {
  ColorMask 0 0
  GpuProgramID 6670
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEPTH_PREPASS_ALPHA_TEST" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEPTH_PREPASS_ALPHA_TEST" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}