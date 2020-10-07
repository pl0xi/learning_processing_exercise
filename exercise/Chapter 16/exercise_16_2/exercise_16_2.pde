import processing.video.*;

Movie movie;
float speed;

void setup() {
  size(1280, 720);
  movie = new Movie(this, "video.mp4");
  movie.loop();
  speed = 1;
}

void draw() {
  image(movie, 0, 0);
}

public void movieEvent(Movie movie) {
  movie.read();
}

public void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      speed = constrain(speed + 0.5, 0.5, 3);
      movie.speed(speed);
    } else if (keyCode == LEFT) {
      speed = constrain(speed - 0.5, 0.5, 3);
      movie.speed(speed);
    }
  }
}
