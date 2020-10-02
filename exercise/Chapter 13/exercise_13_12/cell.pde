public class Cell {
  private float posX;
  private float posY;
  private float sizeX;
  private float sizeY;
  public String state;

  Cell(float posX_, float posY_, float sizeX_, float sizeY_) {
    posX = posX_;
    posY = posY_;
    sizeX = sizeX_;
    sizeY = sizeY_;
    state = "Nothing";
  }

  public boolean checkClick(boolean circleTurn) {
    if(state == "Circle" || state == "X") {
      return false;
    }
    if (circleTurn && mouseX > posX && mouseX < posX+sizeX && mouseY > posY && mouseY < posY+sizeY) {
      state = "Circle";
      return true;
    } else if ( mouseX > posX && mouseX < posX+sizeX && mouseY > posY && mouseY < posY+sizeY) {
      state = "X";
      return true;
    }
    
    return false;
  }

  public void display() {
    strokeWeight(1);
    if (posX != 0) { 
      line(posX, posY, posX, posY+sizeY);
    }

    if (posY != 0) { 
      line(posX, posY, posX+sizeX, posY);
    }
  }
}
