void main() {
  const input = "One two three four five six seven eight.";
  const startWord = "two";
  const endWord = "six";

  final startIndex = input.indexOf(startWord);
  input.indexOf(startWord);
  final endIndex = input.indexOf(endWord,startIndex + startWord.length);

  final String? output = input.substring(startIndex + startWord.length,endIndex);
  print(output)