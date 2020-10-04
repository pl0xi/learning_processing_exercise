class Planet {
  float theta, theta2; // Rotation around sun
  float diameter; // Size of planet
  float distance; // Distance from sun
  float orbitspeed, orbitspeed2; // Orbit speed
  Planet [] moons;
  Planet(float distance_, float diameter_, Planet [] moons_) {
    distance = distance_;
    diameter = diameter_;
    theta = 0;
    theta2 = 0;
    orbitspeed = random(0.01, 0.03);
    orbitspeed2 = random(0.01, 0.03);
    moons = moons_;
  }
  void update() {
    // Increment the angle to rotate
    theta += orbitspeed;
    theta2 += orbitspeed2;
  }
  void display() {
    pushMatrix();
    // Rotate orbit
    rotate(theta);
    // Translate out distance
    translate(distance, 0);
    stroke(0);
    fill(175);
    ellipse(0, 0, diameter, diameter);

    for (int i = 0; i < moons.length; i++) {
      rotate(theta2);
      pushMatrix();
      ellipse(distance/2, 0, moons[i].diameter, moons[i].diameter);
      popMatrix();
    }
    popMatrix();
  }

}
