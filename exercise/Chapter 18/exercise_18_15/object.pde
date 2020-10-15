public class Object {
  float x, y, speedX, speedY, sizeX, sizeY;
  public Object(float x, float y, float speedX, float speedY, float sizeX, float sizeY) {
    this.x = x;
    this.y = y;
    this.speedX = speedX;
    this.speedY = speedY;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
  }

  public void display() {
    collisionDetector();
    rect(x, y, sizeX, sizeY);
  }

  public void move() {
    x += speedX;
    y += speedY;
  }
  
  private void collisionDetector() {
    if(x + sizeX >= width || x <= 0) {
     speedX *= -1; 
    }
    
    if(y + sizeY >= height || y <= 0) {
     speedY *= -1; 
    }
  }
}
