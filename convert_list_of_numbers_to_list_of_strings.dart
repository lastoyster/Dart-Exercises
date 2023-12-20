import 'package:flutter/foundation.dart' show kDebugMode;

import 'finding_elements_of_two_lists.dart';

void main() {
  // Define a list of numbers
  List<int> numbers = [1, 2, 3];


//define a function that appends a dot to each number
String addDot(int n){
  return "$n.";
  }

List <String> strings = 
numbers.map(addDot).toList();

if(kDebugMode){
  print(strings);
 }
}