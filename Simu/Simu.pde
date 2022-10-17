import peasy.PeasyCam;

PGraphics simu;
PeasyCam cam;
PShape cylindre;

PImage part;
Etoile [] etoiles = new Etoile[1000];


void setup() {
  size(1200, 1000, P3D);
  //fullScreen(P3D);
  
  simu = createGraphics(15000/2,2000/2,P3D);
  cylindre = loadShape("model.obj");
  cylindre.disableStyle();
  cylindre.setTexture(simu);
  
  String s1=dataPath("");
  
  cam = new PeasyCam(this,800);
  /*
  //part = loadImage(s1+"//"+"particules.png");
  for (int i=0;i<etoiles.length;i++){
    etoiles[i] = new Etoile(new PVector(random(-1500,1500),random(-1500,1500),random(-1500,1500)),part);
  }*/
  //hint(ENABLE_DEPTH_SORT);
}

float ang=0;

void draw() {
  background(80);
  //lights();
  simu.beginDraw();
  //simu.background(0);
  
  simu.pushMatrix();
  simu.fill(random(255), random(255), random(255));
  simu.rect(random(simu.width), random(simu.height), random(100), random(100));
  /*
  simu.noStroke();
  simu.translate(0, 0, 0);
  simu.fill(255, 0, 0);
  simu.box(30);

  simu.strokeWeight(3);
  simu.stroke(255, 0, 0);
  simu.line(0, 0, 0, 100, 0, 0);
  simu.stroke(0, 255, 0);
  simu.line(0, 0, 0, 0, 100, 0);
  simu.stroke(0, 0, 255);
  simu.line(0, 0, 0, 0, 0, 100);
  simu.popMatrix();
  
  for (int i=0;i<etoiles.length;i++){
    etoiles[i].draw();
  }
  
  simu.pushMatrix();
  simu.rotateY(6.28);
  simu.fill(255);
  simu.rect(0,0,300,300);
  simu.popMatrix();
 
  
  
  simu.pushMatrix();
  simu.translate(10,10,100);
  simu.fill(255);
  simu.rotateX(3.14);
  simu.rect(0,0,300,300);
  */
  simu.popMatrix();
  simu.endDraw();
  
  //image(simu,100,0);
  
  pushMatrix();
  scale(40);
  shape(cylindre,0,0);
  
  popMatrix();
  
  cam.beginHUD();
  fill(0);
  text(frameRate,30,30);
  cam.endHUD();
}

void keyPressed(){
  println(cam.getLookAt());
  println(cam.getDistance());
  println(cam.getRotations());
  
  //lookAt(lookAt[0],lookAt[1],lookAt[2],getDistance)
  cam.lookAt(0.0,0.0,0.0,2421.0);
  //setRotation(getRotations()[0],getRotations()[1],getRotations()[2]);
  cam.setRotations(2.6362362,0.97159386, -2.0367105);
  
}
