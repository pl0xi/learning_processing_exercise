class FourBalls {
  float size, sizeSpeed;

  FourBalls(float size_, float sizeSpeed_) {
    size = size_;
    sizeSpeed = sizeSpeed_;
  }

  void displayBalls() {
    background(255);
    for (int i = 1, b = width/4, c = height/4; i <= 2; i++, b *= 3) {
      balls(b, c);
      balls(b, (c*3));
    }

    sizeSpeed();
  }
  void balls(float posX, float posY) {
    fill(200);
    strokeWeight(1);
    circle(posX, posY, size);
  }

  void sizeSpeed() {
    if (size > 200 || size < 10) {
      sizeSpeed *= -1;
    }
    size += sizeSpeed;
  }
}
