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
COMPAT_VARYING     vec2 VARorig_tex;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 VARt2;
COMPAT_VARYING     vec4 VARt1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct orig {
    vec2 _tex_coord;
    vec2 _texture_size;
float _placeholder32;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size1;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec4 VARt1;
    vec4 VARt2;
    vec4 _t3;
    vec2 VARorig_tex;
};
out_vertex _co1;
orig _ORIG1;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
uniform COMPAT_PRECISION vec2 OrigTextureSize;
COMPAT_ATTRIBUTE vec2 OrigTexCoord;
void main()
{
    vec2 _ps;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _co1._position1 = _r0008;
    _co1._color1 = COLOR;
    _ps = vec2(1.00000000E+00/OrigTextureSize.x, 1.00000000E+00/OrigTextureSize.y);
    _co1._texCoord1 = TexCoord.xy;
    VARorig_tex = OrigTexCoord;
    VARt1 = OrigTexCoord.xyyy + vec4(0.00000000E+00, -_ps.y, 0.00000000E+00, _ps.y);
    VARt2 = OrigTexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
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
COMPAT_VARYING     vec2 _orig_tex;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 VARt2;
COMPAT_VARYING     vec4 VARt1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct orig {
    vec2 _tex_coord;
    vec2 _texture_size;
float _placeholder38;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size1;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 VARt1;
    vec4 VARt2;
    vec4 _t3;
    vec2 _orig_tex;
};
vec4 _ret_0;
vec3 _TMP15;
vec3 _TMP13;
vec3 _TMP11;
vec3 _TMP9;
vec3 _TMP14;
vec3 _TMP12;
vec3 _TMP10;
vec3 _TMP8;
vec4 _TMP7;
float _TMP19;
float _TMP21;
float _TMP22;
float _TMP18;
float _TMP17;
vec3 _TMP16;
vec4 _TMP20;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
out_vertex _co1;
uniform sampler2D Texture;
orig _ORIG1;
input_dummy _IN1;
vec2 _x0034;
vec4 _r0046;
vec4 _r0056;
vec4 _x0066;
vec4 _TMP67;
vec4 _x0074;
vec4 _TMP75;
vec4 _x0082;
vec4 _TMP83;
vec3 _TMP95;
vec3 _x0098;
vec4 _info0100;
float _x0102;
float _x0106;
float _TMP109;
float _x0112;
float _x0114;
float _x0118;
float _TMP121;
float _x0124;
float _x0126;
float _x0130;
float _TMP133;
float _x0136;
vec4 _info0138;
float _x0140;
float _x0144;
float _TMP147;
float _x0150;
float _x0152;
float _x0156;
float _TMP159;
float _x0162;
float _x0164;
float _x0168;
float _TMP171;
float _x0174;
vec4 _info0176;
float _x0178;
float _x0182;
float _TMP185;
float _x0188;
float _x0190;
float _x0194;
float _TMP197;
float _x0200;
float _x0202;
float _x0206;
float _TMP209;
float _x0212;
vec4 _TMP213;
vec4 _a0216;
vec4 _TMP217;
vec4 _a0220;
float _t0226;
float _t0230;
float _t0234;
float _t0238;
vec4 _r0242;
vec4 _TMP251;
vec4 _a0254;
COMPAT_VARYING vec4 TEX0;
 
uniform sampler2D OrigTexture;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    bvec4 _px;
    vec4 _fx;
    vec4 _fx_left;
    vec4 _fx_up;
    vec2 _fp;
    vec2 _delta;
    vec4 _fx45;
    vec4 _fx30;
    vec4 _fx60;
    vec4 _info1;
    vec4 _maximo;
    vec3 _res;
    float _mx;
    _x0034 = TEX0.xy*TextureSize;
    _fp = fract(_x0034);
    _TMP0 = COMPAT_TEXTURE(OrigTexture, VARt1.xy);
    _TMP1 = COMPAT_TEXTURE(OrigTexture, VARt2.xw);
    _TMP2 = COMPAT_TEXTURE(OrigTexture, VARt2.yw);
    _TMP3 = COMPAT_TEXTURE(OrigTexture, VARt2.zw);
    _TMP4 = COMPAT_TEXTURE(OrigTexture, VARt1.xw);
    _r0046.x = dot(_TMP0.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0046.y = dot(_TMP1.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0046.z = dot(_TMP4.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0046.w = dot(_TMP3.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0056.x = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0056.y = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0056.z = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0056.w = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _fx = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
    _fx_left = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x;
    _fx_up = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x;
    _delta = vec2(InputSize.x/OutputSize.x, (5.00000000E-01*InputSize.x)/OutputSize.x);
    _x0066 = ((_fx + _delta.xxxx) - vec4( 1.50000000E+00, 5.00000000E-01, -5.00000000E-01, 5.00000000E-01))/(2.00000000E+00*_delta.xxxx);
    _TMP20 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0066);
    _TMP67 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP20);
    _x0074 = ((_fx_left + _delta.yxyx) - vec4( 1.00000000E+00, 1.00000000E+00, -5.00000000E-01, 0.00000000E+00))/(2.00000000E+00*_delta.yxyx);
    _TMP20 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0074);
    _TMP75 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP20);
    _x0082 = ((_fx_up + _delta.xyxy) - vec4( 2.00000000E+00, 0.00000000E+00, -1.00000000E+00, 5.00000000E-01))/(2.00000000E+00*_delta.xyxy);
    _TMP20 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0082);
    _TMP83 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP20);
    _info1 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP16 = _info1.xyz*vec3( 2.55000000E+02, 2.55000000E+02, 2.55000000E+02);
    _x0098 = _TMP16 + 5.00000000E-01;
    _TMP95 = floor(_x0098);
    _x0102 = _TMP95.x/2.00000000E+00;
    if (_x0102 < 0.00000000E+00) { 
        _x0106 = -_x0102;
        _TMP22 = floor(_x0106);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0102);
    } 
    _TMP17 = _x0102 - _TMP21;
    _x0112 = _TMP17 + 5.00000000E-01;
    _TMP109 = floor(_x0112);
    _info0100.w = _TMP109;
    _x0114 = _TMP21/2.00000000E+00;
    if (_x0114 < 0.00000000E+00) { 
        _x0118 = -_x0114;
        _TMP22 = floor(_x0118);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0114);
    } 
    _TMP18 = _x0114 - _TMP21;
    _x0124 = _TMP18 + 5.00000000E-01;
    _TMP121 = floor(_x0124);
    _info0100.z = _TMP121;
    _x0126 = _TMP21/2.00000000E+00;
    if (_x0126 < 0.00000000E+00) { 
        _x0130 = -_x0126;
        _TMP22 = floor(_x0130);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0126);
    } 
    _TMP19 = _x0126 - _TMP21;
    _x0136 = _TMP19 + 5.00000000E-01;
    _TMP133 = floor(_x0136);
    _info0100.y = _TMP133;
    _info0100.x = _TMP21;
    _x0140 = _TMP95.y/2.00000000E+00;
    if (_x0140 < 0.00000000E+00) { 
        _x0144 = -_x0140;
        _TMP22 = floor(_x0144);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0140);
    } 
    _TMP17 = _x0140 - _TMP21;
    _x0150 = _TMP17 + 5.00000000E-01;
    _TMP147 = floor(_x0150);
    _info0138.w = _TMP147;
    _x0152 = _TMP21/2.00000000E+00;
    if (_x0152 < 0.00000000E+00) { 
        _x0156 = -_x0152;
        _TMP22 = floor(_x0156);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0152);
    } 
    _TMP18 = _x0152 - _TMP21;
    _x0162 = _TMP18 + 5.00000000E-01;
    _TMP159 = floor(_x0162);
    _info0138.z = _TMP159;
    _x0164 = _TMP21/2.00000000E+00;
    if (_x0164 < 0.00000000E+00) { 
        _x0168 = -_x0164;
        _TMP22 = floor(_x0168);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0164);
    } 
    _TMP19 = _x0164 - _TMP21;
    _x0174 = _TMP19 + 5.00000000E-01;
    _TMP171 = floor(_x0174);
    _info0138.y = _TMP171;
    _info0138.x = _TMP21;
    _x0178 = _TMP95.z/2.00000000E+00;
    if (_x0178 < 0.00000000E+00) { 
        _x0182 = -_x0178;
        _TMP22 = floor(_x0182);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0178);
    } 
    _TMP17 = _x0178 - _TMP21;
    _x0188 = _TMP17 + 5.00000000E-01;
    _TMP185 = floor(_x0188);
    _info0176.w = _TMP185;
    _x0190 = _TMP21/2.00000000E+00;
    if (_x0190 < 0.00000000E+00) { 
        _x0194 = -_x0190;
        _TMP22 = floor(_x0194);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0190);
    } 
    _TMP18 = _x0190 - _TMP21;
    _x0200 = _TMP18 + 5.00000000E-01;
    _TMP197 = floor(_x0200);
    _info0176.z = _TMP197;
    _x0202 = _TMP21/2.00000000E+00;
    if (_x0202 < 0.00000000E+00) { 
        _x0206 = -_x0202;
        _TMP22 = floor(_x0206);
        _TMP21 = -_TMP22;
    } else {
        _TMP21 = floor(_x0202);
    } 
    _TMP19 = _x0202 - _TMP21;
    _x0212 = _TMP19 + 5.00000000E-01;
    _TMP209 = floor(_x0212);
    _info0176.y = _TMP209;
    _info0176.x = _TMP21;
    _fx45 = _info0100*_TMP67;
    _fx30 = _info0138*_TMP75;
    _fx60 = _info0176*_TMP83;
    _a0216 = _r0056 - _r0046.wxyz;
    _TMP213 = abs(_a0216);
    _a0220 = _r0056 - _r0046.zwxy;
    _TMP217 = abs(_a0220);
    _px = bvec4(_TMP213.x <= _TMP217.x, _TMP213.y <= _TMP217.y, _TMP213.z <= _TMP217.z, _TMP213.w <= _TMP217.w);
    _TMP7 = max(_fx30, _fx60);
    _maximo = max(_TMP7, _fx45);
    _t0226 = float(_px.x);
    _TMP8 = _TMP4.xyz + _t0226*(_TMP3.xyz - _TMP4.xyz);
    _TMP9 = _TMP2.xyz + _maximo.x*(_TMP8 - _TMP2.xyz);
    _t0230 = float(_px.y);
    _TMP10 = _TMP3.xyz + _t0230*(_TMP0.xyz - _TMP3.xyz);
    _TMP11 = _TMP2.xyz + _maximo.y*(_TMP10 - _TMP2.xyz);
    _t0234 = float(_px.z);
    _TMP12 = _TMP0.xyz + _t0234*(_TMP1.xyz - _TMP0.xyz);
    _TMP13 = _TMP2.xyz + _maximo.z*(_TMP12 - _TMP2.xyz);
    _t0238 = float(_px.w);
    _TMP14 = _TMP1.xyz + _t0238*(_TMP4.xyz - _TMP1.xyz);
    _TMP15 = _TMP2.xyz + _maximo.w*(_TMP14 - _TMP2.xyz);
    _r0242.x = dot(_TMP9, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0242.y = dot(_TMP11, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0242.z = dot(_TMP13, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0242.w = dot(_TMP15, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _a0254 = _r0242 - _r0056;
    _TMP251 = abs(_a0254);
    _res = _TMP9;
    _mx = _TMP251.x;
    if (_TMP251.y > _TMP251.x) { 
        _res = _TMP11;
        _mx = _TMP251.y;
    } 
    if (_TMP251.z > _mx) { 
        _res = _TMP13;
        _mx = _TMP251.z;
    } 
    if (_TMP251.w > _mx) { 
        _res = _TMP15;
    } 
    _ret_0 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
