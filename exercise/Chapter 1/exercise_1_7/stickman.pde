class Stickman {
  int thickness = 100;
  int bodyHeight = 200;
  int bodyEndPointReference = bodyHeight/2;
  void display() {
    body();
    legs();
    head();
  }

  void body() {
    rectMode(CENTER);
    fill(#8B4513);
    rect(0, 0, thickness, 200);
  }

  void legs() {
    float legPositionReference = (thickness/2)-(thickness/5);
    line(legPositionReference, bodyEndPointReference, legPositionReference, bodyEndPointReference+100);
    line(-legPositionReference, bodyEndPointReference, -legPositionReference, bodyEndPointReference+100);
  }

  void head() {
    int diameterHead = 50;
    int diameterEyes = 10;
    fill(255);
    circle(0, -bodyEndPointReference-(diameterHead/2), diameterHead);
    
    //EYES
    circle(-10, -bodyEndPointReference-(diameterHead/2)-10, diameterEyes);
    circle(10, -bodyEndPointReference-(diameterHead/2)-10, diameterEyes);
  }
}
