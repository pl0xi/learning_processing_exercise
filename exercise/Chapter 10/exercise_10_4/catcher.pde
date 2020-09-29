class Catcher {
  float r; // radius
  color col; // color
  float x, y; // location
  Catcher(float tempR) {
    r = tempR;
    col = color(50, 10, 10, 150);
    x = 0;
    y = 0;
  }
  void setLocation(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }
  void display() {
    stroke(0);
    fill(col);
    ellipse(x, y, r*2, r*2);
  }
  // Returns true if the catcher intersects a raindrop, otherwise false
  boolean intersect(Drop d) {
    float distance = dist(x, y, d.x, d.y); // Calculate distance
    if (distance < r + d.r) { // Compare distance to sum of radii
      return true;
    } else {
      return false;
    }
  }
}
