#version 130
#include "shaders/fs_smaa_common.h"

in vec2 _texcoord;
in vec2 _pos;
in vec4 _offset[3];
out vec4 outColor;

uniform sampler2D colorTex;
uniform sampler2D blendTex;

void main() {
    outColor = SMAANeighborhoodBlendingPS(_texcoord, _offset[0], colorTex, blendTex);
    //outColor = texture2D(blendTex, _texcoord);
}
