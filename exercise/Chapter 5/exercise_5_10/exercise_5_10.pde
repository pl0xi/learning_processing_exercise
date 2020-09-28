float x = 100; // x location of square
float y = 0; // y location of square
float speed = 0, speedX = 0; // speed of square
float gravity = 0.1;
float theta;
void setup() {
  size(200, 200);
}
void draw() {
  background(255);
  // Draw the ball
  fill(map(sin(theta), -1, 1, 0, 255));
  ellipse(x, y, 10, 10);
  y = y + speed;
  speed = speed + gravity;
  x += speedX;
  // Bounce back up!
  if (y > height) {
    speed = speed * -0.95;

    y = height;
  }
  
  if (x >= width || x <= 0) {
    speedX *= -1;
  }
  
  theta += 0.05;
}

void mousePressed() {
  if(mouseX > width/2) {
    speedX = 0.5;
  } else {
    speedX = -0.5;
  }
}
