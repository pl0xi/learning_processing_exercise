import processing.net.*;
Server server;
int connected;
boolean player1, player2, gameBegin;

void setup() {
  server = new Server(this, 12012);
  connected = 0;
  player1 = false;
  player2 = false;
}

void draw() {
  Client client = server.available();
  if (client != null) {
    String clientData = client.readStringUntil('\n');
    String [] data = splitTokens(clientData.trim(), ",: ");
    switch(data[0]) {
    case "menu": 
      client.write("playerSpot:"+player1+","+player2+"\n");
      break;
    case "playerChosen":
      println(data[1]);
      if (data[1].equals("player1")) {
        player1 = true;
      } else if (data[1].equals("player2")) {
        player2 = true;
      }
      
      if (player1 && player2) {
        gameBegin = true; 
        client.write("gameBegin\n");
        println("test3");
      }
      break;
    default: 
      break;
    }
  }
}    
