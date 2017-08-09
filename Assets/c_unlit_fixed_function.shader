Shader "Custom/Unlit Fixed Function"
{
    Properties {
        _Emission ("Color", Color) = (0,0,0,0)
        _MainTex ("Texture", 2D) = "white" { }
    }

    SubShader {
        Pass {
            Material {
                Emission [_Emission]
            }
            SetTexture [_MainTex] {
                Combine texture * primary
            }
        }
    }
}
