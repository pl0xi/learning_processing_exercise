class OneBall {
  color fill;
  OneBall(color fill_) {
    fill = fill_;
  }

  void displayBall() {
    background(200);
    runBall();
  }

  void runBall() {
    strokeWeight(1);
    fill(fill);
    println(dist(mouseX, mouseY, width/2, height/2));
    circle(width/2, height/2, dist(mouseX, mouseY, width/2, height/2));
  }
}
