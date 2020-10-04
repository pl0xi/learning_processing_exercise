Star [] stars;
void setup() {
  size(800, 600);
  stars = new Star [4];
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(100 + i*150, height/2);
  }
}

void draw() {
  background(255);
  for (int i = 0; i < stars.length; i++) {
    stars[i].display();
  }
}
