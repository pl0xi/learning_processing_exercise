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

  public void checkClick() {
    if(mouseX > posX && mouseX < posX+sizeX && mouseY > posY && mouseY < posY+sizeY) {
      state = "Circle";
    }
  }

  public void display() {
    if (posX != 0) { 
      line(posX, posY, posX, posY+sizeY);
    }
    
    if (posY != 0) { 
      line(posX, posY, posX+sizeX, posY);
    }
  }
}
