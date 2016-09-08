precision highp float;

#define WHITE   vec4(1.0,1.0, 1.0, 1.0)

bool inTile(vec2 p, float tileSize) {
  vec2 ptile = step(0.5, fract(0.5 * p / tileSize));
  return ptile.x == ptile.y;
}


void main() {

  //TODO: Replace this with a function that draws a checkerboard
  vec2 coordVec = gl_FragCoord.xy;
  
  if (inTile(coordVec, 16.0) )
  {
    gl_FragColor=WHITE;
  }
  else{
    discard;

  }

}
