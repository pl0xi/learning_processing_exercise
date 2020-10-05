Head head;

void setup()  {
  size(800, 600);
  head = new Head("will-smith.png", "obama.png" ,width/2, height/2, 50);
}

void draw() {
  background(255);
  head.move();
  head.display();
}
