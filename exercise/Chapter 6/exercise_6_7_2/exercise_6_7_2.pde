void setup() {
  size(200, 200);
  noStroke();
  int i = 0;
  while (i < width) {
    int b = 0;
    while (b < height) {
      fill(random(0, 255));
      rect(i, b, 10, 10);
      b += 10;
    }
    i += 10;
  }
}
