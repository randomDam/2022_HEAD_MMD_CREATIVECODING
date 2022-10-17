void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  for (int i=0; i<80; i++) {
    for (int j=0; j<80; j++) {
      
      noStroke();
      
      float r = map(i,0,80,0,255);
      float g = map(j,0,80,0,255);
      float b = map(mouseX,0,width,0,255);
      
      fill(r,g,b);
      
      rect(i*10,j*10,10,10);
    }
  }
}
