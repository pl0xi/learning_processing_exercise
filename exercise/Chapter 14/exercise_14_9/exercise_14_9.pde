Pyramid3Side [] pyramides;
void setup() {
  size(800, 600, P3D);
  pyramides = new Pyramid3Side [5];
  for (int i = 0; i < pyramides.length; i++) {
   pyramides[i] = new Pyramid3Side((int) random(25, 100), random(25, width), random(25, height), random(-0.02, 0.02)); 
  }
}

void draw() {
  background(255);
  for (int i = 0; i < pyramides.length; i++) {
   pyramides[i].display();
   pyramides[i].rotatePyramid();
  }
}
