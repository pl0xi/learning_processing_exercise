import processing.video.*;
Capture video;
int pointillize = 16;

void setup() {
  size(1280, 720);
  frameRate(200);
  video = new Capture(this, 1280, 720, Capture.list()[35], 30);
  video.start();
}

void draw() {

  // Pick a random point
  int x = int(random(video.width));
  int y = int(random(video.height));
  int loc = x + y * video.width;
  // Look up the RGB color in the source image
  video.loadPixels();
  float r = red(video.pixels[loc]);
  float g = green(video.pixels[loc]);
  float b = blue(video.pixels[loc]);

  noStroke();
  fill(r, g, b, 100);
  ellipse(x, y, pointillize, pointillize); 
}

void captureEvent(Capture video) {
  video.read();
}
