//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "FX/After Image Effect HLSL" {
Properties {
_Color ("Extra Color", Color) = (1,1,1,1)
_RimColor ("Rim Color", Color) = (0,1,1,1)
_MainTex ("Main Texture", 2D) = "black" { }
_RimPower ("Rim Power", Range(1, 50)) = 20
_Fade ("Fade Amount", Range(0, 1)) = 1
_Grow ("Grow", Range(0, 1)) = 0.05
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalRenderPipeline" "RenderType" = "Transparent" }
 Pass {
  Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalRenderPipeline" "RenderType" = "Transparent" }
  Blend SrcAlpha One, SrcAlpha One
  ZWrite Off
  GpuProgramID 43069
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