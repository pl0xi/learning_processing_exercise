import processing.video.*;
// Size of each cell in the grid, ratio of window size to video size
int videoScale = 10;
// Number of columns and rows in the system
int cols, rows;
// Variable to hold onto capture object
Capture video;
// A String and Font
String chars = "helloworld";
PFont f;
void setup() {
  size(1280, 720);
  // Set up columns and rows
  cols = width / videoScale;
  video = new Capture(this, width, height);
  video.start();
  // Load the font
  f = createFont("Courier", 16);
}
void captureEvent(Capture video) {
  video.read();
}
void draw() {
  background(0);
  video.loadPixels();
  // Use a variable to count through chars in a string
  int charcount = 0;
 
  for (int y = 0; y < height; y += 10) {
    float x = 0;
    while(x < width) {
      char currentChar = chars.charAt(charcount);
      color c = video.pixels[(int) x + y* video.width];

      textFont(f);
      fill(c);
      text(currentChar, x, y);
      charcount = (charcount + 1) % chars.length();
      x += textWidth(currentChar);
    }
  }
}
