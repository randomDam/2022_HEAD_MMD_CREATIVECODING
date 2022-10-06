void setup() {
  size(800, 800);
}


void draw() {
  noStroke();
  rectMode(CENTER);
  
  for (int i=0; i<100; i++) {
    for (int j=0; j<100; j++) {
      for (int k=40; k>0; k-=2) {
        fill(random(255));
        rect(i*40, j*40, k, k);
      }
    }
  }
}
