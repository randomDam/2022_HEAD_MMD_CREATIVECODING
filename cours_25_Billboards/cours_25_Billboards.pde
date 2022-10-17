import peasy.PeasyCam;

PeasyCam cam;

PImage part;
Etoile [] etoiles = new Etoile[1000];


void setup() {
  size(1200, 1000, P3D);
  cam = new PeasyCam(this, 800);
  part = loadImage("particules.png");
  for (int i=0;i<etoiles.length;i++){
    etoiles[i] = new Etoile(new PVector(random(-1500,1500),random(-1500,1500),random(-1500,1500)),part);
  }
  hint(ENABLE_DEPTH_SORT);
}

float ang=0;

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
  
  for (int i=0;i<etoiles.length;i++){
    etoiles[i].draw();
  }
  
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
