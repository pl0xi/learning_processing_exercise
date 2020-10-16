JSONObject file, weather, main;
float temp;
String des;
void setup() {
  thread("loadData");
}


void draw() {
  println(temp, des);
}

public void loadData() {
  file = loadJSONObject("weather.json");
  weather = file.getJSONObject("wheater");
  main = file.getJSONObject("main");

  temp = main.getFloat("temp");
  // Grab the description (this is just one way to do it)
  JSONArray weather = file.getJSONArray("weather");
  des = weather.getJSONObject(0).getString("description");
}
