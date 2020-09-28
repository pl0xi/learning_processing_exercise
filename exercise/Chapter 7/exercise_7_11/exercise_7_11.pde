color objectColor;
void setup() {
  size(800, 600);
  background(255);
  objectColor = color(0);
  rectMode(CENTER);
}

void draw() {
}

void keyPressed() {
  controller(key);
}

void controller(char key_) {
  stroke(objectColor);
  switch(key_) {
  case 'r':
    objectColor = color(255, 0, 0);
    break;
  case 'g':
    objectColor = color(0, 255, 0);
    break;
  case 'b':
    objectColor = color(0, 0, 255);
    break;
  case '1':
    rect(mouseX, mouseY, mouseY, mouseX);
    break;
  case '2':
    circle(mouseX, mouseY, (mouseY+mouseX)/4);
    break;
  case '3':
    strokeWeight(10);
    point(mouseX, mouseY);
    strokeWeight(1);
    break;
  default:
    break;
  }
}
