
//decimal number
float bob=0.6;
float pat=-0.323232;
//integuer number
int bob1=9;
int bob2=10;
//String of caractère
String bob3="image.png";
//
char bob4='a';
//
boolean bob5=true;

PFont unetypo;
PImage uneimage;
PShape unsvg;
PVector unvecteur;

void setup(){
  size(800,800);
}


void draw(){
  if(mouseX>width/2){
    fill(255,0,0);
  }else{
    fill(255,255,0);
  }
  rect(mouseX,mouseY,50,50);
}
