PImage pat;
float rot=0;
PShader dither;

//----------------------------------------------
//SETUP
//----------------------------------------------
void setup() {
  size(800, 800, P2D);
  pat = loadImage("bob.png");
  pat.resize(200, 00);

  dither = loadShader("dither.glsl");
  dither.set("ditherText", loadImage("dit.png"));
}
//----------------------------------------------
//DRAW
//----------------------------------------------
void draw() {
  imageMode(CENTER);
  //background(0);
  fill(0);
  //rect(random(width),random(width),400,400);

  tint(random(255), random(255), random(255));
  image(pat, random(width), random(height));

  noTint();

  pushMatrix();
  translate(width/2, height/2);
  rotate(rot);
  image(pat, 0, 0);

  translate(300, 0);
  rotate(rot);
  image(pat, 0, 0);

  popMatrix();
  rot=rot+0.01;
  shader(dither);
}
