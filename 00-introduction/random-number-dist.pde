int[] randomCounts;

void setup() {
	size(640, 240);
	randomCounts = new int[20];
}

void draw() {
	background(255);

	int index = int( random(randomCounts.length) ); // random index;
	randomCounts[index]++; // increment the value of that index

	stroke(0);
	fill(175);

	int w = width/randomCounts.length; // width of a single count 
	for(int x=0; x<w; x++) {
		// x, y, width, height
		// note that rects grows from top to bottom, so we need to adjust
		// the y value based on the height
		rect(x*w, height-randomCounts[x], w-1, randomCounts[x]);
		// rect(x*w,height-30, w-1, randomCounts[x]);
	}
}