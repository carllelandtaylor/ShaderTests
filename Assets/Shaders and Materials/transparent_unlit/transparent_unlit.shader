Shader "Custom/Transparent Unlit"
{
    Properties {
        _Color ("Color", Color) = (0,0,0,0)
        _MainTex ("Texture", 2D) = "white" { }
    }

    SubShader {
		Tags {"Queue"="Transparent"}
        Pass {
			Blend SrcAlpha OneMinusSrcAlpha
            Material {
                Emission [_Color]
            }
            Lighting On
            SetTexture [_MainTex] {
                Combine texture * primary
            }
        }
    }
}
