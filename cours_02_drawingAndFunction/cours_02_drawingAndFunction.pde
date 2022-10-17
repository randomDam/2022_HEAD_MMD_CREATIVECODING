//initialisation function / one time
void setup() {
  //size of the window
  size(800, 800);
  //color of the background / r,g,b
  background(40, 40, 80);
}

//function loop
void draw() {
  noStroke();
  //color of shape inside
  fill(random(255));
  rectMode(CENTER);
  //make rect with x,y,width,height
  rect(width/2, height/2, random(300), random(300));

  if (mousePressed==true) {
    dessinBob();
  }
}

void dessinBob() {
  fill(random(255), 0, 0);
  rect(mouseX, mouseY, random(100), random(100));
  rect(width-mouseX, mouseY, random(100), random(100));
  rect(width-mouseX, height-mouseY, random(100), random(100));
  rect(mouseX, height-mouseY, random(100), random(100));

  strokeWeight(5);

  stroke(random(255));
  line(width/2, height/2, mouseX, mouseY);
}

void keyPressed() {
  println(key+"  "+keyCode);

  if (keyCode==65) {
    save("capture/frame"+frameCount+".png");
  }
}
