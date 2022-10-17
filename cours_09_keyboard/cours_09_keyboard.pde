float x=100;
float y=100;
float vit=3;
boolean up=false;
boolean down=false;
boolean right=false;
boolean left=false;

void setup() {
  size(800, 800);
}

//    x = x + 1;   x+=1;    x++;
void draw() {
  fill(random(255), 60);
  rect(x, y, 20, 20);

  if (up)y-=vit; //  y = y - vit;
  if (down)y+=vit;
  if (right)x+=vit;
  if (left)x-=vit;
}
void keyPressed() {
  println(keyCode);
  if (keyCode==38)up=true;
  if (keyCode==40)down=true;
  if (keyCode==37)left=true;
  if (keyCode==39)right=true;
}
void keyReleased() {
  if (keyCode==38)up=false;
  if (keyCode==40)down=false;
  if (keyCode==37)left=false;
  if (keyCode==39)right=false;
}
