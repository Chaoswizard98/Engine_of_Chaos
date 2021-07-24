//
// Simple passthrough fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    //OLD CODE
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    //gl_FragColor.rgb = v_vColour.rgb;
    
    //NEW CODE
    vec4 col = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    col.rgb = v_vColour.rgb;
    //col.r = mix(col.r,1.0,0.5);//make second 1.0 moddable
    //col.g = mix(col.g,v_vColour.g,0.2);
    //col.b = mix(col.b,v_vColour.b,0.2);
    
    gl_FragColor = col;
    
}
