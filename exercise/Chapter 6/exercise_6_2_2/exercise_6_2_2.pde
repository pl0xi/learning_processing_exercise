size(200, 200);
background(255);
for (int w = width; w > 0; w -= 20) {
  stroke(0);
  fill(map(w, 0, width, 0, 255));
  ellipse(width/2, height/2, w, w);
}
