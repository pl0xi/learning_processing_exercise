int x = 0;
int speed = 1;
PFont f; 

void setup() {
  size(200, 200);
  f = loadFont("ArialMT-48.vlw");
}
void draw() {
  background(255);
  x = x + speed;
  if ((x > width) || (x < 0)) {
    speed = speed * -1;
  }
  // Display circle at x location
  stroke(0);
  fill(175);
  ellipse(x, 100, 32, 32);
  textFont(f, 12);
  fill(0);
  text(x + ", 100", x+20, 100);
}
