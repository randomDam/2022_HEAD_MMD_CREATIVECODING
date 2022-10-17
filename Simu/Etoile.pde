class Etoile{
  PVector pos;
  PImage ima;
  float siz=random(40,100);
  
  Etoile(PVector pos,PImage ima){
    this.pos=pos;
    this.ima=ima;
  }

  void draw(){
    simu.pushMatrix();
    
    simu.translate(pos.x,pos.y,pos.z);
    drawParticle(siz,ima);
    simu.popMatrix();
  }

}
