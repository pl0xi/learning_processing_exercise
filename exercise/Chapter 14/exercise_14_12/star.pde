public class Star {
  PShape star;
  float x, y;
  Star(float x_, float y_) {
    x = x_;
    y = y_;
    star = createStar();
  }

  public void display() {
    pushMatrix(); 
    translate(x, y);
    shape(star);
    popMatrix();
  }

  private PShape createStar() {
    PShape star_;
    star_ = createShape();

    star_.beginShape();
    star_.fill(102);
    star_.stroke(0);
    star_.strokeWeight(2);


    star_.vertex(0, -50);
    star_.vertex(14, -20);
    star_.vertex(47, -15);
    star_.vertex(23, 7);
    star_.vertex(29, 40);
    star_.vertex(0, 25);
    star_.vertex(-29, 40);
    star_.vertex(-23, 7);
    star_.vertex(-47, -15);
    star_.vertex(-14, -20);
    star_.endShape(CLOSE);

    return star_;
  }
}
