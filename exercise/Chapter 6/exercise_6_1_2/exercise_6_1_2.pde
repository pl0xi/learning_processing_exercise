size(200, 200);
background(255);
float w = width ;
while (w > 0) {
  stroke(0);
  fill(map(w, 0, width, 0, 255));
  println(map(w, 0, width, 0, 255));
  ellipse(width/2, height/2, w, w);
  w -= 20;
}
