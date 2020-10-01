GameBoard gameBoard;
Snake snake;
Apples apples;
int timerMove;
int timerMoveRef;
boolean gameStatus;

void setup() {
  size(600, 600);
  gameBoard = new GameBoard();
  snake = new Snake();
  apples = new Apples(1, snake.snakePosition);
  timerMove = 300;
  timerMoveRef = 300;
  gameStatus = snake.collisionDetectorSnakeOnSnake();
}

void draw() {
  background(0, 100, 0);
  if (gameStatus) {
    if (millis() > timerMove) {
      snake.moveSnake();
      snake.snakeBorderCollision();
      collisionDetectorApplesSnakes(snake.snakePosition, apples.apples);
      gameStatus = snake.collisionDetectorSnakeOnSnake();
      timerMove = millis() + timerMoveRef;
    }

    gameBoard.display(snake.snakePosition, apples.apples);
    displayScore();
  } else {
    text("Game Over", width/2, height/2);
    displayScore();
  }
}

void keyPressed() {
  if (key == CODED) snake.changeDirection(keyCode);
}

void collisionDetectorApplesSnakes(int [][] snakePosition, int [][] applePosition) {
  for (int i = 0; i < applePosition.length; i++) {
    if (applePosition[i][0] == snakePosition[0][0] && applePosition[i][1] == snakePosition[0][1]) {
      apples.eatenApple(i, snakePosition);
      snake.addLength();
    }
  }
}

void displayScore() {
  textAlign(CENTER);
  fill(0);
  textSize(18);
  text("Score: " + (snake.snakePosition.length-3), width/2, 30);
}
