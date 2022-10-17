#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

#define PROCESSING_TEXTURE_SHADER

uniform sampler2D texture;
uniform vec2 texOffset;
varying vec4 vertColor;
varying vec4 vertTexCoord;

uniform sampler2D ditherText;

float dither8x8(vec2 position, float brightness) {
  float limit = texture(ditherText, mod(position, 8.) / 8.).x;
  return brightness < limit ? 0.0 : 1.0;
}

void main(void) {

    vec4 col = texture2D(texture, vertTexCoord.st);
    if(col.g < 0.9){ 
        float v = dither8x8(gl_FragCoord.xy, col.g);
        gl_FragColor = vec4(v,v,v,col.a);
    } else {
        gl_FragColor = vec4(1.0,1.0,1.0,1.0);
    }
}

// Dither functions from: https://github.com/hughsk/glsl-dither
// Thanks to FabriceNeyret2 for the improvements
/*
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 cpos = ( 2.* fragCoord -  iResolution.xy ) / iResolution.y;
   	
    vec3 sun = vec3(cos(iTime * 0.5), 0., sin(iTime * 0.5));
    vec3 norm = normalize(vec3(cpos, sqrt(1. - dot(cpos, cpos))));
    
    float d = length(cpos);
    float a = dot(sun, norm);
    
    if (d < 0.99) {
    	fragColor = vec4(1) * dither8x8(fragCoord, a);
    } else {
        fragColor = vec4(d < 1.);
    }
}
*/
