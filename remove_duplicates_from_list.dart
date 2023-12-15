void main(){
  final myNumbers=[1,2,3,3,4,5,1,1];
  final uniqueNumbers= myNumbers.toSet().toList();
  print(uniqueNumbers);

  final myStrings =['a', 'b', 'c', 'a', 'b', 'a'];
  final uniqueStrings = myStrings.toSet().toList();
  print(uniqueStrings);
}