PImage img; 
int rectSize;

void setup() {
  size(800, 600);
  img = loadImage("king-kong.jpg");
  rectSize = 12;
}

void draw() {
  background(255);
  img.loadPixels();
  for (int x = 0; x < img.width; x += rectSize) {
    for (int y = 0; y < img.height; y += rectSize) {
      int loc = (x + rectSize/2) + ((y + rectSize/2) * img.width);
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      fill(r, g, b);
      rect(x, y, rectSize, rectSize);
    }
  }
}
