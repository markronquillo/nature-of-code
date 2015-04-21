void setup() {
	background(0);
	size(640, 360);
}

void draw() {
	float num = (float) randomGaussian();
	float sd = 60;
	float mean = 320;

	println(num);

	float x = sd * num + mean; // multiply the standard deviation then add the mean

	noStroke();
	fill(255, 10);
	ellipse(x, 180, 16, 16);
}