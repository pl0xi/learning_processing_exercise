void setup() {
  size(800, 600);
}

void draw() {
  // 1 Pixel Thickness
  strokeWeight(1);
  line(0,height/4, width, height/4);
  
  // 5 Pixel Thickness
  strokeWeight(5);
  line(0,height/3, width, height/3);
  
  // 10 Pixel Thickness
  strokeWeight(10);
  line(0,height/2, width, height/2);
}
