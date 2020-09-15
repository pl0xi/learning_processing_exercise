class Button {
  int posX, posY, buttonWidth, buttonHeight;
  String text;
  color buttonColor, buttonHoverColor;
  float buttonWidthRadius, buttonHeightRadius;

  Button(int posX_, int posY_, int buttonWidth_, int buttonHeight_, String text_, color buttonColor_, color buttonHoverColor_) {
    posX = posX_;
    posY = posY_;
    buttonWidth = buttonWidth_;
    buttonHeight = buttonHeight_;
    text = text_;
    buttonColor = buttonColor_;
    buttonHoverColor = buttonHoverColor_;
    buttonWidthRadius = buttonWidth/2;
    buttonHeightRadius = buttonHeight/2;
  }

  void display() {
    buttonFrame();
    buttonText();
  }

  void buttonFrame() {
    rectMode(CENTER);
    buttonHoverCheck();
    rect(posX, posY, buttonWidth, buttonHeight);
  }

  void buttonText() {
    textAlign(CENTER, CENTER);
    fill(0);
    text(text, posX, posY);
  }

  void buttonHoverCheck() {
    if (isButtonHovered()) {
      fill(buttonHoverColor);
    } else {
      fill(buttonColor);
    }
  }

  boolean isButtonHovered() {
    return (mouseX > (posX-buttonWidthRadius) && mouseX < (posX+buttonWidthRadius) && mouseY < (posY+buttonHeightRadius) && mouseY > (posY-buttonHeightRadius) );
  }

  boolean isMouseOnButton() {
    return (mouseX > (posX-buttonWidthRadius) && mouseX < (posX+buttonWidthRadius) && mouseY < (posY+buttonHeightRadius) && mouseY > (posY-buttonHeightRadius));
  }
}
