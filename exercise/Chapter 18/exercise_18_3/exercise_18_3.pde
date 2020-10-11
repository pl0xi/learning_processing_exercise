String name = "Benjamin Sommervoll";

void setup() {
  println(substring(name, 0, 8));
}

String substring(String txt, int startIndex, int endIndex) {
  String completeText = "";

  for (int i = startIndex; i < endIndex; i++) {
    completeText += txt.charAt(i);
  }

  return completeText;
}
