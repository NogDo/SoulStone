//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Universal Render Pipeline/HBAO" {
Properties {
_MainTex ("", any) = "" { }
_HBAOTex ("", any) = "" { }
_TempTex ("", any) = "" { }
_NoiseTex ("", 2D) = "" { }
_DepthTex ("", any) = "" { }
_NormalsTex ("", any) = "" { }
}
SubShader {
 LOD 100
 Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
 Pass {
  Name "HBAO - AO"
  LOD 100
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 42468
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT2" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "COLOR_BLEEDING" "INTERLEAVED_GRADIENT_NOISE" "NORMALS_RECONSTRUCT4" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "HBAO - AO Deinterleaved"
  LOD 100
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 106603
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOWEST" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_LOW" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_MEDIUM" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "OFFSCREEN_SAMPLES_CONTRIBUTION" "ORTHOGRAPHIC_PROJECTION" "QUALITY_HIGHEST" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "HBAO - Deinterleave Depth"
  LOD 100
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 136509
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
  Name "HBAO - Deinterleave Normals"
  LOD 100
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 233423
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "HBAO - Atlas Deinterleaved AO"
  LOD 100
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 316995
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
  Name "HBAO - Reinterleave AO"
  LOD 100
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 365179
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
  Name "HBAO - Blur"
  LOD 100
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 441540
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_3" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_4" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_5" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_2" "COLOR_BLEEDING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_3" "COLOR_BLEEDING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_4" "COLOR_BLEEDING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_5" "COLOR_BLEEDING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_2" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_3" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_4" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_5" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_2" "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_3" "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_4" "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "BLUR_RADIUS_5" "COLOR_BLEEDING" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "HBAO - Temporal Filter"
  LOD 100
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 497299
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VARIANCE_CLIPPING_4TAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "VARIANCE_CLIPPING_8TAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "VARIANCE_CLIPPING_4TAP" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "VARIANCE_CLIPPING_8TAP" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "HBAO - Copy"
  LOD 100
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 569715
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
  Name "HBAO - Composite"
  LOD 100
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 652064
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_COLORBLEEDING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_NOAO_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_AO_AOONLY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_NOAO_AOONLY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_COLORBLEEDING" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_NOAO_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_AO_AOONLY" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_NOAO_AOONLY" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_COLORBLEEDING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_NOAO_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_AO_AOONLY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_NOAO_AOONLY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_COLORBLEEDING" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_NOAO_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_AO_AOONLY" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_NOAO_AOONLY" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "LIT_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_AO" "LIT_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_COLORBLEEDING" "LIT_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_NOAO_AO" "LIT_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_AO_AOONLY" "LIT_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_NOAO_AOONLY" "LIT_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "LIT_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_AO" "LIT_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_COLORBLEEDING" "LIT_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_NOAO_AO" "LIT_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_AO_AOONLY" "LIT_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "DEBUG_NOAO_AOONLY" "LIT_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "LIT_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_AO" "LIT_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_COLORBLEEDING" "LIT_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_NOAO_AO" "LIT_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_AO_AOONLY" "LIT_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_NOAO_AOONLY" "LIT_AO" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "LIT_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_AO" "LIT_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_COLORBLEEDING" "LIT_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_NOAO_AO" "LIT_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_AO_AOONLY" "LIT_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "COLOR_BLEEDING" "DEBUG_NOAO_AOONLY" "LIT_AO" "MULTIBOUNCE" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "HBAO - Debug ViewNormals"
  LOD 100
  Tags { "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" }
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 687495
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT2" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_GBUFFER_NORMALS_OCT" }
Local Keywords { "NORMALS_RECONSTRUCT4" "ORTHOGRAPHIC_PROJECTION" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}