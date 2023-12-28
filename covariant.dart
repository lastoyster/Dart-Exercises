//In Dart, "covariant" is related to type annotations and is often used in the context of generic types. The covariant keyword is used to declare that a subclass can override a method with a more specific type.

class Person {
  final String name;
  const Person(this.name);
  @override
  bool operator ==(Object other) {
    if (other is! Person) throw ArgumentError('Was expecting a person');
    return other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}

class Person {
  final String name;
  const Person(this.name);
  @override
  bool operator ==(covariant Person other) => other.name == name;

  @override
  int get hashCode => name.hashCode;
}