Controller controller = new Controller();

void setup() {
  size(800, 600);
  background(255);
}

void draw() {
  background(255); //<>// //<>//
  controller.display();
}

void keyPressed() {
  controller.action(key);
}
