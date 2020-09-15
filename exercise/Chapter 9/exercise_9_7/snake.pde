class Snake {
  int [] xpos, ypos;
  Snake(int count_) {
    xpos = new int[count_]; 
    ypos = new int[count_];
    preValuesMouse();
  }

  void preValuesMouse() {
    for (int i = 0; i < xpos.length; i ++ ) {
      xpos[i] = 0; 
      ypos[i] = 0;
    }
  }

  void display() {
    updateMouseHistory();
    drawCircles();
  }

  void updateMouseHistory() {
    for (int i = 0; i < xpos.length-1; i ++ ) {
      // Shift all elements down one spot. 
      // xpos[0] = xpos[1], xpos[1] = xpos = [2], and so on. 
      // Stop at the second to last element.
      xpos[i] = xpos[i+1];
      ypos[i] = ypos[i+1];
    }

    xpos[xpos.length-1] = mouseX; 
    ypos[ypos.length-1] = mouseY;
  }

  void drawCircles() {
    for (int i = 0; i < xpos.length; i ++ ) {
      // Draw an ellipse for each element in the arrays. 
      // Color and size are tied to the loop's counter: i.
      noStroke();
      fill(255-i*5);
      ellipse(xpos[i], ypos[i], i, i);
    }
  }
}
