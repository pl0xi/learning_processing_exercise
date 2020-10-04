public class Pyramid3Side {
  int t;
  Pyramid3Side(int t_) {
    t = t_;
  }

  public void display() {
    create3SidePyramid();
  }

  private void create3SidePyramid() {
    pushMatrix();
    translate(width/2, height/2);
    beginShape(TRIANGLES);
    for (int i = 225; i <= 465; i += 120) {
      vertex(0, 0, 0);
      vertex(t * cos(radians(i)), t * sin(radians(i)), -t);
      vertex(t * cos(radians(i+120)), t * sin(radians(i+120)), -t);
    }
 
    // Bottom side
    float tmpPointX = t * cos(radians(225));
    float tmpPointY = t * sin(radians(225));
    vertex(tmpPointX, tmpPointY, -t);

    tmpPointX = t * cos(radians(345));
    tmpPointY = t * sin(radians(345));
    vertex(tmpPointX, tmpPointY, -t);

    tmpPointX = t * cos(radians(465));
    tmpPointY = t * sin(radians(465));
    vertex(tmpPointX, tmpPointY, -t);

    endShape();
    popMatrix();
  }
}
