import processing.net.*;
Server server;

void setup() {
  server = new Server(this, 12012);
}

void draw() {
  Client client = server.available();
  if(client != null) {
    String clientData = client.readStringUntil('\n');
    server.write(clientData);
  }
}

void serverEvent(Server server, Client client) {
  println(client.ip() + " connected");
}
