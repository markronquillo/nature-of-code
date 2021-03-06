Walker w;

void setup() {
	size(640, 360);
	w = new Walker();
	background(255);
}

void draw() {
	// w.step();
	// w.stepInclinedRight();
	w.stepInclinedToMouse();
	w.display();
}

class Walker {
	int x;
	int y;

	int stepCount;

	Walker() {
		x = width/2;
		y = height/2;

		stepCount = 1;
	}

	void display() {
		stroke(0);
		point(x,y);
	}

	void step() {
		int choice = int(random(4));

		if (choice == 0) {
			x += stepCount;
		} 
		else if (choice == 1) {
			x -= stepCount;
		}
		else if (choice == 2) {
			y += stepCount;
		}
		else {
			y -= stepCount;
		}
	}

	void stepInclinedRight() {
		println("mouseX: " + mouseX);
		println("mouseY: " + mouseY);
		float num = random(1);

		if (num < 0.4) {
			x++;
		}
		else if (num < 0.6) {
			x--;
		}
		else if (num < 0.8) {
			y++;
		}
		else {
			y--;
		}
	}

	void stepInclinedToMouse() {

		// half the chance to move to direction
		float num = random(1);
		if (num < 0.1) {
			if (x < mouseX) {
				x += stepCount;
			} else if (x > mouseX) {
				x -= stepCount;
			}

			if (y < mouseY) {
				y += stepCount;
			} else if (y > mouseY) {
				y -= stepCount;
			}
			return;
		}

		// equal random
		int choice = int(random(4));
		if (choice == 0) {
			x += stepCount;
		} 
		else if (choice == 1) {
			x -= stepCount;
		}
		else if (choice == 2) {
			y += stepCount;
		}
		else {
			y -= stepCount;
		}	
	}
}