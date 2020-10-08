import processing.video.*;
Capture cam;
color colorTrack;
float lowestDiffPixel;
int lowestDiffX;
int lowestDiffY;

void setup() {
  size(1280, 720);
  cam = new Capture(this, width, height, Capture.list()[35]);
  cam.start();

  colorTrack = color(255, 0, 0);
}

void draw() {
  background(255);
  image(cam, 0, 0);

  lowestDiffPixel = 50000;
  cam.loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int loc = x + (y * width);
      float r = red(cam.pixels[loc]);
      float g = green(cam.pixels[loc]);
      float b = blue(cam.pixels[loc]);

      float colorTrackR = red(colorTrack);
      float colorTrackG = green(colorTrack);
      float colorTrackB = blue(colorTrack);

      float d = dist(r, g, b, colorTrackR, colorTrackG, colorTrackB);

      if (d < lowestDiffPixel) {
        lowestDiffPixel = d;
        lowestDiffX = x;
        lowestDiffY = y;
      }
    }
  }

  if (lowestDiffPixel < 10) {
    fill(map(lowestDiffX+lowestDiffY, 0, width+height, 0, 255));
    circle(lowestDiffX, lowestDiffY, 100);
  }
}

void captureEvent(Capture cam) {
  cam.read();
}

void mouseClicked() {
  int x = mouseX;
  int y = mouseY;
  int loc = x + (y * width);

  loadPixels();
  float r = red(pixels[loc]);
  float g = green(pixels[loc]);
  float b = blue(pixels[loc]);

  colorTrack = color(r, g, b);
}
