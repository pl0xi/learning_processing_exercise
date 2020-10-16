import processing.net.*;
Server server;
String msg, operator;

void setup() {
  server = new Server(this, 5050);
}

void draw() {
  Client client = server.available();
  if (client != null) {
    msg = client.readString();
    msg = msg.trim();

    int lastIndexNumOne = getIndexMath();
    int numOne = Integer.parseInt(msg.substring(0, lastIndexNumOne));
    int numTwo = Integer.parseInt(msg.substring(lastIndexNumOne+1));
    
    client.write(numOne + " " + msg.charAt(lastIndexNumOne) + " " + numTwo + " = " + calculator(numOne, numTwo)+"\n");
  }
}

void serverEvent(Server server, Client client) {
  println(client.ip() + " joined");
  delay(50);
  client.write("Indtast et regnestykke\n");
}

int getIndexMath() {
  if (msg.indexOf("+") != -1) {
    return msg.indexOf("+");
  } else if (msg.indexOf("-") != -1) {
    return msg.indexOf("-");
  } else if (msg.indexOf("*") != -1) {
    return msg.indexOf("*");
  } else if (msg.indexOf("/") != -1) {
    return msg.indexOf("/");
  } 

  return -1;
}

float calculator(int numOne, int numTwo) {
   if (msg.indexOf("+") != -1) {
    return numOne + numTwo;
  } else if (msg.indexOf("-") != -1) {
    return numOne - numTwo;
  } else if (msg.indexOf("*") != -1) {
    return numOne * numTwo;
  } else if (msg.indexOf("/") != -1) {
    return float(numOne)/float(numTwo);
  } 
  return 0;
}
