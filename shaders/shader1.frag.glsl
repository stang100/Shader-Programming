// Automatically provided by three.js
//
// uniform mat4 viewMatrix;
// uniform vec3 cameraPosition;
// uniform bool isOrthographic;
varying vec3 v_normal;
varying vec2 v_texcoord;

uniform float u_scroll;

void main() {
    vec3 light = vec3( 0.5, 0.2, 1.0 );
    light = normalize( light );
    float dProd = max(0.0,dot( v_normal, light ));

    float temp = u_scroll;
    if(u_scroll == 0.0) {
        temp = 5.0;
    }
    else if(u_scroll == 1.0) {
        temp = 20.0;
    }
    else {
        temp = u_scroll * 20.0 + 5.0;
    }
    if(mod(floor(v_texcoord.x * temp) + floor(v_texcoord.y * temp), 2.0) > 0.5) {
        gl_FragColor = vec4(1.0,1.0,1.0,1.0);
    }
    else if(mod(floor(v_texcoord.x * temp) + floor(v_texcoord.y * temp), 2.0) < 0.5) {
        gl_FragColor = vec4(0.0,0.0,0.0,1.0);
    }
}
