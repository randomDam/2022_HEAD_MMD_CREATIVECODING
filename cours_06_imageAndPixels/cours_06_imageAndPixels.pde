PImage land;

void setup() {
  size(1000, 600);
  land = loadImage("montagne.jpeg");
  land.resize(width, height);
}

void draw() {
  for (int i=0; i<500; i++) {

    int x = int(random(width));
    int y = int(random(height));
    color col = land.get(x, y);

    //int n=mouseX;
    //col = color(red(col)+random(-n,n),green(col)+random(-n,n),blue(col)+random(-n,n));

    noStroke();
    stroke(col);
    strokeWeight(random(1, 4));
    line(x, y, x+random(-20, 20), y+random(-20, 20));
  }

  color col2 = land.get(mouseX, mouseY);
  println("r:"+red(col2)+"  g:"+green(col2)+"  b:"+blue(col2));
}
