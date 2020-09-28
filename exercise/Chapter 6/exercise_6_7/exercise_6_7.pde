void setup() {
  size(200, 200);
  noStroke();
  for (int i = 0; i < width; i += 10) {
    for (int b = 0; b < height; b += 10) {
      fill(random(0, 255));
      rect(i, b, 10, 10);
    }
  }
}
