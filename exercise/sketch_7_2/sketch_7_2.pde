void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  myName();
}

void myName() {
  fill(0);
  textAlign(CENTER);
  textSize(32);
  text("Benjamin", width/2, height/2);
}
