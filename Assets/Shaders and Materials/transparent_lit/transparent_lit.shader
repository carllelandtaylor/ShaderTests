Shader "Custom/Transparent Lit"
{
    Properties {
        _Color ("Color", Color) = (0,0,0,0)
		_Shininess ("Shininess", Range(0.01, 1)) = 0.7
        _MainTex ("Texture", 2D) = "white" { }
    }

    SubShader {
        Tags {"Queue"="Transparent"}

        Blend SrcAlpha OneMinusSrcAlpha
        Lighting On
		SeparateSpecular On
        Material {
            Diffuse [_Color]
			Ambient [_Color]
			Shininess [_Shininess]
			Specular [_Color]
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
