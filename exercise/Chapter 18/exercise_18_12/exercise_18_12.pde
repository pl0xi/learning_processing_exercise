PFont f;
String [] story;
IntDict letters;
String storyProcessed;
int i, maxAmount;

void setup() {
  size(1280, 720);

  f = loadFont("CenturyGothic-48.vlw");
  textFont(f, 48);

  story = loadStrings("story.txt");
  storyProcessed = join(story, " ");
  story = splitTokens(storyProcessed, " .,!?()\":'");

  letters = new IntDict();

  maxAmount = 0;

  i = 0;
}

void draw() {
  background(255);

  String currentWord = story[i].toLowerCase();
  for (int b = 0; b < currentWord.length(); b++) {
    String letter = String.valueOf(currentWord.charAt(b));
    if (letters.hasKey(letter)) {
      letters.increment(letter);
    } else {
      letters.add(letter, 1);
    }
  }

  float x = 50;
  float y = 50;
  letters.sortValuesReverse();
  String [] keys = letters.keyArray();
  for (int i = 0; i < letters.size(); i++) {
    String name = keys[i];
    int amount = letters.get(name);

    if (amount > maxAmount) {
      maxAmount = amount;
    }

    noFill();
    arc(x, y, 50, 50, 0, map(amount, 0, maxAmount, 0, PI*2));

    fill(0);
    textAlign(CENTER);
    textSize(21);
    text(name, x, y+8);
  
    x += 75;
    if (x >= width) {
      x = 50;
      y += 75;
    }
  }

  i++;
  if (i >= story.length) {
    noLoop();
  }
}
