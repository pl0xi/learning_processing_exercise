// Rectangle starts at location x
float x = 0;
void setup() {
  size(200, 200);
}
void draw() {
  background(255);
  // Display object
  fill(0);
  rect(x, 100, 20, 20);
  // Increment x
  x = constrain(x + 1, 0, 100);
  
  
}
