class Lines {
  int midPointX = width/2;
  int midPointY = height/2;
  int strokeSize;
  Lines(int strokeSize_) {
    strokeSize = strokeSize_;
  }

  void displayLines() {
    background(255);
    createLines();
  }

  void createLines() {
    for (int i = 0, y = height; i<= width; i += midPointX, y = height) {
       if (i == midPointX) {
        y = 0;
      }
      strokeWeight(strokeSize);
      line(i, y,midPointX, midPointY);
    }
  }
}
