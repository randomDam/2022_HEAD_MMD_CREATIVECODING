PImage pat;
float rot=0;

void setup() {
  size(800, 800);
  pat = loadImage("bob.png");
  pat.resize(200, 00);
}

void draw() {
  imageMode(CENTER);
  tint(random(255), random(255), random(255), random(255));
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
}
