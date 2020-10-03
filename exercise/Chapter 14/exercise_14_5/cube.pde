public class Cube {
  int size;
  Cube(int size_) {
    size = size_;
  }

  public void display() {
    createCube();
  }

  private void createCube() {
    pushMatrix();
    translate(width/2, height/2);
    beginShape(QUADS);
    // Toppen af boksen
    for (int i = 45; i <= 315; i += 90) {
      vertex(size * cos(radians(i)), size * sin(radians(i)), 0);
    }

    // Bunden af siden
    for (int i = 45; i <= 315; i += 90) {
      vertex(size * cos(radians(i)), size * sin(radians(i)), -size);
    }

    // Nord og syd side
    for (int i = 45, b = 0; i <= 315; i += 90, b++) {
      if (b%2 == 1) {
        vertex(size * cos(radians(i)), size * sin(radians(i)), 0);
        vertex(size * cos(radians(i)), size * sin(radians(i)), -size);
      } else {
        vertex(size * cos(radians(i)), size * sin(radians(i)), -size);
        vertex(size * cos(radians(i)), size * sin(radians(i)), 0);
      }
    }

    // Vest og Øst side
    for (int i = 135, b = 0; i <= 405; i += 90, b++) {
      if (b%2 == 1) {
        vertex(size * cos(radians(i)), size * sin(radians(i)), 0);
        vertex(size * cos(radians(i)), size * sin(radians(i)), -size);
      } else {
        vertex(size * cos(radians(i)), size * sin(radians(i)), -size);
        vertex(size * cos(radians(i)), size * sin(radians(i)), 0);
      }
    }

    endShape();
    popMatrix();
  }
}
