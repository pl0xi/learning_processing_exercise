public class Dog {
  private float x, y, size, widthBox, widthBoxLegs, sizeLegs, tailAngleX, tailAngleY, headOffsetY;
  private PShape dog;
  Dog(float x_, float y_, float size_) {
    x = x_;
    y = y_;
    size = size_;
    sizeLegs = size/4;
    widthBox = dist(0, 0, size * cos(radians(45)), 0)*4;
    widthBoxLegs = dist(0, 0, sizeLegs * cos(radians(45)), 0)*2;
    tailAngleX = 0;
    tailAngleY = 0;

    dog = createDog();
  }

  public void display() {
    pushMatrix();
    translate(x, y);
    rotateZ(radians(180));
    shape(dog);

    pushMatrix();
    translate(0, widthBox/4+headOffsetY, widthBox); 
    shape(head());
    popMatrix();

    pushMatrix();
    translate(0, sizeLegs);
    rotateX(tailAngleX);
    rotateY(tailAngleY);
    shape(tail());
    popMatrix();

    popMatrix();
  }

  private PShape createDog() {
    PShape dog_ = createShape(GROUP);
    dog_.addChild(quads(size/2, 0, -size, widthBoxLegs, sizeLegs));
    dog_.addChild(quads(-size/2, 0, -size, widthBoxLegs, sizeLegs));
    dog_.addChild(quads(size/2, widthBox-widthBoxLegs, -size, widthBoxLegs, sizeLegs));
    dog_.addChild(quads(-size/2, widthBox-widthBoxLegs, -size, widthBoxLegs, sizeLegs));
    dog_.addChild(quads(0, 0, 0, widthBox, size));

    return dog_;
  }

  private PShape quads(float legOffsetX, float legOffsetZ, float legOffsetY, float widthLength, float quadsSize) {
    PShape quad = createShape();
    quad.beginShape(QUADS);
    quad.translate(legOffsetX, legOffsetY, legOffsetZ);
    quad.noStroke();
    quad.fill(100);
    // Toppen af boksen
    for (int i = 45; i <= 315; i += 90) {
      quad.vertex(quadsSize * cos(radians(i)), size * sin(radians(i)), 0);
    }

    // Bunden af siden
    for (int i = 45; i <= 315; i += 90) {
      quad.vertex(quadsSize * cos(radians(i)), size * sin(radians(i)), widthLength);
    }

    // Nord og syd side
    for (int i = 45, b = 0; i <= 315; i += 90, b++) {
      if (b%2 == 1) {
        quad.vertex(quadsSize * cos(radians(i)), size * sin(radians(i)), widthLength);
        quad.vertex(quadsSize * cos(radians(i)), size * sin(radians(i)), 0);
      } else {
        quad.vertex(quadsSize * cos(radians(i)), size * sin(radians(i)), 0);
        quad.vertex(quadsSize * cos(radians(i)), size * sin(radians(i)), widthLength);
      }
    }

    // Vest og Øst side
    for (int i = 135, b = 0; i <= 405; i += 90, b++) {
      if (b%2 == 1) {
        quad.vertex(quadsSize * cos(radians(i)), size * sin(radians(i)), widthLength);
        quad.vertex(quadsSize * cos(radians(i)), size * sin(radians(i)), 0);
      } else {
        quad.vertex(quadsSize * cos(radians(i)), size * sin(radians(i)), 0);
        quad.vertex(quadsSize * cos(radians(i)), size * sin(radians(i)), widthLength);
      }
    }

    quad.endShape();
    return quad;
  }

  private PShape head() {
    noStroke();
    fill(100);
    PShape head = createShape(SPHERE, size/1.1);
    return head;
  }

  private PShape tail() {
    PShape tail_ = createShape(BOX, 5, 5, 100);
    return tail_;
  }

  public void updateTail(float angleX, float angleY) {
    tailAngleX = angleX;
    tailAngleY = angleY;
  }

  public void headOffsetY(float y_) {
    headOffsetY = y_;
  }
}
