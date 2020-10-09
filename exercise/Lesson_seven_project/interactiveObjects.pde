public class interactiveObjects {
  private int posX, posY;
  private float size, rotation, r, g, b;
  private String object, animate;
  private color colorDefault, colorEnd;

  public interactiveObjects(int posX, int posY, String object, float size, color colorDefault, color colorEnd) {
    this.posX = posX;
    this.posY = posY;
    this.size = size;
    this.object = object;
    this.animate = "color";
    this.colorDefault = colorDefault;
    this.colorEnd = colorEnd;
  }

  public interactiveObjects(int posX, int posY, String object, float size, color colorDefault) {
    this.posX = posX;
    this.posY = posY;
    this.size = size;
    this.object = object;
    this.animate = "rotate";
    this.colorDefault = colorDefault;
  }

  public void display() {
    createObject();

    rotation = constrain(rotation -= 0.01, 0, 2);
    r = red(colorDefault);
    g = green(colorDefault);
    b = blue(colorDefault);
  }

  private void createObject() {
    pushMatrix();
    translate(posX, posY);
    if (animate == "rotate") {
      rotate(rotation);
    } 

    stroke(r, g, b);
    fill(r, g, b);

    switch(object) {
    case "circle":
      circle(0, 0, size);
      break;
    case "rect":
      rect(0, 0, size, size);
      break;
    case "point":
      strokeWeight(size);
      point(0, 0);
      strokeWeight(1);
      break;
    default:
      break;
    }
    popMatrix();
  }

  public boolean checkCollision(int refPosX, int refPosY) {
    switch(object) {
    case "circle":
      if (refPosX >= posX-(size/2) && refPosX <= posX+(size/2) && refPosY > posY-(size/2) && refPosY < posY+(size/2)) {
        return true;
      } 
    case "rect":
      if (refPosX >= posX && refPosX <= posX+size && refPosY > posY && refPosY < posY+size) {
        return true;
      } 
    case "point":
      if (refPosX >= posX-(size/2) && refPosX <= posX+(size/2) && refPosY > posY-(size/2) && refPosY < posY+(size/2)) {
        return true;
      } 
    default:
      return false;
    }
  }

  public void animateObjects() {
    if (animate == "rotate") {
      rotation = constrain(rotation += 0.02, 0, 2);
    } else {
      r = red(colorEnd);
      g = green(colorEnd);
      b = blue(colorEnd);
    }
  }
}
