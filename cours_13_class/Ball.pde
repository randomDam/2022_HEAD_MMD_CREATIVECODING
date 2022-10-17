class Ball{
	float x;
	float y;
	float vx;
	float vy;
	color col;

	Ball(){
		x=width/2;
		y=height/2;
		vx=random(-1,1);
		vy=random(-1,1);
		col = color(random(255),random(255),random(255));
	}
	void aff(){
		x+=vx;
		y+=vy;
		fill(col);
		rect(x,y,10,10);
	}
}