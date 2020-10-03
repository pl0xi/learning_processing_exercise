Cube cube;
void setup() {
  size(800, 600, P3D);
  background(255);
  cube = new Cube(150);
}

void draw() {
  background(255);
  cube.display();
}
