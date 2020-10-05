PImage [] images;
float theta;

void setup() {
  size(800, 600);
  images = new PImage [5];

  for (int i = 0; i < images.length; i++) {
    images[i] = loadImage("pic"+(i+1)+".jpg");
  }
  
  theta = 0;
}

void draw() {
  background(255);
  for (int i = 0; i < images.length; i++) {
    float alpha = map(sin(theta*i), -1, 1, 0, 255);
    imageMode(CENTER);
    tint(255, alpha);
    image(images[i], width/2, height/2);
  }
  theta += 0.02;
}
