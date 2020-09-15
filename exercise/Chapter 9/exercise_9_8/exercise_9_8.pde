ArrayList<Button> buttons = new ArrayList<Button>();

void setup() {
  size(800, 600);
  for (int i = 55; i <= (width-55); i += 120) {
    buttons.add(new Button(i, height/2, 100, 25, "CLICK ME", color(210), color(230)));
  }
}

void draw() {
  background(255);
  for (int i = 0; i <= (buttons.size()-1); i++) {
    Button button = buttons.get(i);
    button.display();
  }
}

void mousePressed() {
  for (int i = 0; i <= (buttons.size()-1); i++) {
    Button button = buttons.get(i);
    if (button.isMouseOnButton() ) {
      {
        println("YOU CLICKED THE " + (i+1) + " BUTTON");
      }
    }
  }
}
