//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "VolumetricFog2/VolumetricFog2DURP" {
Properties {
_MainTex ("Noise Texture", 2D) = "white" { }
_DetailTex ("Detail Texture", 3D) = "white" { }
_NoiseScale ("Noise Scale", Float) = 0.025
_NoiseFinalMultiplier ("Noise Scale", Float) = 1
_NoiseStrength ("Noise Strength", Float) = 1
_Color ("Color", Color) = (1,1,1,1)
_Density ("Density", Float) = 1
_DeepObscurance ("Deep Obscurance", Range(0, 2)) = 0.7
_LightColor ("Light Color", Color) = (1,1,1,1)
_LightDiffusionPower ("Sun Diffusion Power", Range(1, 64)) = 32
_LightDiffusionIntensity ("Sun Diffusion Intensity", Range(0, 1)) = 0.4
_ShadowIntensity ("Sun Shadow Intensity", Range(0, 1)) = 0.5
_WindDirection ("Wind Direction", Vector) = (1,0,0,1)
_RayMarchSettings ("Raymarch Settings", Vector) = (2,0.01,1,0.1)
_SunDir ("Sun Direction", Vector) = (1,0,0,1)
_BoundsCenter ("Bounds Center", Vector) = (0,0,0,1)
_BoundsExtents ("Bounds Size", Vector) = (0,0,0,1)
_BoundsBorder ("Bounds Border", Vector) = (0,1,0,1)
_BoundsData ("Bounds Data", Vector) = (0,0,1,1)
_DetailData ("Detail Data", Vector) = (0.5,4,-0.5,0)
_DetailColor ("Detail Color", Color) = (0.5,0.5,0.5,0)
_DetailOffset ("Detail Offset", Float) = -0.5
_DistanceData ("Distance Data", Vector) = (0,5,1,1)
_DepthGradientTex ("Depth Gradient Texture", 2D) = "white" { }
_SpecularThreshold ("Specular Threshold", Float) = 0.5
_SpecularIntensity ("Specular Intensity", Float) = 0
_SpecularColor ("Specular Color", Color) = (0.5,0.5,0.5,0)
_FogOfWarCenterAdjusted ("FoW Center Adjusted", Vector) = (0,0,0,1)
_FogOfWarSize ("FoW Size", Vector) = (0,0,0,1)
_FogOfWarCenter ("FoW Center", Vector) = (0,0,0,1)
_FogOfWar ("FoW Texture", 2D) = "white" { }
_BlueNoise ("_Blue Noise Texture", 2D) = "white" { }
}
SubShader {
 Tags { "DisableBatching" = "true" "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent+100" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" }
 Pass {
  Tags { "DisableBatching" = "true" "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "UniversalForward" "QUEUE" = "Transparent+100" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" }
  Blend One OneMinusSrcAlpha, One OneMinusSrcAlpha
  ZTest Always
  ZWrite Off
  Cull Front
  GpuProgramID 3567
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS_CASCADE" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_ADDITIONAL_LIGHT_SHADOWS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_ADDITIONAL_LIGHTS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_POINT_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_BOX" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DEPTH_GRADIENT" "VF2_DETAIL_NOISE" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VF2_DEPTH_PREPASS" "_MAIN_LIGHT_SHADOWS" }
Local Keywords { "VF2_DETAIL_NOISE" "VF2_HEIGHT_GRADIENT" "VF2_NATIVE_LIGHTS" "VF2_RECEIVE_SHADOWS" "VF2_SHAPE_SPHERE" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}