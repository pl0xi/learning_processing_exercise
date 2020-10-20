import processing.net.*;
Client client;
int r, g, b;

void setup() {
  size(1280, 720);
  background(255);
  client = new Client(this, "127.0.0.1", 12012);
  r = 0;
  g = 0;
  b = 0;
}

void draw() {
  if (client.available() > 0) {
    String serverData = client.readStringUntil('\n');
    int [] data = new int [5];
    data = int(split(serverData.trim(), ","));
    fill(data[2], data[3], data[4]);
    ellipse(data[0], data[1], 20, 20);
  }
}

void mousePressed() {
  String msg = mouseX + "," + mouseY + "," + r + "," + g + "," + b + "\n";
  client.write(msg);
}

void keyPressed() {
  switch(key) {
  case '1':
    r++;
    r = (int) map(r%2, 0, 1, 0, 255);
    break;
  case '2':
    g++;
    g = (int) map(g%2, 0, 1, 0, 255);
    break;
  case '3':
    b++;
    b = (int) map(b%2, 0, 1, 0, 255);
    break;
  default: 
    break;
  }
}
