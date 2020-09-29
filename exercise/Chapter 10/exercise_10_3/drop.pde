class Drop {
  float x, y; // Variables for location of raindrop
  float speed; // Speed of raindrop
  color c;
  float r; // Radius of raindrop
  Drop() {
    r = 8; // All raindrops are the same size
    x = random(width); // Start with a random x location
    y = -r*4; // Start a little above the window
    speed = random(1, 5); // Pick a random speed
    c = color(50, 100, 150); // Color
  }
  // Move the raindrop down
  void move() {
    y += speed;
  }
  // Check if it hits the bottom
  boolean reachedBottom() {
    if (y > height + r*4) {
      return true;
    } else {
      return false;
    }
  }
  // Display the raindrop
  void display() {
    fill(50, 100, 150);
    noStroke();
    ellipse(x, y, r*2, r*2);
  }
}
