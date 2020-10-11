PFont f;
String typing;
String save;
String [] chatmsg;
int currentState;

void setup() {
  size(1280, 720);

  f = loadFont("ArialNarrow-Bold-48.vlw");
  typing = "";

  chatmsg = new String [4];
  chatmsg[0] = "Hvad er dit navn?";
  chatmsg[1] = "Hej ";
  chatmsg[2] = ". Hvor kommer du fra?";
  chatmsg[3] = "? Det lyder som et dejligt sted";

  currentState = 0;
}

void draw() {
  background(255);

  textAlign(CENTER);
  textFont(f, 21);
  fill(0);
  if (currentState == 0) {
    text(chatmsg[0], width/2, height/3);
    text(typing, width/2, height/2);
  } else if (currentState == 1) {
    text(chatmsg[1] + save + chatmsg[2], width/2, height/3);
    text(typing, width/2, height/2);
  } else {
    text(save + chatmsg[3], width/2, height/3);
  }
}

void keyPressed() {
  if (keyCode == ENTER && currentState != 2) {
    save = typing;
    typing = "";
    currentState++;
  } else if (keyCode == BACKSPACE && typing.length() != 0) {
    typing = typing.substring(0, typing.length()-1);
  } else if (key != CODED) {
    typing += key;
  }
}
