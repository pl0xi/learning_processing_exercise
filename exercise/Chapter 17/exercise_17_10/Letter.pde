public class Letter {
  private char letter;
  private float x, y, startX, startY, finalX, finalY, textSize, currentState;

  public Letter(char letter, float textSize, float startX, float startY, float finalX, float finalY) {
    this.letter = letter;
    this.finalX = finalX;
    this.finalY = finalY;
    this.startX = startX;
    this.startY = startY;
    this.x = startX;
    this.y = startY;
    this.textSize = textSize;
    currentState = 0;
  }
  
  public void display() {
    textSize(textSize);
    fill(0);
    text(letter, x, y);
  }
  
  public void moveLettersToFinal(float increment) {
    currentState = constrain(currentState + increment, 0, 1);;
    
    x = lerp(startX, finalX, currentState);
    y = lerp(startY, finalY, currentState);
  }
  
}
