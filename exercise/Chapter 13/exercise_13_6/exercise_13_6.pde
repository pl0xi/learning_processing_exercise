// A polar coordinate
float r = 0;
float theta = 0;
void setup() {
  size(200, 200);
  background(255);
}
void draw() {
  float x = r * cos(theta);
  float y = r * sin(theta);
  noStroke();
  fill(0);
  ellipse(x + width/2, y + height/2, 16, 16); 

  // Increment the angle
  r += 0.05;
  theta += 0.01;
}
