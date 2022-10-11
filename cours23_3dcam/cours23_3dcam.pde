import peasy.PeasyCam;

PeasyCam cam;

void setup() {
  size(800, 800, P3D);
  cam = new PeasyCam(this, 800);
}

void draw() {
  background(0);
  pushMatrix();
  noStroke();
  translate(0, 0, 0);
  fill(255, 0, 0);
  box(30);

  strokeWeight(3);
  stroke(255, 0, 0);
  line(0, 0, 0, 100, 0, 0);
  stroke(0, 255, 0);
  line(0, 0, 0, 0, 100, 0);
  stroke(0, 0, 255);
  line(0, 0, 0, 0, 0, 100);

  popMatrix();
  
  
  pushMatrix();
  rotateY(6.28);
  fill(255);
  rect(0,0,300,300);
  popMatrix();
  
  
  pushMatrix();
  translate(10,10,100);
  fill(255);
  rotateX(3.14);
  rect(0,0,300,300);
  popMatrix();
}
