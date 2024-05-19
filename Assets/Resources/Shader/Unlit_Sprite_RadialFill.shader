//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Unlit/Sprite_RadialFill" {
Properties {
[Toggle] _HasTexture ("Has Texture", Float) = 0
_MainTex ("Texture", 2D) = "" { }
_BGTex ("Tex", 2D) = "" { }
_Color ("Color (RGBA)", Color) = (1,1,1,1)
_BGColor ("Background Color", Color) = (1,1,1,1)
_InnerRadius ("Inner Radius", Range(0, 1)) = 0.5
_Smoothness ("Smoothness", Range(0, 1)) = 0
_Angle ("Angle", Range(0, 360)) = 0
_Fill ("Fill", Range(0, 1)) = 1
[Toggle] _Flip ("Flip", Float) = 0
}
SubShader {
 LOD 100
 Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZWrite Off
  Cull Off
  GpuProgramID 12687
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}