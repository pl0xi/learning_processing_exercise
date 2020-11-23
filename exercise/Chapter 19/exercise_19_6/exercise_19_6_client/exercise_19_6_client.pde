import processing.net.*;
Client client;
int player, gameStatus;
boolean connected;
Menu menu;

void setup() {
  size(1280, 720);
  background(255);
  client = new Client(this, "127.0.0.1", 12012);
  player = 0;
  connected = false;
  menu = new Menu();
}

void draw() {
  background(0);
  if (client.available() > 0) {
    connected = true;
    String serverData = client.readStringUntil('\n');
    String [] data = splitTokens(serverData.trim(), ",: ");
    println(data[0]);
    switch(data[0]) {
    case "playerSpot":
      gameStatus = 1;
      break;
    case "gameBegin":
      gameStatus = 2;
      if (player == 1) { 
        menu.setPlayer2(true);
      } else menu.setPlayer1(true);
      break;
    default:
      break;
    }
  }

  if (!connected) {
    connect();
  } 

  menu.display();

  switch(gameStatus) {
  case 1: 
    menu.hoverCheck();
    break;
  case 2:
    break;
  default:
    break;
  }
}

void keyPressed() {
}

void connect() {
  textAlign(CENTER);
  fill(255);
  text("Waiting for server", width/2, height/2);
  delay(100);
  client = new Client(this, "127.0.0.1", 12012);
  client.write("menu\n");
}

void mousePressed() {
  int mX = mouseX;
  int mY = mouseY;

  if (gameStatus == 1) {
    if (menu.checkClickLeft(mX, mY)) {
      menu.setPlayer1(true);
      player = 1;
      client.write("playerChosen:player1\n");
    } else if (menu.checkClickRight(mX, mY)) {
      menu.setPlayer2(true);
      player = 2;
      client.write("playerChosen:player2\n");
    }
  }
}
