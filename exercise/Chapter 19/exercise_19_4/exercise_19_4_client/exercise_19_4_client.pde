// Import the net libraries
import processing.net.*;
// Declare a client
Client client;
// The data to be read from the server
int data;
void setup() {
  size(200, 200);
  // Create the Client
  client = new Client(this, "127.0.0.1", 5204);
}
void clientEvent(Client client) {
  data = client.read();
}
void draw() {
  background(255);
  rectMode(CENTER);
  translate(width/2, height/2);
  rotate(map(data, 0, 255, 0, PI*2));
  rect(0, 0, 20, 20);
}
