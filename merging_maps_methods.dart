//1.Using the spread(...) operator expanding the elements of an iterable (the key-value pairs of the maps) into a new collection.
import 'package:flutter/foundation.dart' show kDebugMode;

void main() {
  Map<String, int> map1 = {'a': 1, 'b': 2};
  Map<String, int> map2 = {'c': 3, 'd': 4, 'dart.dev': 5};

  Map<String, int> mergedMap = {...map1, ...map2};

  if (kDebugMode) {
    print(mergedMap);
  }
}

//2. Using the addAll method.
//The addAll() method adds all the key-value pairs from one map to another map.
import 'package:flutter/foundation.dart' show kDebugMode;

void main() {
  Map<String, int> map1 = {'a': 1, 'b': 2};
  Map<String, int> map2 = {'c': 3, 'd': 4, 'dart.dev': 5};

 map1.addAll(map2);

  if (kDebugMode) {
    print(map1);
  }
}

//3.Using the putIfAbsent() method
// putIfAbsent() method adds the key-value pair from one map to another only if the key is not already present in the second map.
import 'package:flutter/foundation.dart' show kDebugMode;

void main() {
  Map<String, int> map1 = {'a': 1, 'b': 2,'c': 33};
  Map<String, int> map2 = {'c': 3, 'd': 4, 'dart.dev': 5};

  map1.forEach((key, value) {
    map2.putIfAbsent(key, () => value);
  });

  if (kDebugMode) {
    print(map2);
  }
}