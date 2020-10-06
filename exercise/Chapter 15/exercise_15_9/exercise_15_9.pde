PImage img1, img2;
float threshold;

void setup() {
  size(800, 600);
  img1 = loadImage("king-kong.jpg");
  img2 = createImage(img1.width, img1.height, RGB);
  threshold = 0;
}

void draw() {
  img1.loadPixels();
  img2.loadPixels();
  threshold = map(mouseX, 0, width, 0, 255);
  for (int x = 0; x < img1.width; x++) {
    for (int y = 0; y < img1.height; y++) {
      int loc = x + (y * img1.width);
      if (brightness(img1.pixels[loc]) < threshold) {
        img2.pixels[loc] = color(255);
      } else {
        img2.pixels[loc] = color(0);
      }
    }
  }
  img2.updatePixels();
  image(img2, 0, 0);
  
}
