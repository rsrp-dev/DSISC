/*
Copyright (c) 2018 Jacob Maximilian Fober

This work is licensed under the Creative Commons 
Attribution-ShareAlike 4.0 International License. 
To view a copy of this license, visit 
http://creativecommons.org/licenses/by-sa/4.0/.
*/

// Filmic Sharpen PS

  ////////////////////
 /////// MENU ///////
////////////////////

uniform float Strength <
	ui_label = "Sharpen strength";
	ui_type = "drag";
	ui_min = 0.0; ui_max = 3.0; ui_step = 0.005;
> = 1.0;

uniform bool Preview <
	ui_label = "Preview sharpen layer";
> = false;

uniform int Coefficient <
	ui_label = "Luma coefficient";
	ui_tooltip = "Change if objects with relatively same brightness but different color get sharpened";
	ui_type = "combo";
	ui_items = "BT.709\0BT.601\0";
> = 0;

uniform float Clamp <
	ui_label = "Sharpen clamping";
	ui_type = "drag";
	ui_min = 0.5; ui_max = 1.0; ui_step = 0.001;
> = 1.0;

uniform int Offset <
	ui_label = "High-pass offset";
	ui_tooltip = "High-pass cross offset in pixels";
	ui_type = "drag";
	ui_min = 0; ui_max = 2;
> = 1;

  //////////////////////
 /////// SHADER ///////
//////////////////////

#include "ReShade.fxh"

// Overlay blending mode
float Overlay(float LayerA, float LayerB)
{
	float MinA = min(LayerA, 0.5) * 2;
	float MinB = min(LayerB, 0.5) * 2;

	float MaxA = 1 - (max(LayerA, 0.5) * 2 - 1);
	float MaxB = 1 - (max(LayerB, 0.5) * 2 - 1);

	float Result = (MinA * MinB + 1 - MaxA * MaxB) * 0.5;
	return Result;
}

// Convert RGB to YUV.luma
float Luma(float3 Source, float3 Coefficients)
{
	float3 Result = Source * Coefficients;
	return Result.r + Result.g + Result.b;
}

// Define screen texture with mirror tiles
texture TexColorBuffer : COLOR;
sampler SamplerColor
{
	Texture = TexColorBuffer;
	AddressU = MIRROR;
	AddressV = MIRROR;
};

// Sharpen pass
float3 FilmicSharpenPS(float4 vois : SV_Position, float2 UvCoord : TexCoord) : SV_Target
{
	float2 Pixel = ReShade::PixelSize;

	Pixel *= Offset;
	// Sample display image
	float3 Source = tex2D(SamplerColor, UvCoord).rgb;

	float2 North = float2(UvCoord.x, UvCoord.y + Pixel.y);
	float2 South = float2(UvCoord.x, UvCoord.y - Pixel.y);
	float2 West = float2(UvCoord.x + Pixel.x, UvCoord.y);
	float2 East = float2(UvCoord.x - Pixel.x, UvCoord.y);

	// Choose luma coefficient
	float3 LumaCoefficient;
	if (Coefficient == 0)
	{
		LumaCoefficient = float3( 0.2126,  0.7152,  0.0722); // BT.709 Luma
	}
	else
	{
		LumaCoefficient = float3( 0.299,  0.587,  0.114); // BT.601 Luma
	}

	// Luma high-pass
	float HighPass;
	HighPass  = Luma(tex2D(SamplerColor, North).rgb, LumaCoefficient);
	HighPass += Luma(tex2D(SamplerColor, South).rgb, LumaCoefficient);
	HighPass += Luma(tex2D(SamplerColor, West).rgb, LumaCoefficient);
	HighPass += Luma(tex2D(SamplerColor, East).rgb, LumaCoefficient);
	HighPass *= 0.25;
	HighPass = 1 - HighPass;
	HighPass = (HighPass + Luma(Source, LumaCoefficient)) * 0.5;

	// Sharpen strength
	HighPass = lerp(0.5, HighPass, Strength);

	// Clamping sharpen
	HighPass = min(HighPass, Clamp);
	HighPass = max(HighPass, 1 - Clamp);

	float3 Sharpen;
	Sharpen.r = Overlay(Source.r, HighPass);
	Sharpen.g = Overlay(Source.g, HighPass);
	Sharpen.b = Overlay(Source.b, HighPass);

	if (Preview)
	{
		return HighPass;
	}
	else
	{
		return Sharpen;
	}
}

technique FilmicSharpen
{
	pass
	{
		VertexShader = PostProcessVS;
		PixelShader = FilmicSharpenPS;
	}
}