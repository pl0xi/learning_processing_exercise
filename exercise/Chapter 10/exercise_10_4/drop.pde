class Drop {
  float x, y; // Variables for location of raindrop
  float speed; // Speed of raindrop
  color c;
  float r; // Radius of raindrop
  Drop(int level) {
    r = 8; // All raindrops are the same size
    x = random(width); // Start with a random x location
    y = -r*4; // Start a little above the window
    speed = random(1+level, 5+level); // Pick a random speed
    c = color(50, 100, 150); // Color
  }
  // Move the raindrop down
  void move() {
    y += speed; // Increment by speed
  }
  // Display the raindrop
  void display() {
    // Display the drop
    fill(c);
    noStroke();
    for (int i = 2; i < r; i++) {
      ellipse(x, y+i*4, i*2, i*2);
    }
  }
  // If the drop is caught
  void caught() {
    speed = 0; // Stop it from moving by setting speed equal to zero
    y = -1000; // Set the location to somewhere way off-screen
  }

  boolean checkBottomCollision() {
    if ( y > height + r*4) {
      speed = 0;
      y = -1000;
      return true;
    } else {
      return false;
    }
  }
}
