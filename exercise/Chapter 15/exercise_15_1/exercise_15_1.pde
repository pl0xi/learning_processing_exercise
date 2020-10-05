PImage img;
float imageSizeX, imageSizeY, offsetSize;
void setup() {
  size(800, 1000);
  img = loadImage("albert-einstein-tongue.jpg");
  imageSizeX = 800;
  imageSizeY = 1000;
  offsetSize = 0;
}

void draw() {
  background(255); 
  imageMode(CENTER);
  image(img, width/2, height/2, imageSizeX - offsetSize, imageSizeY - (offsetSize * 1000/800));
  offsetSize = dist(width/2, height/2, mouseX, mouseY);
}
