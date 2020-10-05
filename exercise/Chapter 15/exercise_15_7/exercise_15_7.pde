PImage img;
boolean changeImg;
void setup() {
  size(800, 600);
  img = loadImage("king-kong.jpg");
  changeImg = false;
}

void draw() {
  loadPixels();
  img.loadPixels();
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y * width;
      float r = red (img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue (img.pixels[loc]);
      // image processing!
      // image processing!
      // image processing!
      // Set the display pixel
      if (changeImg) {
        r = constrain(r - 50, 0, 255);
        g = constrain(g - 50, 0, 255);
        b = constrain(b - 50, 0, 255);
      }

      pixels[loc] = color(r, g, b);
    }
  }
  updatePixels();
}

void mousePressed() {
  changeImg = !changeImg;
}
