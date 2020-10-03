public class RotatingLine {
  float theta, x, y, size;
  RotatingLine(float x_, float y_, float size_) {
    theta = 0;
    x = x_;
    y = y_;
    size = size_;
  }

  public void display() {
    createStaff();
  }

  private void createStaff() {
    pushMatrix();
    translate(x, y);
    rotate(radians(theta));
    
    line(-(size/2), 0, size/2, 0);
    
    fill(0, 255, 0);
    circle(-(size/2), 0, 10);
    circle(size/2, 0, 10);
    
    popMatrix();
  }
  
  public void rotateLine() {
    theta += 0.5;
  }
}
