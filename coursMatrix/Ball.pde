class Ball {
  int x, y;
  char letter=' ';
  int timer=0;
  int timerMax=int(random(6,10));

  Ball(char c) {
    letter=c;
    x = int(random(width));
    y = int(random(height));
  }

  void display() {
    text(letter, x, y);
    fill(0, random(200, 255), 0,200);
    if (timer>timerMax) {
      y+=16;
      timer=0;
      letter = all.charAt(int(random(all.length())));
    }
    
    timer++;

    if (y>height) {
      x = int(random(width));
      y=-30;
    }
  }
}
