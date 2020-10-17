// Import the net libraries
import processing.net.*;
// Declare a server
Server server;
int data = 0;
void setup() {
  size(200, 200);
  // Create the Server on port 5204
  server = new Server(this, 5204);
}
void draw() {
  background(255);
  // Display data
  textAlign(CENTER);
  fill(0);
  text(data, width/2, height/2);
  // Arbitrarily changing the value of data randomly
  data = (data + int(random(-2, 4))) % 256;
  server.write(data);
}
// The serverEvent function is called whenever a new client connects.
void serverEvent(Server server, Client client) {
  println("A new client has connected: " + client.ip());
}
