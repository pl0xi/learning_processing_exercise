import processing.video.*;

PImage prevFrame;
Capture cam;

void setup() {
  size(1280, 720);
  frameRate(30);
  prevFrame = createImage(width, height, RGB);
  cam = new Capture(this, width, height);
  cam.start();
}

void draw() {
  background(0);

  loadPixels();
  cam.loadPixels();
  prevFrame.loadPixels();

  int counter = 0;
  int xAmount = 0;
  int yAmount = 0;

  for (int x = 0; x < cam.width; x++) {
    for (int y = 0; y < cam.height; y++) {
      int loc = x + (y * cam.width);

      float r1 = red(cam.pixels[loc]);
      float g1 = green(cam.pixels[loc]);
      float b1 = blue(cam.pixels[loc]);

      float r2 = red(prevFrame.pixels[loc]);
      float g2 = green(prevFrame.pixels[loc]);
      float b2 = blue(prevFrame.pixels[loc]);

      float d = dist(r1, g1, b1, r2, g2, b2);

      if (d < 50) {
        pixels[loc] = color(255);
      } else {
        counter++;

        xAmount += x;
        yAmount += y;
      }
    }
  }

  prevFrame.pixels = cam.pixels;
  prevFrame.updatePixels();
  updatePixels();
  
  if (counter != 0) {
    float averageX = xAmount / counter;
    float averageY = yAmount / counter;
    fill(255, 0, 0);
    circle(averageX, averageY, 100);
  }
}

void captureEvent(Capture cam) {
  cam.read();
}
