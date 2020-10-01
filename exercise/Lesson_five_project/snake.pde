class Snake {
  int [][] snakePosition;
  int direction;
  Snake() {
    direction = 0;
    snakePosition = new int[3][3];
    for (int i = 0; i < snakePosition.length; i++) {
      snakePosition[i][0] = (int) map(i, 0, 2, 5, 3);
      snakePosition[i][1] = 15;
      snakePosition[i][2] = 0;
    }
  }

  public void moveSnake() {
    for (int i = snakePosition.length-1; i >= 0; i--) {
      if (i != 0) {
        snakePosition[i][0] = snakePosition[i-1][0];
        snakePosition[i][1] = snakePosition[i-1][1];
        snakePosition[i][2] = snakePosition[i-1][2];
      } else {
        switch(direction) {
        case 0:
          snakePosition[i][0] += 1;
          break;
        case 270:
          snakePosition[i][1] -= 1;
          break;
        case 180:
          snakePosition[i][0] -= 1;
          break;
        case 90:
          snakePosition[i][1] += 1;
          break;
        default:
          break;
        }
        snakePosition[i][2] = direction;
      }
    }
  }

  public void changeDirection(int key_) {
    switch(key_) { 
    case LEFT:
      if (snakePosition[0][2] == 0) break;
      direction = 180;
      break;
    case RIGHT:
      if (snakePosition[0][2] == 180) break;
      direction = 0;
      break;
    case UP:
      if (snakePosition[0][2] == 90) break;
      direction = 270;
      break;
    case DOWN:
      if (snakePosition[0][2] == 270) break;
      direction = 90;
      break;
    default:
      break;
    }
  }

  public void snakeBorderCollision() {
    if (snakePosition[0][0] == 30 || snakePosition[0][0] == -1) {
      snakePosition[0][0] = (int) map(snakePosition[0][0], -1, 30, 29, 0);
    } else if (snakePosition[0][1] == 30 || snakePosition[0][1] == -1) {
      snakePosition[0][1] = (int) map(snakePosition[0][1], -1, 30, 29, 0);
    }
  }

  public void addLength() {
    int [][] newSnake = new int [snakePosition.length+1][3];
    for (int i = 0; i < snakePosition.length; i++) {
      newSnake[i][0] = snakePosition[i][0];
      newSnake[i][1] = snakePosition[i][1];
      newSnake[i][2] = snakePosition[i][2];
    }

    switch(snakePosition[snakePosition.length-1][2]) {
    case 0:
      newSnake[newSnake.length-1][0] = snakePosition[snakePosition.length-1][0]-1;
      newSnake[newSnake.length-1][1] = snakePosition[snakePosition.length-1][1];
      break;
    case 90:
      newSnake[newSnake.length-1][0] = snakePosition[snakePosition.length-1][0];
      newSnake[newSnake.length-1][1] = snakePosition[snakePosition.length-1][1]-1;
      break;
    case 180:
      newSnake[newSnake.length-1][0] = snakePosition[snakePosition.length-1][0]+1;
      newSnake[newSnake.length-1][1] = snakePosition[snakePosition.length-1][1];
      break;
    case 270:
      newSnake[newSnake.length-1][0] = snakePosition[snakePosition.length-1][0];
      newSnake[newSnake.length-1][1] = snakePosition[snakePosition.length-1][1]+1;
      break;
    default:
      break;
    }

    snakePosition = newSnake;
  }

  public boolean collisionDetectorSnakeOnSnake() {
    for (int i = 1; i < snakePosition.length; i++) {
      if (snakePosition[i][0] == snakePosition[0][0] && snakePosition[i][1] == snakePosition[0][1]) {
        return false;
      }
    }
    
    return true;
  }
}
