
String [] sentences={
  "Hello","Bonjour",
  "Salam","Previd",
  "Ola","Guten Tag",
  "Ciao","Téré"
};

PFont typo;

void setup(){
   size(800,800,P2D);
   //fullScreen(P2D);
   typo = loadFont("CenturySchL-Bold-48.vlw");
}

void draw(){
  stroke(255,0,0);
  strokeWeight(10);
  fill(200,18);
  rect(0,0,width,height);
  
  textFont(typo);
  fill(random(255),random(255));
  int index=int(random(sentences.length));
  text(sentences[index],random(width),random(height)); 
}
