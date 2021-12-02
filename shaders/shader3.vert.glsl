// Automatically provided by three.js
//
// uniform mat4 modelMatrix;
// uniform mat4 modelViewMatrix;
// uniform mat4 projectionMatrix;
// uniform mat4 viewMatrix;
// uniform mat3 normalMatrix;
// uniform vec3 cameraPosition;
// uniform bool isOrthographic;
// attribute vec3 position;
// attribute vec3 normal;
// attribute vec2 uv;

// interpolate the normal and texture coordinates across the surface
varying vec3 v_normal;
varying vec2 v_texcoord;

uniform float u_time;

void main() {
    v_normal = mat3(normalMatrix) * normal;
    v_texcoord = uv;

    vec3 pos = vec3(position);
    float freq = 4.0;
    float amp = 4.0;

    vec3 rotate = vec3(-1.0 * cos(position.x + u_time), 0.0, 1.0);

    pos.z += sin(u_time * freq + position.x) * amp;
    v_normal = normalize(mat3(normalMatrix) * rotate);

    gl_Position = projectionMatrix *modelViewMatrix * vec4(pos, 1.0);
}