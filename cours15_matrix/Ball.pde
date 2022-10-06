class Ball {
	int x, y;
	char letter = ' ';
	int timer = 0;
	int timerMax = int(random(6,10));
	float vit = 16;
	color col;

	Ball(char c) {
	  letter = c;
	  x = int(random(width));
	  y = int(random(height));
		col = color(0, random(200, 255), random(50), 200);
	}
	
	void display() {
	  text(letter, x, y);
	  fill(col);
		if (timer > timerMax) {
			y += vit;
	    timer = 0;
	    letter = all.charAt(int(random(all.length())));
	  }
	  
	  timer++;
		
	  if (y > height) {
	    x = int(random(width));
	    y =-  30;
	  }
	}
}
