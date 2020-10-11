PImage img;
String text = "PROCCESING";
PFont f;

void setup() {
  size(1280, 720);
  img = loadImage("bear.png");
  f = loadFont("Candara-48.vlw");
  textFont(f, 48);
}

void draw() {
  background(0);
  
  int i = 0;

  for (int y = 0; y < img.height; y += 18) {
    for (int x = 0; x < img.width; x += 15) {
      int loc = x + (y * img.width);

      float brightness = brightness(img.pixels[loc]);
      float textSize = map(brightness, 0, 255, 8, 30);
      char currentChar = text.charAt(i); 

      textAlign(CENTER);
      textSize(textSize);
      fill(255);
      text(currentChar, x, y);
      i = (i+1)%text.length();
    }
  }
}
