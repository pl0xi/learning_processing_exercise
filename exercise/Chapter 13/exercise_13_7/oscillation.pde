public class Oscillator {
  private float xtheta;
  private float ytheta;
  private float x;
  private float y;
  Oscillator(float xtheta_, float ytheta_) {
    xtheta = xtheta_;
    ytheta = ytheta_;
    x = map(sin(xtheta), -1, 1, 0, width);
    y = map(sin(ytheta), -1, 1, 0, height);
  }

  public void oscilate() {
    xtheta += 0.01;
    ytheta += 0.01;
    x = map(sin(xtheta), -1, 1, 0, width);
    y = map(sin(ytheta), -1, 1, 0, height);
  }

  public void display() {
    fill(0);
    stroke(0);
    line(width/2, 0, x, y);
    ellipse(x, y, 16, 16);
  }
}
