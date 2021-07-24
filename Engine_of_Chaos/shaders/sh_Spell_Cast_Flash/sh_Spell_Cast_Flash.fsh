//
// Simple passthrough fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
//uniform float 

uniform vec4  colorIn;
uniform vec4  colorOut;
uniform vec4  colorTolerance;
uniform float blend;


vec3 rgb_to_hsv(vec3 col)
{
    float H = 0.0;
    float S = 0.0;
    float V = 0.0;
    
    float M = max(col.r, max(col.g, col.b));
    float m = min(col.r, min(col.g, col.b));
    
    V = M;
    
    float C = M - m;
    
    if (C > 0.0)
    {
        if (M == col.r) H = mod( (col.g - col.b) / C, 6.0);
        if (M == col.g) H = (col.b - col.r) / C + 2.0;
        if (M == col.b) H = (col.r - col.g) / C + 4.0;
        H /= 6.0;
        S = C / V;
    }
    
    return vec3(H, S, V);
}

vec3 hsv_to_rgb(vec3 col)
{
    float H = col.r;
    float S = col.g;
    float V = col.b;
    
    float C = V * S;
    
    H *= 6.0;
    float X = C * (1.0 - abs( mod(H, 2.0) - 1.0 ));
    float m = V - C;
    C += m;
    X += m;
    if (H < 1.0) return vec3(C, X, m);
    if (H < 2.0) return vec3(X, C, m);
    if (H < 3.0) return vec3(m, C, X);
    if (H < 4.0) return vec3(m, X, C);
    if (H < 5.0) return vec3(X, m, C);
    else         return vec3(C, m, X);
}

void main()
{
    vec4 colorPixel = texture2D( gm_BaseTexture, v_vTexcoord );
    
    vec4 colorHSV = vec4( rgb_to_hsv( colorPixel.rgb ), colorPixel.a);
    vec4 colorInHSV = vec4( rgb_to_hsv( colorIn.rgb ), colorIn.a);
    
    vec4 colorDelta = colorHSV - colorInHSV;
    
    if (abs(colorDelta.r)>0.5) colorDelta.r -= sign(colorDelta.r);

    if ( all( lessThanEqual( abs(colorDelta), colorTolerance ) ) ) 
    {
        vec4 colorOutHSV = vec4( rgb_to_hsv( colorOut.rgb ), colorOut.a);
        
        colorPixel = mix( colorOut,
                          vec4 ( hsv_to_rgb( vec3( mod( colorOutHSV.r + colorDelta.r, 1.0 ),
                                                 clamp( colorOutHSV.g + colorDelta.g, 0.0, 1.0 ),
                                                 clamp( colorOutHSV.b + colorDelta.b, 0.0, 1.0 ) ) ), 
                                 clamp( colorOut.a + colorDelta.a, 0.0, 1.0) ),
                          blend );
    }
    
    gl_FragColor = v_vColour * colorPixel;
}
