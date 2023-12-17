import 'dart:convert';
import 'package:flutter/foundation.dart' show kDebugMode;

void main() {
  // a list of numbers
  final list1 = [1, 2, 3];
  // a list of strings
  final list2 = ['a', 'b', 'dart.dev'];

  // Convert the list into bytes using Utf8Codec
  const codec = Utf8Codec();

  final bytesList1 = codec.encode(list1.toString());
  final bytesList2 = codec.encode(list2.toString());

  if (kDebugMode) {
    print(bytesList1);
    print(bytesList2);
  }
}