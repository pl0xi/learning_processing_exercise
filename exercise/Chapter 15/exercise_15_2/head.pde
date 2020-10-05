class Head {
  PImage img, img2;
  float x, y, size, theta;
  boolean image1 = true;
  Head(String filename, String filename2, float x_, float y_, float size_) {
    // Load image, initialize variables
    img = loadImage(filename);
    img2 = loadImage(filename2);
    x = x_;
    y = y_;
    size = size_;
  }
  void display() {
    pushMatrix();

    translate(x, y);
    scale(size/img.width);
    rotate(theta);
    imageMode(CENTER);
    if (image1) {
      image(img, 0, 0);
    } else {
      image(img2, 0, 0);
    }

    popMatrix();
  }
  void move() {
    x++;
    if (x > width+(img.width*size/img.width)) {
      x = 0 - (img.width*size/img.width);
      image1 = !image1;
    }

    theta += 0.03;
  }
}
