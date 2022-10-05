void setup() {
  size(800, 800);
}
float r=0;

void draw() {
  background(200);
  for (int i=0; i<width; i+=50) {
    for (int j=0; j<height; j+=50) {
      bob(i, j,color(i/2,j/2,0),i/10*r);
    }
  }
  r+=0.001;

  bob(mouseX, mouseY,color(255),0);
}

void bob(int x, int y,color col,float rot) {
  pushMatrix();
  rectMode(CENTER);
  translate(x,y);
  rotate(rot);
  fill(0);
  rect(0, 0, 10, 50);
  rect(0, 0, 50, 10);
  ellipse(0, 0, 34, 34);
  fill(col);
  ellipse(0, 0, 30, 30);
  popMatrix();
}
