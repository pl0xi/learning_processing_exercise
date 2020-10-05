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

      float rCol = map(mouseX, 0, width, 0, 25);
      float gCol = map(mouseY, 0, height, 0, 25);
      float bCol = map(dist(mouseX, mouseY, width, height), 0, width+height, 0, 10);

      r = constrain(r + rCol, 0, 255);
      g = constrain(g + gCol, 0, 255);
      b = constrain(b + bCol, 0, 255);


      pixels[loc] = color(r, g, b);
    }
  }
  updatePixels();
}
