class Pyramid {
  private int t;
  Pyramid(int t_) {
    t = t_;
  }

  public void display() {
    createPyramid();
  }

  private void createPyramid() {
    stroke(0);

    beginShape(TRIANGLES);
    fill(255, 150);
    vertex(-t, -t, -t);
    vertex( t, -t, -t);
    vertex( 0, 0, t);
    fill(150, 150);
    vertex(t, -t, -t);
    vertex(t, t, -t);
    vertex(0, 0, t);
    fill(255, 150);
    vertex( t, t, -t);
    vertex(-t, t, -t);
    vertex( 0, 0, t);
    fill(150, 150);
    vertex(-t, t, -t);
    vertex(-t, -t, -t);
    vertex( 0, 0, t);
    endShape();
  }
}
