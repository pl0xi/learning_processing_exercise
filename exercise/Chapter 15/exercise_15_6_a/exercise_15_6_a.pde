size(255, 255);
loadPixels();
for (int x = 0; x < width; x++) {
  for (int y = 0; y < height; y++) {
    int loc = x + (y * width);
    float distance = map(dist(x, y, width/2, height/2), 0, width+height, 0, 255);
    pixels[loc] = color(distance);
  }
}
updatePixels();
