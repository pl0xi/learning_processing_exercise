void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  rectMode(CENTER);
  ellipseMode(CENTER);

  translate(mouseX, mouseY);

  // Draw Zoog's body
  stroke(randomRGBColors());
  fill(randomRGBColors());
  rect(0, 0, 20, 100);

  // Draw Zoog's head
  stroke(randomRGBColors());
  fill(randomRGBColors());
  ellipse(0, -30, 60, 60);

  //
  stroke(randomRGBColors());
  fill(randomRGBColors());
  ellipse(-19, -30, 16, 32);
  ellipse(19, -30, 16, 32);

  // Draw Zoog's legs
  stroke(randomRGBColors());
  line(-10, 50, -20, 60);
  line(10, 50, 20, 60);
}

color randomRGBColors() {
  return color(random(0, 255), random(0, 255), random(0, 255));
}
