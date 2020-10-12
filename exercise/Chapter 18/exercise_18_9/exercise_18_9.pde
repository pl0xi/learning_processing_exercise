String urlMovies, moviesInString, bestRatingTitle, bestVotesTitle, bestMetaCriticTitle;
Movie [] movies;
int i, titles;
float bestRating;
int bestVotes, bestMetaCritic;
PFont f;

void setup() {
  size(1280, 720);
  frameRate(-1);
  urlMovies = "https://www.imdb.com/search/title/?title_type=feature&year=2019-01-01,2019-12-31&sort=num_votes,desc";
  moviesInString = loadData(urlMovies);
  titles = getTitles();
  movies = new Movie [titles];
  i = 1;
  bestRating = 0;
  bestVotes = 0;
  f = loadFont("Dialog.plain-48.vlw");
  bestMetaCritic = 0;
}

void draw() {
  background(255);
  println(i);
  
  String url = "https://www.imdb.com/" + getUrlFromNumber(i);
  movies[i] = new Movie(url);

  if (movies[i].getRating() > bestRating) {
    bestRatingTitle = movies[i].getTitle();
    bestRating = movies[i].getRating();
  }

  if (movies[i].getVotes() > bestVotes) {
    bestVotes = movies[i].getVotes();
    bestVotesTitle = movies[i].getTitle();
  }

  if (movies[i].getMetaCritic() > bestMetaCritic) {
    bestMetaCritic = movies[i].getMetaCritic();
    bestMetaCriticTitle = movies[i].getTitle();
  }

  if (i%50 == 0) {
    urlMovies = "https://www.imdb.com/search/title/?title_type=feature&year=2019-01-01,2019-12-31&sort=num_votes,desc&start=" + (i+1) +  "&ref_=adv_nxt";
    moviesInString = loadData(urlMovies);
  }

  textFont(f, 21);
  fill(0);
  textAlign(CENTER);
  text("Best rating:", width/2 - width/3, height/2-20);
  textSize(18);
  text(bestRatingTitle + ": " + bestRating, width/2 - width/3, height/2);

  textFont(f, 21);
  fill(0);
  textAlign(CENTER);
  text("Most votes:", width/2 + width/3, height/2-20);
  textSize(18);
  text(bestVotesTitle + ": " + bestVotes, width/2 + width/3, height/2);

  textFont(f, 21);
  fill(0);
  textAlign(CENTER);
  text("Best Meta Critic:", width/2, height/2-20);
  textSize(18);
  text(bestMetaCriticTitle + ": " + bestMetaCritic, width/2, height/2);

  i = constrain(i+1, 0, titles);
}

int getTitles() {
  String titlesStartIndex = "<span>1-50 of ";
  String titlesEndIndex = " titles.</span>";
  int startIndex = moviesInString.indexOf(titlesStartIndex) + titlesStartIndex.length();
  int endIndex = moviesInString.indexOf(titlesEndIndex, startIndex);
  String titlesInString = moviesInString.substring(startIndex, endIndex);
  String [] splitNumbers = split(titlesInString, ",");
  String titlesInStringFinal = "";

  for (int i = 0; i < splitNumbers.length; i++) {
    titlesInStringFinal += splitNumbers[i];
  }

  int titles = parseInt(titlesInStringFinal);

  return titles;
}

String loadData(String data) {
  String [] dataInArray = loadStrings(data);
  String dataInString = join(dataInArray, " ");

  return dataInString;
}

String getUrlFromNumber(int num) {
  String titlesStartIndex = "lister-item-index unbold text-primary\">" + num + ".</span>";
  String titlesEndIndex = "\" >";
  int startIndex = moviesInString.indexOf(titlesStartIndex) + titlesStartIndex.length() + 19;
  int endIndex = moviesInString.indexOf(titlesEndIndex, startIndex);
  String url = moviesInString.substring(startIndex, endIndex);

  return url;
}
