Zoog [] zoogs = new Zoog [2];
void setup() {
  size(200, 200);
  for (int i = 0; i < zoogs.length; i++) {
    zoogs[i] = new Zoog(100, 125, 60, 60, 16, color(map(i, 0, 1, 0, 255), 0, 0));
  }
}
void draw() {
  background(255);
  // mouseX position determines speed factor
  float factor = constrain(mouseX/10, 0, 5);
  for (int i = 0; i < zoogs.length; i++) {
    zoogs[i].display();
    zoogs[i].jiggle(factor);
  }
}
