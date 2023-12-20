import 'package:flutter/foundation.dart';

void main() {
  /// Create a growable list of strings with an initial size of 3
  List<String> stringList = List.filled(3, "", growable: true);

  if (kDebugMode) {
    // Print the list
    print(stringList);

    // Add an element at the end
    stringList.add("KindaCode.com");
    // Print the list
    print(stringList);

    // Remove an element at index 1
    stringList.removeAt(1);
    // Print the list
    print(stringList);
  }
}