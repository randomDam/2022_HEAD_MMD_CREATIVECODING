float x=40;
float y=20;
float vx=8.2;
float vy=5.7;

float rx=50;
float ry=0;
float rw=20;
float rh=140;

float r2x=0;
float r2y=0;
float r2w=20;
float r2h=140;

PFont america;
int scoreA=0;
int scoreB=0;

void setup() {
  size(800, 800);
  america = loadFont("GTAmerica-Black-48.vlw");
  r2x = width-100;
}

void draw() {
  background(0);
  x = x + vx;
  y = y + vy;

  stroke(255);
  line(width/2, 0, width/2, height);
  if (y>r2y+r2w/2) {
    r2y=r2y+5;
  }
  if (y<r2y+r2w/2) {
    r2y=r2y-5;
  }
  ry=mouseY;
  rect(rx, ry, rw, rh);
  rect(r2x, r2y, r2w, r2h);

  if (x>width) {
    x=width/2;
    y=height/2;
    scoreA=scoreA+1;
  }
  if (x<0) {
    x=width/2;
    y=height/2;
    scoreB++;
  }
  if (y>height || y<0) {
    vy = vy * -1;
  }
  if (x>rx && x<rx+rw && y>ry && y<ry+rh ) {
    vx = vx * -1;
  }
  if (x>r2x && x<r2x+r2w && y>r2y && y<r2y+r2h ) {
    vx = vx * -1;
  }
  rect(x, y, 20, 20);

  fill(255);
  textFont(america);
  textAlign(CENTER);
  text(scoreA+"  "+scoreB, width/2, 200);
}
