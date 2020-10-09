public class getColors {
  
  public color getColorsFromPos(int posX, int posY, Capture cam) {
    cam.loadPixels();
    int loc = posX + (posY * cam.width);   
    return cam.pixels[loc];
  }
  
}
