class Ball {
  float x, y, speed, gravity;
  int size;
  color circleColor;

  Ball(float x_, float y_, color circleColor_, int size_) {
    x = x_;
    y = y_;
    speed = 0;
    size = size_;
    circleColor = circleColor_;
    gravity = 0.1;
  }

  void display() {
    fill(circleColor);
    stroke(0);
    ellipse(x, y, size, size);
  }

  void gravity() {
    y = y + speed;
    // Add gravity to speed
    speed = speed + gravity;
  }

  void checkBottomCollision() {
    if (y > height) {
      speed = speed * -0.95;
      y = height;
    }
  }
}
