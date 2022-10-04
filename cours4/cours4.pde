PFont bob;

void setup(){
  size(800,800);
  bob = loadFont("CharterBT-BoldItalic-48.vlw");
}

void draw(){
  textFont(bob);
  fill(random(255),random(255),random(255));
  text("Hello!",random(width),random(height));
}
