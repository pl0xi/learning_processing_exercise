import processing.net.*;
Server server;

void setup(){
  server = new Server(this, 5050);  
}

void draw() {
  
  String msg;
  Client client = server.available();
  if(client != null) {
    msg = client.readString();
    msg = msg.trim();
    
    client.write("The message is " + msg.length() + " characters long\n");
  }
}

void serverEvent(Server server, Client client) {
  println(client.ip() + " joined");
}
