import processing.net.*;
Client client;
String currentMsg;
String recievedMsg;

void setup() {
  size(1280, 720);
  client = new Client(this, "127.0.0.1", 5050);
  currentMsg = "";
  recievedMsg = "";
}

void draw() {
  background(255);
  fill(0);
  textAlign(CENTER);
  textSize(21);
  text(recievedMsg + "\n" + currentMsg, width/2, height/2);
}

void keyPressed() {

  if (key == ENTER) {
    client.write(currentMsg);
    currentMsg = "";
  } else   if (key != CODED) {
    currentMsg += key;
  }
}

void clientEvent(Client client) {
  recievedMsg = client.readStringUntil('\n');
}
