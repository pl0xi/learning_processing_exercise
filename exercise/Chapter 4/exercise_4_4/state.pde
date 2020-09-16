class State {
  State() {
  }

  void display(int currentScreenState) {
    switch(currentScreenState) {
    case 0:
      fourballs.displayBalls();
      break;
    case 1:
      lines.displayLines();
      break;
    case 2:
      oneball.displayBall();
      break;
    default:
      fourballs.displayBalls();
      break;
    }
  }
}
