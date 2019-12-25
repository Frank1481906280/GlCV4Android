#extension GL_OES_EGL_image_external : require
precision mediump float;
uniform samplerExternalOES uTextureSampler;
varying vec2 vTextureCoord;

void blackAndWhite(inout vec4 color){
    float threshold = 0.5;
    //float mean = (color.r + color.g + color.b) / 3.0;
    float mean=color.r * 0.3 + color.g * 0.59 + color.b * 0.11;
    color.r = color.g = color.b = mean >= threshold ? 1.0 : 0.0;
}
void main()
{
    vec4 tmpColor = texture2D(uTextureSampler, vTextureCoord);
    //blackAndWhite(tmpColor);
    gl_FragColor = tmpColor;
}