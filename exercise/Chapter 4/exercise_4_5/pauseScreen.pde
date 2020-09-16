class PauseScreen {
  int midPointX = width/2;
  int midPointY = height/2;
  PauseScreen() {
  }

  void display() {
    lines();
    midCircle();
    rects();
  }

  void lines() {
    for (int i = 0; i <= width; i += width) {
      line(i, 0, midPointX, midPointY);
      line(i, height, midPointX, midPointY);
    }
  }

  void midCircle() {
    ellipse(midPointX, midPointY, width/4, height/4);
  }

  void rects() {
    rectMode(CENTER);
    for (int i = width/4; i < width; i *= 3) {
      rect(i, midPointY, width/8, height/10);
    }
  }
}
