void setup(){
  size(1200,800);
}

void draw(){
  background(200);
  
  for(int i=0;i<width;i+=5){
    
    //i (0>1200)
    float r = map(i,0,width,0,255);
    float g = map(i,0,width,255,0);
    float b=0;
    
    fill(r); //(0>255)
    rect(i,0,5,height/2);
  }
  
}
