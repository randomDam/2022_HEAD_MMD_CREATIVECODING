PVector pos;
PVector vit;

void setup() {
  size(800, 800);
  pos = new PVector(width/2, height/2);
  vit = new PVector(random(-5, 5), random(-5, 5));
}

void draw() {
  //background(255);
  pos.add(vit);
  vit.rotate(0.1);
  rect(pos.x, pos.y, 30, 30);
}

void keyPressed(){
  if(key=='a')vit.mult(2);
  if(key=='z')vit.mult(0.5);
}
