Shader "Custom/Always Top"
{
    Properties {
        _MainTex ("Texture", 2D) = "white" { }
    }

    SubShader {
        Pass {
            ZTest Always
            SetTexture [_MainTex]
        }
    }
}
