XML xml;
XML [] particles;
Object [] objects;

void setup() {
  size(1280, 720);
  xml = loadXML("data.xml");
  particles = xml.getChildren("particle");

  objects = new Object [particles.length];
  for (int i = 0; i < particles.length; i++) {
    XML location = particles[i].getChild("location");
    XML speed = particles[i].getChild("speed");
    XML size = particles[i].getChild("size");

    objects[i] = new Object(location.getFloat("x"), location.getFloat("y"), speed.getFloat("x"), speed.getFloat("y"), size.getFloat("w"), size.getFloat("h"));
  }
}

void draw() {
  background(255);
  fill(0);
  for (int i = 0; i < particles.length; i++) {
    objects[i].move();
    objects[i].display();
  }
}
