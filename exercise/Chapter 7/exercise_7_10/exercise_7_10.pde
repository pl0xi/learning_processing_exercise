void setup() {
  size(640, 360);
}
void draw() {
  background(255);
  spaceShip(482, 159, 223);
  spaceShip(126, 89, 93);
  spaceShip(422, 286, 84);
  spaceShip(294, 49, 48);
  spaceShip(162, 220, 151);
}

void spaceShip(int posX, int posY, int size) {
  noStroke();
  fill(0);
  ellipse(posX, posY, size, 0.39*size);
  ellipse(posX, posY-(0.15*size), 0.5*size, 0.39*size);
  fill(255);
  for (float i = -0.249*size; i <= 0.249*size; i += 0.249*size) {
    ellipse(posX+i, posY, 0.15*size, 0.15*size);
  }
}
