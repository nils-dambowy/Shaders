// License Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.
// Created by S.Guillitte
void main() {
    float time = iGlobalTime * 1.0;
    vec2 uv = (gl_FragCoord.xy / iResolution.xx - 0.5) * 8.0;
    
    float i0 = 3.0;
    float i1 = 1.25;
    float i2 = 1.0;
    float i4 = 0.0;
    for(int i = 0; i < 6; i++){
       vec2 r;
       r = vec2(cos(uv.y * i0 - i4 + time / i1), sin(uv.x * i0 - i4 + time / i1)) / i2;
       r += vec2(-r.y, r.x) * 0.2;
       uv.xy = r;
    }
    float r = sin(uv.x - time/2.0) * 0.5 + 0.5;
    float b = sin(uv.y + time/2.0) * 0.5 + 0.5;
    float g = sin((uv.x + uv.y + sin(time * 0.25)) * 0.5) * 0.5 + 0.5;
    
    gl_FragColor = vec4(r, g, b, 1.0);
    
}