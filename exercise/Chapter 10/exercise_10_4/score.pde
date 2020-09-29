class Score {
  int points;
  Score(int startingPoints) {
    points = startingPoints;
  }
  
  void display() {
    rectMode(CENTER);
    fill(0);
    rect(width/2, 25, points, 5);
  }
  
  void addPoint() {
    points++;
  }
  
  void removePoint() {
    points--;
  }
  
  boolean gameStatus() {
    if(points >= 0) {
      return true;
    } else {
      return false;
    }
  }
}
