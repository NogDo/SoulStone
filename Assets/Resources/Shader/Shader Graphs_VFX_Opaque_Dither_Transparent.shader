//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Shader Graphs/VFX_Opaque_Dither_Transparent" {
Properties {
_Opacity ("Opacity", Range(0, 1)) = 1
_Emission_Power ("Emission_Power", Range(0, 1)) = 0
_Emission_Color ("Emission_Color", Color) = (0,0,0,0)
_Emission_Texture ("Emission_Texture", 2D) = "white" { }
Vector2_5cc9ec8f76f948eab1452ca2c4d01060 ("Emission_Tiling", Vector) = (1,1,0,0)
_Emisson_Speed ("Emisson_Speed", Vector) = (0,0,0,0)
_Color ("Color", Color) = (1,1,1,1)
_Specular ("Specular", Float) = 0.2
_Specular_Color ("Specular_Color", Color) = (0.3921569,0.3921569,0.3921569,0)
MainTex ("MainTex", 2D) = "white" { }
Texture_Tiling ("Texture_Tiling", Vector) = (1,1,0,0)
Mask_R_Emission ("Mask(R = Emission)", 2D) = "black" { }
_XP_Aura_Color ("XP_Aura_Color", Color) = (1,0.7814316,0.03459108,0)
_XP_Aura_Power ("XP_Aura_Power", Range(0, 1)) = 0
_XP_Aura_Texture ("XP_Aura_Texture", 2D) = "white" { }
Vector2_b4bb9edeb256422d9085c41869d6cd3f ("Aura_Tiling", Vector) = (1,1,0,0)
Aura_Speed ("Aura_Speed", Vector) = (0,0,0,0)
_Cure_Aura_Color ("Cure_Aura_Color", Color) = (0.3574302,0.8773585,0.02207184,0)
_Cure_Aura_Power ("Cure_Aura_Power", Range(0, 1)) = 0
_Cure_Aura_Texture ("Cure_Aura_Texture", 2D) = "white" { }
Vector2_7adb351140ff4d32972d9805e5aef77f ("Cure_Tiling", Vector) = (1,1,0,0)
Cure_Speed ("Cure_Speed", Vector) = (0,0,0,0)
_Saturation ("Saturation", Range(0.35, 1)) = 1
_Min_Global_Alpha ("Min_Global_Alpha", Range(0, 1)) = 0
_Deformation_Speed ("Deformation_Speed", Range(0, 5)) = 5
_Deformation_Noise ("Deformation_Noise", Range(0, 20)) = 0
_Deformation ("Deformation", Range(0, 5)) = 0
unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" { }
unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" { }
unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" { }
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
 Pass {
  Name "Universal Forward"
  Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ZWrite Off
  GpuProgramID 16989
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
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
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
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "ShadowCaster"
  Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ColorMask 0 0
  GpuProgramID 133865
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DepthOnly"
  Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ColorMask 0 0
  GpuProgramID 234404
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DepthNormals"
  Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  GpuProgramID 299430
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ZWrite Off
  GpuProgramID 440194
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
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
 Pass {
  Name "Universal Forward"
  Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ZWrite Off
  GpuProgramID 460688
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
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
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
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_SCREEN_SPACE_OCCLUSION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_SHADOWS_SOFT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "ShadowCaster"
  Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ColorMask 0 0
  GpuProgramID 574781
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DepthOnly"
  Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ColorMask 0 0
  GpuProgramID 620237
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "DepthNormals"
  Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  GpuProgramID 689363
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ZWrite Off
  GpuProgramID 817561
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "INSTANCING_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Hidden/Shader Graph/FallbackError"
CustomEditor "ShaderGraph.PBRMasterGUI"
}