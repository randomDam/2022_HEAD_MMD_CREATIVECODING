#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

#define PROCESSING_TEXTURE_SHADER

uniform sampler2D texture;
uniform vec2 texOffset;
varying vec4 vertColor;
varying vec4 vertTexCoord;

uniform float sat=0.5;
uniform float lum=0.5;

void main(void) {

    vec4 col = texture2D(texture, vertTexCoord.st*lum);
    
    if(col.r<sat)col.r=0.0;
    if(col.r>sat)col.r=1.0;
    if(col.g<sat)col.g=0.0;
    if(col.g>sat)col.g=1.0;
    if(col.b<sat)col.b=0.0;
    if(col.b>sat)col.b=1.0;
    
    //col.g = col.g * lum;

    gl_FragColor = vec4(col.rgb, 1.0) * vertColor;  
}
