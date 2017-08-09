Shader "Custom/Unlit Fixed Function"
{
    Properties {
        _Color ("Color", Color) = (0,0,0,0)
        _MainTex ("Texture", 2D) = "white" { }
    }

    SubShader {
        Pass {
            Material {
                Emission [_Color]
            }
            SetTexture [_MainTex] {
                Combine texture * primary
            }
        }
    }
}
