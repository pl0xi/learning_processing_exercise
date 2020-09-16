int screenState = 0;
FourBalls fourballs;
State state = new State();
Lines lines;
OneBall oneball;

void setup() {
  size(800, 600);
  fourballs = new FourBalls(100, 1);
  lines = new Lines(4);
  oneball = new OneBall(color(200, 0, 0));
}

void draw() {
  state.display(screenState);
}

void mouseClicked() {
  if (screenState != 2) {
    screenState++;
  } else {
    screenState = 0;
  }
}
