RotatingLine rotatingLine;

void setup() {
  size(800, 600);
  frameRate(60);
  rotatingLine = new RotatingLine(width/2, height/2, 200);
}

void draw() {
  background(255);
  rotatingLine.display();
  rotatingLine.rotateLine();
}
