class Ant {
  float x;
  float y;
  float vx=random(-1, 1);
  float vy=random(-1, 1);
  color col;
  int t=0;
  int tMax=int(random(100, 200));
  Ant(float cx, float cy) {
    x=cx;
    y=cy;
    col = color(random(255), random(255), random(255));
  }
  void display() {
    x+=vx;
    y+=vy;
    noStroke();
    fill(col);
    rectMode(CENTER);
    rect(x, y, 10, 10);
    if (x>width || x<0)vx*=-1;
    if (y>height || y<0)vy*=-1;
    if (t>tMax) {
      vx=random(-1, 1);
      vy=random(-1, 1);
      t=0;
      tMax=int(random(100, 200));
    }
    t++;
  }
  void link(Ant [] ants) {
    for (int i=0; i<ants.length; i++) {
      if (ants[i]!=this) {
        //sqrt(pow(x-ants[i].x,2)+pow(y-ants[i].y,2))
        if (dist(x, y, ants[i].x, ants[i].y)<100) {

          strokeWeight(3);
          stroke(0, 40);
          line(x, y, ants[i].x, ants[i].y);
        }
      }
    }
  }
}
