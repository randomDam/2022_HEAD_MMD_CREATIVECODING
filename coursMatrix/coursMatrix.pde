Ball [] tabBall = new Ball[400];
PFont typo;
String all="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0987654321?/.§ù*..:::;,_-'(é&$€";

void setup(){
  //size(1600,800,P2D);
  fullScreen(P2D);
  for(int i=0;i<tabBall.length;i++){
    char c = all.charAt(int(random(all.length())));
    tabBall[i]=new Ball(c);
  }
  typo = loadFont("DejaVuSansMono-Bold-14.vlw");
}

void draw(){
  fill(0,20);
  rect(0,0,width,height);
  
  textFont(typo);
  for(int i=0;i<tabBall.length;i++){
    tabBall[i].display();
  }
}
