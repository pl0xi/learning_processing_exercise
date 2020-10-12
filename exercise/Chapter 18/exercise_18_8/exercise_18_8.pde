String url, siteText;
float rating;

void setup() {
  url = "https://www.imdb.com/title/tt7395114/?ref_=hm_fanfav_tt_3_pd_fp1";
  siteText = loadData(url);
  rating = getRating(siteText, "<span itemprop=\"ratingValue\">", "</span>");
  
  println(rating);
}

String loadData(String data) {
  String [] dataInArray = loadStrings(data);
  String dataInString = join(dataInArray, " ");
  return dataInString;
}


float getRating(String data, String startText, String endText) {
  int indexStart = data.indexOf(startText) + 29;
  int indexEnd = data.indexOf(endText, indexStart);

  float rating = float(data.substring(indexStart, indexEnd));

  return rating;
}
