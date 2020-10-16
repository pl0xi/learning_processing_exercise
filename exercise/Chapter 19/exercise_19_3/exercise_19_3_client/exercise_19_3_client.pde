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
    int lastIndexNumOne = getIndexMath();

    if (lastIndexNumOne != -1) {
      try {
        int numOne = Integer.parseInt(currentMsg.substring(0, lastIndexNumOne));
        int numTwo = Integer.parseInt(currentMsg.substring(lastIndexNumOne+1));

        client.write(currentMsg);
        currentMsg = "";
      } 
      catch (Exception e) {
      }
    } else {
      println("NO OPERATOR FOUND");
    }
  } else if (key == BACKSPACE) {
    if (!currentMsg.equals("")) {
      currentMsg = currentMsg.substring(0, currentMsg.length()-1);
    }
  } else if (key != CODED) {
    currentMsg += key;
  }
}

void clientEvent(Client client) {
  recievedMsg = client.readStringUntil('\n');
}

int getIndexMath() {
  if (currentMsg.indexOf("+") != -1) {
    return currentMsg.indexOf("+");
  } else if (currentMsg.indexOf("-") != -1) {
    return currentMsg.indexOf("-");
  } else if (currentMsg.indexOf("*") != -1) {
    return currentMsg.indexOf("*");
  } else if (currentMsg.indexOf("/") != -1) {
    return currentMsg.indexOf("/");
  } 

  return -1;
}
