String info = "A long long time ago\nIn a galaxy far far away";
PFont f;
float x, y;

void setup() {
  size(1280, 720, P3D);
  f = createFont("Arial", 80);
  x = width/2;
  y = height;
}
void draw() {
  background(255);
  fill(0);
  translate(x, y);
  rotateX(radians(45));
  textFont(f);
  textAlign(CENTER);
  text(info, 0, y);
  y--;
}
