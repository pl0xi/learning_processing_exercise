int x = 0, d;
float h, theta = 0.0, speed = 1.0;

void setup() {
  size(200, 200);
  h = height/2;
  d = 32;
}
void draw() {
  background(255);
  x = x + (int)speed;
  if ((x > width) || (x < 0)) {
    speed = speed * -1.5;
  }
  stroke(0);
  fill(map(x, 0, width, 0, 255));
  h = map(sin(theta), -1, 1, 0, height);
  ellipse(x, h, d, d);
  theta += 0.05;
  d = (int) map(h, 0, height, 20, 100);
}
