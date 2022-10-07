Ball [] ballsArray = new Ball[1000];

void setup(){
  size(800,800);
  for(int i=0;i<ballsArray.length;i++){
    ballsArray[i] = new Ball();
  }
}

void draw(){
  background(200);
  for(int i=0;i<ballsArray.length;i++){
    ballsArray[i].aff();
  }
}

void mousePressed(){
  for(int i=0;i<ballsArray.length;i++){
    ballsArray[i].vx = random(-1,1);
    ballsArray[i].vy = random(-1,1);
  }
}
