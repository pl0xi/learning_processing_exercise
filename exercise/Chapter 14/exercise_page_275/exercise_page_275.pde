Pyramid pyramid;
void setup() {
  size(200, 200, P3D);
  pyramid = new Pyramid(150);
}
void draw() {
  background(255);
  translate(100, 100, 0);
  pyramid.display();
}
