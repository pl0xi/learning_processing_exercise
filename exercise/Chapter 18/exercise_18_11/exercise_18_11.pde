PFont f;
String txt;
String [] words;
IntDict wordsList;
int i;

void setup() {
  size(1280, 720);
  f = loadFont("CenturyGothic-48.vlw");
  textFont(f, 48);

  words = loadStrings("story.txt");
  txt = join(words, "");
  words = splitTokens(txt, " ,(\".!?");
  i = 0;
  wordsList = new IntDict();
}

void draw() {
  background(255);

  if (wordsList.hasKey(words[i].toLowerCase())) {
    wordsList.increment(words[i].toLowerCase());
  } else {
    wordsList.set(words[i].toLowerCase(), 1);
  }

  float x = 0;
  wordsList.sortValuesReverse();
  String [] keys = wordsList.keyArray();
  textSize(map(wordsList.get(keys[0]), 1, 244, 12, 200));
  float y = textAscent();
  for (int i = 0; i < wordsList.size(); i++) {   
    if (x + textWidth(keys[i]) > width) {
      y += 25;
      x = 0;
    }

    fill(0);
    textSize(map(wordsList.get(keys[i]), 1, 244, 12, 200)); 
    text(keys[i], x, y);
    x += textWidth(keys[i]) + 10;
  }

  i++;

  if (i == words.length) {
    noLoop();
  }
}
