Shader "Custom/Transparent Unlit"
{
    Properties {
        _Color ("Color", Color) = (0,0,0,0)
        _MainTex ("Texture", 2D) = "white" { }
    }

    SubShader {
		Tags {"Queue"="Transparent"}

		Blend SrcAlpha OneMinusSrcAlpha
        Lighting On
        Material {
            Emission [_Color]
        }

		// Render back-facing faces
        Pass {
			Cull Front
            SetTexture [_MainTex] {
                Combine texture * primary
            }
        }
		// Render front-facing faces
        Pass {
			Cull Back
            SetTexture [_MainTex] {
                Combine texture * primary
            }
        }
    }
}
