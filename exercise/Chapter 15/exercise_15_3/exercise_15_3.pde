PImage img;
float distR, distG, distB;

void setup() {
  size(800, 1000);
  img = loadImage("albert-einstein-tongue.jpg");
  distR = 0;
  distG = 0;
  distB = 0;
}

void draw() {
  distR = map(dist(mouseX, mouseY, 0, 0), 0, width+height, 0, 255);
  distG = map(dist(mouseX, mouseY, width, height), 0, width+height, 0, 255);
  distB = map(dist(mouseX, mouseY, width, 0), 0, width+height, 0, 255);
  background(255);
  imageMode(CENTER);
  tint(distR, distG, distB);
  image(img, width/2, height/2);
}
