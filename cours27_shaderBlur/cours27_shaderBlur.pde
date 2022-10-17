/**
 * Blur Filter
 * 
 * Change the default shader to apply a simple, custom blur filter.
 * 
 * Press the mouse to switch between the custom and default shader.
 */

PShader blur;

void setup() {
  size(1900, 800, P2D);
  blur = loadShader("blur.glsl"); 
  stroke(255, 0, 0);
  rectMode(CENTER);
}

void draw() {
  filter(blur);  
  //filter(BLUR,4);
  rect(mouseX, mouseY, 150, 150); 
  ellipse(mouseX, mouseY, 100, 100);
}
