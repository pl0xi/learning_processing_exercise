Cell [][] board;
boolean turn;
boolean gameOn;
String winner;

void setup() {
  size(300, 300);
  board = new Cell [3][3];
  for (int i = 0; i < board.length; i++) {
    for (int b = 0; b < board[0].length; b++) {
      board[i][b] = new Cell(i*(width/3), b*(height/3), width/3, height/3);
    }
  }
  turn = false;
  gameOn = true;
}

void draw() {
  background(255);
  if (gameOn) {
    for (int i = 0; i < board.length; i++) {
      for (int b = 0; b < board[0].length; b++) {
        board[i][b].display();
        showState(board[i][b].state, i, b);
      }
    }
  } else {
    fill(0);
    textAlign(CENTER);
    textSize(14);
    text("Winner Winner Chicken Dinner: " + winner + "\nClick, to play again", width/2, height/2);
  }
}

void mousePressed() {
  for (int i = 0; i < board.length; i++) {
    for (int b = 0; b < board[0].length; b++) {
      if (board[i][b].checkClick(turn)) {
        turn = !turn;
      }
    }
  }
  gameOn = checkWinCondition();
}

public void showState(String state, int i, int b) {
  int midPointRefX = width/3;
  int midPointRefY = height/3;
  switch(state) {
  case "Nothing":
    break;
  case "Circle":
    strokeWeight(3);
    noFill();
    circle(i*midPointRefX+(midPointRefX/2), b*midPointRefY+(midPointRefY/2), 70);
    break;
  case "X": 
    strokeWeight(3);
    for (int c = 45; c < 360; c += 90) {
      float pos2X = 50 * cos(radians(c));
      float pos2Y = 50 * sin(radians(c));
      line(i*midPointRefX+(midPointRefX/2), b*midPointRefY+(midPointRefY/2), i*midPointRefX+(midPointRefX/2) + pos2X, b*midPointRefY+(midPointRefY/2) + pos2Y);
    }
    break;
  default:
    break;
  }
}

public boolean checkWinCondition() {
  if (!gameOn) {
    resetGame();
    winner = "";
  } 

  for (int i = 0; i < board.length; i++) {
    if (board[i][0].state == "X" && board[i][1].state == "X" && board[i][2].state == "X" ) {
      winner = "X";
      return false;
    } else if (board[i][0].state == "Circle" && board[i][1].state == "Circle" && board[i][2].state == "Circle") {
      winner = "Circle";
      return false;
    } 

    for (int b = 0; b < board[i].length; b++) {
      if (board[0][b].state == "X" && board[1][b].state == "X" && board[2][b].state == "X" ) {
        winner = "X";
        return false;
      } else if (board[0][b].state == "Circle" && board[1][b].state == "Circle" && board[2][b].state == "Circle") {
        winner = "Circle";
        return false;
      }
    }
  }

  if (board[0][0].state == "X" && board[1][1].state == "X" && board[2][2].state == "X" || board[0][2].state == "X" && board[1][1].state == "X" && board[2][0].state == "X") {
    winner = "X";
    return false;
  } else if (board[0][0].state == "Circle" && board[1][1].state == "Circle" && board[2][2].state== "Circle" || board[0][2].state == "Circle" && board[1][1].state == "Circle" && board[2][0].state == "Circle") {
    winner = "Circle";
    return false;
  }
  int counter = 0;
  for (int i = 0; i < board.length; i++) {
    for (int b = 0; b < board[0].length; b++) {
      if (board[i][b].state != "Nothing") {
        counter++;
      }
    }
  }

  if (counter == 9) {
    winner = "TO NO ONE";
    return false;
  }

  return true;
}

public void resetGame() {
  for (int i = 0; i < board.length; i++) {
    for (int b = 0; b < board[0].length; b++) {
      board[i][b].state = "Nothing";
    }
  }
}
