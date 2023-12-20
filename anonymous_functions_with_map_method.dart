import 'package:flutter/foundation.dart' 
show kDebugMode;


void main() {
  // Define a list of numbers
  List<int> numbers = [1, 2, 3];
  List <int> doubles = numbers.map((n) => n * 2).toList();

if(kDebugMode){
  print("Doubles: $doubles");
  }

List <int> triples = numbers.map((n) {
  return n * 3;
}).toList();

if(kDebugMode){
  print("Triples: $triples");
  }
}