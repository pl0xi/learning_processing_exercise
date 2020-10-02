float theta = 0.0;
void setup() {
  size(200, 200);
}
void draw() {
  background(255);
  theta += 0.02;
  noStroke();
  fill(0);
  float x = theta;
  // A simple way to draw the wave with an ellipse at each location
  for (int i = 0; i <= 20; i++) {
    // Calculate y value based off of sine function using map()
    float y = map(noise(x), 0, 1, 0, height);
    // Draw an ellipse
    ellipse(i * 10, y, 16, 16);
    // Move along x-axis
    x += 0.2;
  }
}
