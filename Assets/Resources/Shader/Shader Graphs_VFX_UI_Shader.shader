//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Shader Graphs/VFX_UI_Shader" {
Properties {
_Emission ("Emission", Range(0, 5)) = 1
_Color ("Color", Color) = (1.498039,1.498039,1.498039,0)
_Main_Texture ("Main_Texture", 2D) = "white" { }
_Noise_Color ("Noise_Color", Color) = (1,1,1,0)
_Noise ("Noise", 2D) = "bump" { }
_Noise_Opacity ("Noise_Opacity", Range(0, 1)) = 0
_Noise_Tiling ("Noise_Tiling", Vector) = (1,1,0,0)
_Noise_Speed ("Noise_Speed", Vector) = (0,0,0,0)
_Dissolve_Texture ("Dissolve_Texture", 2D) = "white" { }
_Dissolve ("Dissolve", Range(0, 1)) = 0.5
_Dissolve_Size ("Dissolve_Size", Range(0, 1)) = 0
_Opacity ("Opacity", Range(0, 1)) = 0.2
unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" { }
unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" { }
unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" { }
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
 Pass {
  Name "Sprite Unlit"
  Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ZWrite Off
  Cull Off
  GpuProgramID 62534
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
  Name "Sprite Unlit"
  Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ZWrite Off
  Cull Off
  GpuProgramID 84911
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
Fallback "Hidden/Shader Graph/FallbackError"
}