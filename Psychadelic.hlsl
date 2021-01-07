Texture2D Texture: register(s0);

SamplerState gTriLinearSam{
  Filter = ANISOTROPIC;
}; //SamplerState

float4 main(float4 posH: SV_POSITION,  float2 texo: TEXCOORD): SV_TARGET{
	float4 color = Texture.Sample(gTriLinearSam, texo);
	color.r = color.r / 2.3f;
	color.g = color.g / 3.0f;
	color.b = color.b / 3.0f;
	return color;
} //main