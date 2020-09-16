int circleSize = 0;
int circleX = 100;
int circleY = 100;

void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  stroke(255);
  fill(175);
  ellipse(mouseX, mouseY, circleX, circleX);
  
  circleX = circleX + 1;
}
