// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _omega;
struct sine_coord {
    vec2 _omega;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
input_dummy _IN1;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_VARYING vec4 COL0;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX2;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _oColor;
    vec2 _oTex;
    sine_coord _coords;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0008;
    _oColor = COLOR;
    _oTex = TexCoord.xy;
    _coords._omega = vec2((3.14150000E+00*OutputSize.x*TextureSize.x)/InputSize.x, 6.28299999E+00*TextureSize.y);
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    TEX2.xy = _coords._omega;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _omega;
struct sine_coord {
    vec2 _omega;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _ret_0;
float _TMP2;
vec2 _TMP1;
float _TMP4;
float _TMP3;
vec4 _TMP0;
uniform sampler2D Texture;
vec2 _x0011;
vec2 _a0017;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec3 _scanline;
    _TMP0 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _x0011 = TEX0.xy*TEX2.xy;
    _TMP3 = sin(_x0011.x);
    _TMP4 = sin(_x0011.y);
    _TMP1 = vec2(_TMP3, _TMP4);
    _a0017 = vec2( 5.00000007E-02, 1.50000006E-01)*_TMP1;
    _TMP2 = dot(_a0017, vec2( 1.00000000E+00, 1.00000000E+00));
    _scanline = _TMP0.xyz*(9.49999988E-01 + _TMP2);
    _ret_0 = vec4(_scanline.x, _scanline.y, _scanline.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
