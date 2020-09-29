Catcher catcher; // One catcher object
Timer timer; // One timer object
Drop[] drops; // An array of drop objects
Score score;
int totalDrops = 0; // totalDrops
int level = 0;
void setup() {
  size(400, 400);
  // Create the catcher with a radius of 32
  catcher = new Catcher(32);
  // Create 1000 spots in the array
  drops = new Drop[250];
  // Create and start a timer that goes off every 300 milliseconds
  timer = new Timer(300);
  timer.start();
  // Create score, with 10 starting points
  score = new Score(10);
}
void draw() {
  background(255);
  game();
}

void game() {
  if (score.gameStatus()) {
    catcher.setLocation(mouseX, mouseY); // Set catcher location
    catcher.display(); // Display the catcher
    score.display();
    // Check the timer
    if (timer.isFinished()) {
      // Initialize one drop
      drops[totalDrops] = new Drop(level);
      // Increment totalDrops
      totalDrops++ ;
      // If totalDrops hit the end of the array
      if (totalDrops >= drops.length) {
        totalDrops = 0; // Start over
        level++;
        println("test");
      }
      timer.start();
    }
    // Move and display all drops
    for (int i = 0; i < totalDrops; i++) {
      drops[i].move();
      drops[i].display();
      if (catcher.intersect(drops[i])) {
        drops[i].caught();
        score.addPoint();
      } else if (drops[i].checkBottomCollision()) {
        score.removePoint();
      }
    }
  } else {
    fill(0);
    textAlign(CENTER);
    text("Game Over", width/2, height/2);
  }
}
