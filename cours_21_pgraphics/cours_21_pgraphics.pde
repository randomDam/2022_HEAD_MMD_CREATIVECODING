PGraphics layer;

void setup(){
  size(800,800);
  layer = createGraphics(width,height);
}

void draw(){
  background(200);
  
  layer.beginDraw();
  layer.fill(255);
  layer.rect(mouseX,mouseY,40,40);
  layer.endDraw();
  
  noTint();
  image(layer,0,0);
  
  tint(255,0,0,40);
  image(layer,mouseX,0);

  fill(255,255,0);
  rect(mouseX+100,mouseY,40,40);
 
}
