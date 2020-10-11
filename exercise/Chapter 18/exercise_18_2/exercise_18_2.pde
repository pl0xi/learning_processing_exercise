String sentence = "The quick brown fox jumps over the lazy dog.";
int foxIndex = sentence.indexOf("fox");
int periodIndex = sentence.indexOf(".");
String sub = sentence.substring(foxIndex, periodIndex);

println(sub);
