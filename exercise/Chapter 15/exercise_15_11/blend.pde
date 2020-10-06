public class Blend {
  private PImage img1, img2, blendedImg;
  Blend(String img1, String img2) {
    this.img1 = loadImage(img1);
    this.img2 = loadImage(img2);

    blendedImg = createImage(800, 600, RGB);
    this.img1.loadPixels();
    this.img2.loadPixels();
    blendedImg.loadPixels();


    if (this.img1.width == this.img2.width && this.img1.height == this.img2.height) {

      for (int x = 0; x < this.img1.width; x++) {
        for (int y = 0; y < this.img1.height; y++) {
          int loc = x + (y * this.img1.width);

          float r = red(this.img1.pixels[loc]) - red(this.img2.pixels[loc]);
          float g = green(this.img1.pixels[loc]) - green(this.img2.pixels[loc]);
          float b = blue(this.img1.pixels[loc]) - blue(this.img2.pixels[loc]);

          blendedImg.pixels[loc] = color(r, g, b);
        }
      }
      
      blendedImg.updatePixels();
    } else {
      blendedImg = null;
    }
  }

  public PImage getBlendedImg() {
    return blendedImg;
  }
}
