// Automatically provided by three.js
//
// uniform mat4 viewMatrix;
// uniform vec3 cameraPosition;
// uniform bool isOrthographic;

varying vec3 v_normal;
varying vec2 v_texcoord;

uniform vec3 u_color;
uniform sampler2D u_colorTexture;
uniform vec3 u_ambient;
uniform float u_diameter;

void main() {
    vec4 horizontal = vec4(0.4, 0.2, 0.7, 0.5);
    vec4 vertical = vec4(0.6, 0.8, 0.3, 0.2);

    vec4 swissColor = vec4(1.0, 0.99, 0.8, 1.0);
    gl_FragColor = swissColor;
    
    for (int i = 0; i < 3; i++) {
        if (sqrt(pow(abs(v_texcoord.x - horizontal[i]), 2.0) + pow(abs(v_texcoord.y - vertical[i]), 2.0)) < (u_diameter / 2.0)) {
            discard;
        }
    }
}
