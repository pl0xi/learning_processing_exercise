Dog dog;
Cat cat;
Fish fish;
float theta, theta2, thetaBreathing;

void setup() {
  size(800, 600, P3D);
  dog = new Dog(200, height/2, 50);
  cat = new Cat(400, height/2, 20);
  fish = new Fish(600, height/2);
  theta = 0;
  theta2 = 28941;
  thetaBreathing = 0;
}

void draw() {
  background(255);
  translate(width/2, height/2);
  rotateX(map(mouseY, 0, height, 0, PI*2));
  rotateY(map(mouseX, 0, width, 0, PI*2));
  translate(-width/2, -height/2);
  float angle1 = map(noise(theta), 0, 1, -radians(20), radians(20));
  float angle2 = map(noise(theta2), 0, 1, -radians(20), radians(20));
  cat.display();
  cat.updateTail(angle1, angle2);
  cat.headOffsetY(map(sin(thetaBreathing),-1, 1, -5, 5));
  
  fish.display();
  
  dog.display();
  dog.updateTail(angle2, angle1);
  dog.headOffsetY(map(sin(thetaBreathing+2),-1, 1, -5, 5));
  
  thetaBreathing += 0.03;
  theta += 0.01;
  theta2 += 0.02;
}
