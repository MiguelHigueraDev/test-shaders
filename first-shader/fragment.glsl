precision mediump float;

varying float vRandom;

void main()
{
    gl_FragColor = vec4(vRandom, 1.0, 0.5, 1.0);
}