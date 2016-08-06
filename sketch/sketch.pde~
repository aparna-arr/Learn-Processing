//PImage img;

class Circle {
	color c;
	float xpos;
	float ypos;
	float speed;
	float wait;

	Circle() {
		c = color(int(random(256)), int(random(256)), int(random(256)));
		xpos = random(width);
		ypos = random(height);
		speed = random(30);
		wait = random(50,100);
	}

	void display() {
		stroke(0);
		fill(c);
		ellipse(xpos, ypos, 50, 50);
	}

	void move() {

		if (random(100) > wait) {
			float new_xpos = -1;
			float new_ypos = -1; 
			
			while( (new_xpos <= 0) || (new_xpos >= width)) {
				float chanceX = random(1);
		
				if (chanceX < 0.5) {
					new_xpos = xpos + speed;
				} else {
					new_xpos = xpos - speed;
				}
			}
	
			xpos = new_xpos;
	
			while((new_ypos <= 0) || (new_ypos >= width)) {
				float chanceY = random(1);
		
				if (chanceY < 0.5) {
					new_ypos = ypos + speed;
				} else {
					new_ypos = ypos - speed;
				}
			}
		
			ypos = new_ypos;
		}
	}
}

Circle[] circleArray = new Circle[0];
int circCount = 0;
void setup() {
	frameRate(10);
	size(500,500);
//	circleArray = new Circle[1];
//	circleArray[0] = new Circle();
//	circCount++;
//	circleArray = new Circle[10];
//	img = loadImage("tux.jpg");
}

void draw() {
	background(255);

	if ( (keyPressed == true) && (key == ' ')) {
//		circleArray[circCount] = new Circle();

		circleArray = (Circle []) append(circleArray, new Circle());
		circCount++;
	}

	for (int i = 0; i < circCount; i++) {
		circleArray[i].move();
		circleArray[i].display();
	}
/*

	c1.move();
	c2.move();
	c1.display();
	c2.display();
*/
//	ellipse(mouseX,mouseY,50,50);
//	img.resize(100,0);
//	image(img, 0,0);

//	background(255);
}


