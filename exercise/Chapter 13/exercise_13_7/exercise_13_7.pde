Oscillator oscillator;
Oscillator oscillator2;
Oscillator oscillator3;

void setup() {
  size(200, 200);
  oscillator = new Oscillator(30, 100);
  oscillator2 = new Oscillator(500, 2);
  oscillator3 = new Oscillator(13, 132);
}

void draw() {
  background(255);
  oscillator.oscilate();
  oscillator.display();
  
  oscillator2.oscilate();
  oscillator2.display();
  
  oscillator3.oscilate();
  oscillator3.display();
}
