String stocks = "ROG 812 XAS 213 BUID 213 MICC 210 ";
PFont f;
int x, x1;
float xWidth;

void setup() {
  size(200, 200);  
  f = loadFont("BookAntiqua-21.vlw");
  textFont(f, 21);
  xWidth = textWidth(stocks);
  x = 0;
  x1 = (int) xWidth;
}

void draw() {
  background(255);
  fill(0);
  text(stocks, x, height/2);
  text(stocks, x1, height/2);

  if (x < -xWidth) {
    x = x1 + (int) xWidth;
  }

  if (x1 < -xWidth) {
    x1 = x + (int) xWidth;
  }

  x--;
  x1--;
}
