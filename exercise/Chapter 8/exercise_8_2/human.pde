class Human {
  color hairColor;
  float humanHeight;
  boolean sleep = false;
  
  Human(color hairColor_, float humanHeight_) {
    hairColor = hairColor_;
    humanHeight = humanHeight_;
  }
  
  void sleep() {
    sleep = !sleep;
    if(sleep) {
      println("The human is now sleeping");
    } else {
      println("The human is now awake");
    }
  }
}
