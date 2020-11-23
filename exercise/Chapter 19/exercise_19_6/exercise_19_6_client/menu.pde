public class Menu {
  private boolean player1, player2, playerChosen;
  private int [] leftButton, rightButton;
  private int colorButton1, colorButton2;

  public Menu() {
    this.player1 = false;
    this.player2 = false;

    this.leftButton = new int [2];
    this.leftButton[0] = (width/2)-30;
    this.leftButton[1] = height/2;

    this.rightButton = new int [2];
    this.rightButton[0] = (width/2)+25;
    this.rightButton[1] = height/2;

    this.colorButton1 = 220;
    this.colorButton2 = 220;

    this.playerChosen = false;
  }

  public void display() {
    if (!playerChosen) {
      displayChoosePlayer();
    } else if (!player1 || !player2) {
      displayWaitingForSecondPlayer();
    } else {
      game();
    }
  }

  private void game() {
    background(0);
    score();
  }

  private void score() {
    
  }

  public void hoverCheck() {
    textSize(12);
    float textWidth = textWidth("LEFT");
    float textHeight = textAscent();
    if (mouseX > leftButton[0] - (textWidth/2) && mouseX < leftButton[0] + (textWidth/2) && mouseY > leftButton[1] - (textHeight/2) && mouseY < leftButton[1] + (textHeight/2)) {
      colorButton1 = 140;
    } else {
      colorButton1 = 220;
    }

    textWidth = textWidth("RIGHT");
    if (mouseX > rightButton[0] - (textWidth/2) && mouseX < rightButton[0] + (textWidth/2) && mouseY > rightButton[1] - (textHeight/2) && mouseY < rightButton[1] + (textHeight/2)) {
      colorButton2 = 140;
    } else {
      colorButton2 = 220;
    }
  }

  public boolean checkClickLeft(int mX, int mY) {
    textSize(12);
    float textWidth = textWidth("LEFT");
    float textHeight = textAscent();
    if (mX > leftButton[0] - (textWidth/2) && mX < leftButton[0] + (textWidth/2) && mY > leftButton[1] - (textHeight/2) && mY < leftButton[1] + (textHeight/2)) {
      return true;
    } 
    return false;
  }

  public boolean checkClickRight(int mX, int mY) {
    textSize(12);
    float textHeight = textAscent();
    float textWidth = textWidth("RIGHT");

    if (mX > rightButton[0] - (textWidth/2) && mX < rightButton[0] + (textWidth/2) && mY > rightButton[1] - (textHeight/2) && mY < rightButton[1] + (textHeight/2)) {
      return true;
    } 
    return false;
  }

  public void setPlayer1(boolean value) {
    player1 = value;
    playerChosen = true;
  }

  public void setPlayer2(boolean value) {
    player2 = value;
    playerChosen = true;
  }

  private void displayChoosePlayer() {
    textAlign(CENTER);
    textSize(21);
    fill(255);

    text("Choose side:", width/2, (height/2)-50);

    textSize(12);
    fill(colorButton1);
    if (player1) {
      fill(50);
    }
    text("LEFT", leftButton[0], leftButton[1]);

    fill(colorButton2);
    if (player2) {
      fill(50);
    }
    text("RIGHT", rightButton[0], rightButton[1]);
  }

  private void displayWaitingForSecondPlayer() {
    textAlign(CENTER);
    textSize(21);
    fill(255);

    text("Waiting for second player!", width/2, (height/2)-50);
  }
}
