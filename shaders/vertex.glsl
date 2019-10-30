precision mediump float;

attribute vec4 vPosition;
uniform float theta;
uniform float scale;

void main() {
  mat4 rotasi = mat4(
    cos(theta), -sin(theta), 0.0, 0.0,
    sin(theta), cos(theta), 0.0, 0.0,
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
  );
  gl_Position = (vPosition-vec4(-0.5,0,0.2,-0.2)) * rotasi + vec4(-0.5,0,0.5,0.2);
}