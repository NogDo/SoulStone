//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/ProBuilder/FacePicker" {
Properties {
}
SubShader {
 Tags { "LIGHTMODE" = "ALWAYS" "ProBuilderPicker" = "Base" }
 Pass {
  Name "Base"
  Tags { "LIGHTMODE" = "ALWAYS" "ProBuilderPicker" = "Base" }
  GpuProgramID 55454
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