// Hello World!

// Transforms coordinates into clip space
uniform mat4 projectionMatrix;
// Transformations applied to the camera
uniform mat4 viewMatrix;
// Transformations applied to the geometry (mesh)
uniform mat4 modelMatrix;

attribute float aRandom;
// These values are the ones stored in the geometry buffer
attribute vec3 position;

varying float vRandom;

void main()
{
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);
    modelPosition.z += cos(modelPosition.x * 10.0) / 10.0;
    modelPosition.z += aRandom / 10.0;


    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectedPosition = projectionMatrix * viewPosition;
    
    gl_Position = projectedPosition;
    vRandom = aRandom;
}