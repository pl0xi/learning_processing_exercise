import processing.video.*;
Capture camera;

void setup() {
  size(1280, 720);
  frameRate(144);
  String [] cams = Capture.list();
  camera = new Capture(this, 1280, 720, cams[35]);
  camera.start();
}

void draw() {
  camera.loadPixels();

  for (int x = 0; x < camera.width; x += 10) {
    for (int y = 0; y < camera.height; y += 10) {
      int loc = x + (y * camera.width);
      float r = red(camera.pixels[loc]);
      float g = green(camera.pixels[loc]);
      float b = blue(camera.pixels[loc]);
      
      noStroke();
      fill(r, g, b);
      if (y%15 == 0) {
        circle(x+5, y+5, 10);
      } else {
        rectMode(CENTER);
        rect(x+5, y+5, 10, 10);
      }
    }
  }
}

void captureEvent(Capture camera) {
  camera.read();
}
