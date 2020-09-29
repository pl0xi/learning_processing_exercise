class Controller {
  color objectColor;
  color fillColor;

  Controller(color fillColor_) {
    objectColor = color(0);
    fillColor = fillColor_;
  }

  void action(char key_) {
    rectMode(CENTER);
    stroke(objectColor);
    fill(fillColor);
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
}
