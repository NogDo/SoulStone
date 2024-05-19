//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Shader Graphs/VFX_Decal_Shader_New" {
Properties {
[Header(Basic)] Texture2D_abfdaea01b0848f5872e4cce686041a5 ("Texture", 2D) = "white" { }
_Color ("_Color (default = 1,1,1,1)", Color) = (1,1,1,1)
_Fade ("_Fade", Float) = 0.25
_MinGlobalAlpha ("_MinGlobalAlpha", Float) = 0
[Header(Blending)] [Enum(UnityEngine.Rendering.BlendMode)] _DecalSrcBlend ("_DecalSrcBlend (default = SrcAlpha)", Float) = 5
[Enum(UnityEngine.Rendering.BlendMode)] _DecalDstBlend ("_DecalDstBlend (default = OneMinusSrcAlpha)", Float) = 10
[Header(Alpha remap(extra alpha control))] _AlphaRemap ("_AlphaRemap (default = 1,0,0,0) _____alpha will first mul x, then add y    (zw unused)", Vector) = (1,0,0,0)
[Header(Prevent Side Stretching(Compare projection direction with scene normal and Discard if needed))] [Toggle(_ProjectionAngleDiscardEnable)] _ProjectionAngleDiscardEnable ("_ProjectionAngleDiscardEnable (default = off)", Float) = 0
_ProjectionAngleDiscardThreshold ("_ProjectionAngleDiscardThreshold (default = 0)", Range(-1, 1)) = 0
[Header(Mul alpha to rgb)] [Toggle] _MulAlphaToRGB ("_MulAlphaToRGB (default = off)", Float) = 0
[Header(Ignore texture wrap mode setting)] [Toggle(_FracUVEnable)] _FracUVEnable ("_FracUVEnable (default = off)", Float) = 0
[Header(Stencil Masking)] _StencilRef ("_StencilRef", Float) = 0
[Enum(UnityEngine.Rendering.CompareFunction)] _StencilComp ("_StencilComp (default = Disable) _____Set to NotEqual if you want to mask by specific _StencilRef value, else set to Disable", Float) = 0
[Header(ZTest)] [Enum(UnityEngine.Rendering.CompareFunction)] _ZTest ("_ZTest (default = Disable) _____to improve GPU performance, Set to LessEqual if camera never goes into cube volume, else set to Disable", Float) = 0
[Header(Cull)] [Enum(UnityEngine.Rendering.CullMode)] _Cull ("_Cull (default = Front) _____to improve GPU performance, Set to Back if camera never goes into cube volume, else set to Front", Float) = 1
[Header(Unity Fog)] [Toggle(_UnityFogEnable)] _UnityFogEnable ("_UnityFogEnable (default = on)", Float) = 1
[Header(Support Orthographic camera)] [Toggle(_SupportOrthographicCamera)] _SupportOrthographicCamera ("_SupportOrthographicCamera (default = off)", Float) = 0
}
SubShader {
 Tags { "DisableBatching" = "true" "QUEUE" = "Transparent-499" "RenderType" = "Overlay" }
 Pass {
  Tags { "DisableBatching" = "true" "QUEUE" = "Transparent-499" "RenderType" = "Overlay" }
  Blend Zero Zero, Zero Zero
  ZTest Off
  ZWrite Off
  Cull Off
  Stencil {
   Comp Disabled
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 16322
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_UnityFogEnable" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
Local Keywords { "_UnityFogEnable" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
Local Keywords { "_UnityFogEnable" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_UnityFogEnable" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_LINEAR" }
Local Keywords { "_UnityFogEnable" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
Local Keywords { "_UnityFogEnable" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}