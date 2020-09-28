void setup() {
  println(convertToCelsius(150));
}

float convertToCelsius(float f) {
  return (f - 32) * (5.0/9.0);
}
