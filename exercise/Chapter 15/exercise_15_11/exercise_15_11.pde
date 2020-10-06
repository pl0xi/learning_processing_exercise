Blend img;
void setup() {
  size(800, 600);
  img = new Blend("king-kong.jpg", "rainbow-kirby.jpg");
}

void draw() {
  background(255);
  image(img.getBlendedImg(), 0, 0);
}
