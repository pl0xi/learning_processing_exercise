JSONObject file, weather, main;

void setup() {
  file = loadJSONObject("weather.json");
  weather = file.getJSONObject("wheater");
  main = file.getJSONObject("main");

  float temp = main.getFloat("temp");
  // Grab the description (this is just one way to do it)
  JSONArray weather = file.getJSONArray("weather");
  String des = weather.getJSONObject(0).getString("description");
  
  println(temp, des);
}
