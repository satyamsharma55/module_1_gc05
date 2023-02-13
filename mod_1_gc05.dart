// Write a Dart program to find the longest word in a given sentence.

String getLongestWordInSentence(String input) {
  String result = "";
  int len = input.length;
  String temp = "";
  for (int i = 0; i <= len; i++) {
    if (i == len || input[i] == " ") {
      if (temp != "") {
        result = result.length < temp.length ? temp : result;
        temp = "";
      }
      continue;
    }
    temp = temp + input[i];
  }

  return result;
}

void main() {
  String input = 'This is module-1 graded assignment number five tataneuskills';

  String results = getLongestWordInSentence(
      input); // function to find the longest word of length

  print(
      "longest word in a given sentence is $results of length ${results.length}");
}
