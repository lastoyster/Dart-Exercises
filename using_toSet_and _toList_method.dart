import 'dart:convert';
import "dart:convert";
void main(){
  final myList = [
    {
      'name': 'Andy',
      'age': 41
    },
    {
      'name': 'Bill',
      'age': 43
    },
    {
      'name': 'Andy',
      'age': 41
    }
  ];
  
  // convert each item to a string by using JSON encoding
  final jsonList = myList.map((item)=> jsonEncode(item)).toList();

//using toSet - toList strategy 
final uniqueJsonList = jsonList.toSet().toList();

//convert each item back to the original form using JSON decoding
final result = uniqueJsonList.map((item) => 
jsonDecode(item)).toList();

print(result);