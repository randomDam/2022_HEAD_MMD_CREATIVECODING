PShader effect;
PGraphics gr;

void setup() {
  size(800, 800, P2D);
  effect = loadShader("effect.glsl");
  gr = createGraphics(width,height,P2D);
}


void draw() {
  background(255);
  gr.beginDraw();
  gr.fill(random(255), random(255), random(255));
  gr.rect(random(width), random(height), random(100), random(100));
  gr.endDraw();
  image(gr,0,0);
  
  filter(effect);
  effect.set("lum", map(mouseX, 0, width, 0, 1));
}
