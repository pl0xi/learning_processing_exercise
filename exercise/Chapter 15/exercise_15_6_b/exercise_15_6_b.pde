size(255, 255);
loadPixels();
for (int x = 0; x < width; x++) {
  for (int y = 0; y < height; y++) {
    int loc = x + (y * width);
    float col;
    if (x > width/2) {
      col = map(dist(x, y, x, 0), 0, height, 0, 255);
      pixels[loc] = color(col);
    } else {
      col = map(dist(x, y, width/2, y), 0, width/2, 127, 0);
      pixels[loc] = color(col);
    }
  }
}
updatePixels();
