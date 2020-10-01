float y = 100;
void setup() {
  size(200, 200);
}
void draw() {
  background(0);
  float r = random(1);
  if (r <= 0.1) {
    y--;
  } else if (r <= 0.2) {
    y++;
  }
  ellipse(width/2, y, 16, 16);
}
