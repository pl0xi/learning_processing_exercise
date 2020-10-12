public class Movie {
  private String data, title;

  public Movie(String url) {
    this.data = loadData(url);
  }

  private String loadData(String data) {
    String [] dataInArray = loadStrings(data);
    String dataInString = join(dataInArray, " ");

    return dataInString;
  }

  public float getRating() {
    int indexStart = data.indexOf("<span itemprop=\"ratingValue\">") + 29;
    int indexEnd = data.indexOf("</span>", indexStart);

    float rating = float(data.substring(indexStart, indexEnd));
    return rating;
  }

  public String getTitle() {
    if (title == null) {
      int indexStart = data.indexOf("<div class=\"title_wrapper\">") + 41;
      int indexEnd = data.indexOf("&nbsp;", indexStart);

      title = data.substring(indexStart, indexEnd);
    }
    
    return title;
  }

  public int getVotes() {
    String votesStartIndex = "\"ratingCount\": ";
    String votesEndIndex = ",";
    int startIndex = data.indexOf(votesStartIndex) + votesStartIndex.length();
    int endIndex = data.indexOf(votesEndIndex, startIndex);
    String votesInString = data.substring(startIndex, endIndex);
    int votes = parseInt(votesInString);

    return votes;
  }
  
  public int getMetaCritic() {
    String metaCriticStartIndex = "titleReviewBarSubItem\">";
    String metaCriticEndIndex = "</span>";
    int startIndex = data.indexOf(metaCriticStartIndex) + metaCriticStartIndex.length() + 7;
    int endIndex = data.indexOf(metaCriticEndIndex, startIndex);
    String metaCriticInString = data.substring(startIndex, endIndex);
    int metaCritic = parseInt(metaCriticInString);
    
    return metaCritic;
  }
}
