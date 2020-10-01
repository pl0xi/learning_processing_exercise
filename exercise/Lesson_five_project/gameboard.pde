class GameBoard {
  int sizeX, sizeY;
  int [][] board;
  GameBoard() {
    sizeX = width;
    sizeY = height;
    board = new int [width/20][height/20];
  }

  public void display(int [][] snakePosition, int [][] apples) {
    for (int i = 0; i < board.length; i++) {
      for (int b = 0; b < board[i].length; b++) {
        displayApples(apples, i, b);
        displaySnakes(snakePosition, i, b);
      }
    }
  }

  private void displaySnakes(int [][] snakePosition, int i, int b) {
    for (int c = 0; c < snakePosition.length; c++) {
      if (snakePosition[c][0] == i && snakePosition[c][1] == b) {
        noStroke();
        if (c == 0) {
          pushMatrix();
          fill(0, 255, 0);
          translate(i*20+10, b*20+10);
          rotate(radians(snakePosition[c][2]));
          rect(-10, -10, 20, 20, 0, 10, 10, 0);
          fill(0);
          circle(0, -5, 5);
          circle(0, 5, 5);

          popMatrix();
        } else if (c == snakePosition.length-1) {
          pushMatrix();
          fill(0, 255, 0);
          translate(i*20+10, b*20+10);
          if (snakePosition[c-1][2] != snakePosition[c][2]) {
            rotate(radians(snakePosition[c-1][2]));
          } else rotate(radians(snakePosition[c][2]));
          rect(-10, -10, 20, 20, 20, 0, 0, 20);
          popMatrix();
        } else {
          fill(0, 255, 0);
          rect(i*20, b*20, 20, 20);
        }
      }
    }
  }

  private void displayApples(int [][] apples, int i, int b) {
    for (int c = 0; c < apples.length; c++) {
      if (apples[c][0] == i && apples[c][1] == b) {
        int pointX = (i*20)+10;
        int pointY = (b*20)+10;
        fill(255, 0, 0);
        circle(pointX, pointY, 20);
        strokeWeight(2);
        stroke(0, 255, 0);
        line(pointX, pointY-8, pointX, pointY-12);
      }
    }
  }
}
