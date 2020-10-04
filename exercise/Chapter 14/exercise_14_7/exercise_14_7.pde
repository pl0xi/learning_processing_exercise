Cube cube;
float theta;

void setup() {
  size(800, 600, P3D);
  background(255);
  cube = new Cube(150);
  theta = 0;
}

void draw() {
  background(255);
  translate(width/2, height/2);
  rotate(theta);
  translate(-width/2, -height/2);
  cube.display();

  theta += 0.01;
}
