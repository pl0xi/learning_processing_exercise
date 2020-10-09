import processing.video.*;

Capture cam;
getColors colorGrabber;
interactiveObjects [] objects;
color colorToTrack;
int savePosX, savePosY;

void setup() {
  size(1280, 720);
  cam = new Capture(this, width, height);
  cam.start();

  colorGrabber = new getColors();

  objects = new interactiveObjects [3];
  objects[0] = new interactiveObjects(300, height/4, "circle", 40, color(255, 0, 0), color(0, 255, 0));
  objects[1] = new interactiveObjects(1000, height/4, "rect", 60, color(0, 0, 255));
  objects[2] = new interactiveObjects(200, 500, "point", 100, color(255, 0, 0), color(0, 255, 0));

  savePosX = width/2;
  savePosY = height/9;

  colorToTrack = color(255, 0, 0);
}

void draw() {
  background(255);

  image(cam, 0, 0);
  int [] currentPosition = getPositionWithColor();

  for (int i = 0; i < objects.length; i++) {
    if (currentPosition != null) {
      if (objects[i].checkCollision(currentPosition[0], currentPosition[1])) {
        objects[i].animateObjects();
      }
    }

    objects[i].display();
  }

  noFill();
  strokeWeight(1);
  stroke(0);
  if (currentPosition != null) {
    circle(currentPosition[0], currentPosition[1], 20);
  }

  strokeWeight(1);
  fill(0);
  textAlign(CENTER);
  text("Click to change to color in circle", savePosX, height/15);

  noFill();
  stroke(0);
  strokeWeight(2);
  circle(savePosX, height/9, 50);
}

void captureEvent(Capture cam) {
  cam.read();
}

void mouseClicked() {
  colorToTrack = colorGrabber.getColorsFromPos(savePosX, savePosY, cam);
}

int [] getPositionWithColor() {
  cam.loadPixels();

  int [] king = new int [2];
  float kingDistance = 10000;

  for (int x = 0; x < cam.width; x++) {
    for (int y = 0; y < cam.height; y++) {
      int loc = x + (y * cam.width);

      float r = red(cam.pixels[loc]);
      float g = green(cam.pixels[loc]);
      float b = blue(cam.pixels[loc]);

      float rRef = red(colorToTrack);
      float gRef = green(colorToTrack);
      float bRef = blue(colorToTrack);

      float d = dist(r, g, b, rRef, gRef, bRef);

      if (d < kingDistance) {
        king[0] = x;
        king[1] = y;
        kingDistance = d;
      }
    }
  }

  if (kingDistance > 50) {
    return null;
  }

  return king;
}
