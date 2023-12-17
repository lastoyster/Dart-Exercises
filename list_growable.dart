void main() {
  List<String> countries = ["USA", "INDIA", "CHINA"]; // Growable List: METHOD 1
  countries.add("Nepal");
  countries.add("Japan");

  List<int> numbersList = []; // Growable List: METHOD 2
  numbersList.add(73);
  numbersList.add(64);
  numbersList.add(21);
  numbersList.add(12);

  numbersList[0] = 99; // Update operation
  numbersList.remove(null); // Remove operation
  numbersList.add(24);
  numbersList.removeAt(3);

  print("\n");

  if (numbersList.isNotEmpty) {
    print(numbersList[0]);
  }

  print("\n");

  for (int element in numbersList) {
    print(element);
  }

  print("\n");

  numbersList.forEach((element) => print(element));

  print("\n");

  for (int i = 0; i < numbersList.length; i++) {
    print(numbersList[i]);
  }
}
