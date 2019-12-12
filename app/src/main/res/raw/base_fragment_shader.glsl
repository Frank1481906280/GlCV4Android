#extension GL_OES_EGL_image_external : require
precision mediump float;
uniform samplerExternalOES uTextureSampler;
varying vec2 vTextureCoord;
void main()
{
    vec4 vCameraColor = texture2D(uTextureSampler, vTextureCoord);
    float fGrayColorR = vCameraColor.r;
    float fGrayColorG = vCameraColor.g;
    float fGrayColorB = vCameraColor.b;
    gl_FragColor = vec4(fGrayColorR, fGrayColorG, fGrayColorB, 0.5);
}