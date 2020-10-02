Cell [][] board;
void setup() {
  size(300, 300);
  board = new Cell [3][3];
  for (int i = 0; i < board.length; i++) {
    for (int b = 0; b < board[0].length; b++) {
      board[i][b] = new Cell(i*(width/3), b*(height/3), width/3, height/3);
    }
  }
}

void draw() {
  background(255);
  for (int i = 0; i < board.length; i++) {
    for (int b = 0; b < board[0].length; b++) {
      board[i][b].display();
    }
  }
}

void mousePressed() {
  for (int i = 0; i < board.length; i++) {
    for (int b = 0; b < board[0].length; b++) {
      board[i][b].checkClick();
    }
  }
}
