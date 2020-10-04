Pyramid3Side pyramid;
void setup() {
  size(800, 600, P3D);
  pyramid = new Pyramid3Side(150);
}

void draw() {
  pyramid.display();
}
