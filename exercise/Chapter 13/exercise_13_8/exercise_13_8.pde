float theta;
void setup() {
  size(200, 200);
  theta = 0;
}

void draw() {
  background(255);
  circleBreathing();
}

void circleBreathing() {
  float r = map(sin(theta), -1, 1, 25, 75);
  circle(width/2, height/2, r);
  theta += 0.1;
}
