void drawParticle(float partSize,PImage sprite) {
  simu.pushMatrix();
  
  float[] rota = cam.getRotations();
  simu.rotateX(rota[0]);
  simu.rotateY(rota[1]);
  simu.rotateZ(rota[2]);
  
  
  simu.beginShape(QUAD);
  simu.noStroke();
  simu.texture(sprite);
  simu.normal(0, 0, 1);
  simu.vertex(-partSize/2, -partSize/2, 0, 0, 0);
  simu.vertex(partSize/2, -partSize/2, 0, sprite.width, 0);
  simu.vertex(partSize/2, partSize/2, 0, sprite.width, sprite.height);
  simu.vertex(-partSize/2, partSize/2, 0, 0, sprite.height);                
  
  simu.endShape();
  
  //rect(0,0,40,40);
  simu.popMatrix();
}
