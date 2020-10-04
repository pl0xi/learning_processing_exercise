public class Fish {
  private float x, y;
  private PShape fish;
  Fish(float x_, float y_) {
    x = x_;
    y = y_;

    fish = createFish();
  }

  public void display() {
    pushMatrix();
    translate(x, y);
    shape(fish);
    popMatrix();
  }

  private PShape createFish() {
    PShape fish_ = createShape();
    fish_.beginShape(); 
    fish_.noStroke();
    fish_.fill(100);
    fish_.vertex(110, 5, 0);
    fish_.vertex(100, 15, 0);
    fish_.vertex(95, 20, 0);
    fish_.vertex(90, 25, 0);
    fish_.vertex(-70, 25, 0);
    fish_.vertex(-160, 50, 0);
    fish_.vertex(-120, 0, 0);
    fish_.vertex(-160, -50, 0);
    fish_.vertex(-70, -25, 0);
    fish_.vertex(90, -25, 0);
    fish_.vertex(95, -20, 0);
    fish_.vertex(100, -15, 0);
    fish_.vertex(110, -5, 0);

    fish_.endShape(CLOSE);
    return fish_;
  }
}
