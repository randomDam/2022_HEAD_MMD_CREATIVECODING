float ang=0;
void setup() {
  size(1800, 800, P2D);
}

void draw() {
  //background(20);
  //sun
  pushMatrix();
  axe();
  translate(width/2, height/2);
  scale(1.00,1.00);
  fill(255, 255, 0);
  circle(0, 0, 120);
  axe();
  
  
  //earth
  rotate(ang);
  translate(200, 0);
  fill(0, 50, 255,150);
  circle(0, 0, 60);
  axe();

  //moon
  rotate(ang*10);
  translate(100, 0);
  fill(200,150);
  circle(0, 0, 40);
  axe();
  
  //moon
  rotate(ang*20);
  translate(50, 0);
  fill(20);
  circle(0, 0, 10);
  axe();

  popMatrix();
  ang+=0.01;  
}

void axe() {
  stroke(255, 0, 0);
  line(0, 0, 10, 0);
  stroke(0, 255, 0);
  line(0, 0, 0, 10);
  stroke(0);
}
