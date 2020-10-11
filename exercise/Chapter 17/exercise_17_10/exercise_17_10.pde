String text;
Letter [] letters;
PFont f;
float textSize;

void setup() {
  size(1280, 720);

  text = "Learning Processing";
  letters = new Letter [text.length()];
  f = loadFont("Arial-BoldMT-48.vlw");
  textSize = 21;
  
  textFont(f, textSize);
  for (int i = 0, x = (width/2 - (int) textWidth(text)/2); i < text.length(); x += textWidth(text.charAt(i)), i++) {
    letters[i] = new Letter(text.charAt(i), textSize, random(width), random(height), x, height/2);
  }
}

void draw() {
  background(255);

  for (int i = 0; i < letters.length; i++) {
    letters[i].display();
    letters[i].moveLettersToFinal(0.005);
  }
}
