int [][] box = new int [2][2];
void setup() {
  size(200, 200);
  for (int i = 0; i < box.length; i++) {
    for (int b = 0; b < box.length; b++) {
      box[i][b] =  0;
    }
  }
}
void draw() {
  background(255);
  noStroke();
  fill(0);
  if (mouseX < 100 && mouseY < 100) {
    box[0][0] = 255;
  } else if (mouseX > 100 && mouseY < 100) {
    box[1][0] = 255;
  } else if (mouseX < 100 && mouseY > 100) {
    box[0][1] = 255;
  } else if (mouseX > 100 && mouseY > 100) {
    box[1][1] = 255;
  }
  // box[i] = constrain(box[i]-1, 0, 255);
  // fill(box[i]);
  for (int i = 0; i < box.length; i++) {
    for (int b = 0; b < box.length; b++) {
      fill(box[i][b]);
      rect(i*100, b*100, 100, 100);
      box[i][b] = constrain(box[i][b]-1, 0, 255);
    }
  }
}
