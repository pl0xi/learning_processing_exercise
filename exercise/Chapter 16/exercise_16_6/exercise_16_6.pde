import processing.video.*;

PImage background, beach;
Capture cam;
float threshold;

void setup() {
  size(1280, 720);
  frameRate(30);

  threshold = 20; 

  background = createImage(width, height, RGB);
  beach = loadImage("beach.jpg");
  
  cam = new Capture(this, width, height);
  cam.start();
}

void draw() {

  loadPixels();
  cam.loadPixels();
  background.loadPixels();
  beach.loadPixels();
  for (int x = 0; x < cam.width; x++) {
    for (int y = 0; y < cam.height; y++) {
      int loc = x + (y * cam.width);

      float r1 = red(cam.pixels[loc]);
      float g1 = green(cam.pixels[loc]);
      float b1 = blue(cam.pixels[loc]);

      float r2 = red(background.pixels[loc]);
      float g2 = green(background.pixels[loc]);
      float b2 = blue(background.pixels[loc]);

      float d = dist(r1, g1, b1, r2, g2, b2);

      if (d < threshold) {
        pixels[loc] = beach.pixels[loc];
      } else {
        pixels[loc] = cam.pixels[loc];
      }
    }
  }

  updatePixels();
}

void captureEvent(Capture cam) {
  cam.read();
}

void mouseClicked() {
  background.copy(cam, 0, 0, cam.width, cam.height, 0, 0, cam.width, cam.height);
  background.updatePixels();
}
