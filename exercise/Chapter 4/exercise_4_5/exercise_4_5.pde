PauseScreen screen;
void setup() {
  size(800, 800);
  screen = new PauseScreen();
}

void draw() {
  background(255);
  screen.display();
}
