// Define Person class
class Person {
  // properties
  String name;
  int age;

  Person(this.name, this.age);

  // Implement a method that returns the map you need
  Map<String, dynamic> toMap() {
    return {"name": name, "age": age};
  }
}

void main() {
  // Create a new person instance
  final john = Person('John Doe', 36);
  // Get map with key/value pairs by using the toMap() method
  final johnMap = john.toMap();
  print(johnMap);
}