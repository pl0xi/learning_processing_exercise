Controller controller = new Controller(color(255, 0, 0));

void setup() {
  size(800, 600);
  background(255);
}

void draw() {
}

void keyPressed() {
  controller.action(key);
}
