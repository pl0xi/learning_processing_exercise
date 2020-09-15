float x;
float y;
float r = 50;

void setup() {
  size(200, 200);
  x = width/2;
  y = height/2;
}

void draw() {
  background(255);
  stroke(0);
 
  
  if (r > dist(mouseX, mouseY, x, y)) {
    fill(200);
  } else {
    fill(0);
  }
  ellipseMode(RADIUS);
  circle(x, y, r);
}
