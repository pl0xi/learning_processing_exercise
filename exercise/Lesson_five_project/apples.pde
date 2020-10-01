class Apples {
  int [][] apples;
  Apples(int addAmountOfApples, int [][] snake) {
    apples = new int [addAmountOfApples][2];
    for (int i = 0; i < apples.length; i++) {
      apples[i][0] = (int) random(29);
      apples[i][1] = (int) random(29);
      for (int b = 0; b < snake.length; b++) {
        while (snake[b][0] == apples[i][0] && snake[b][1] == apples[i][1]) {
          apples[i][0] = (int) random(29);
          apples[i][1] = (int) random(29);
        }
      }
    }
  }

  void eatenApple(int index, int [][] snake) {
    apples[index][0] = (int) random(29);
    apples[index][1] = (int) random(29);
    for (int b = 0; b < snake.length; b++) {
      while (snake[b][0] == apples[index][0] && snake[b][1] == apples[index][1]) {
        apples[index][0] = (int) random(29);
        apples[index][1] = (int) random(29);
      }
    }
  }
}
