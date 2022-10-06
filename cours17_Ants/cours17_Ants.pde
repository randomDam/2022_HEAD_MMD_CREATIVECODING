Ant [] tabAnt = new Ant[100];

void setup() {
  size(800, 800, P2D);
  for (int i=0; i<tabAnt.length; i++) {
    tabAnt[i] = new Ant(random(width), height/2);
  }
}

void draw() {
  background(200);
  for (int i=0; i<tabAnt.length; i++) {
    tabAnt[i].display();
  }
}
