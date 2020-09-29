Ball [] balls = new Ball [2];

void setup() {
  size(200, 200);
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(50*i, 20*i, color(120, map(i, 0, 1, 255, 0), map(i, 0, 1, 0, 255)), (int) map(i, 0, 1, 10, 50));
  }
}
void draw() {
  background(255);
  for (int i = 0; i < balls.length; i++) {
    balls[i].display();
    balls[i].gravity();
    balls[i].checkBottomCollision();
  }
}
