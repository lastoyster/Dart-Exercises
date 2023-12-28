void main() {
  testIt();
}

class Person {
  final Map<String, Object> _values;
  static const FIRST_NAME_KEY = 'FIRST_NAME';
  static const LAST_NAME_KEY = 'LAST_NAME';

  Person.from(Map<String, Object> props)
      : _values = Map<String, Object>.from(props);

  Person({
    required String firstName,
    required String lastName,
    Map<String, Object>? props,
  }) : _values = {
          FIRST_NAME_KEY: firstName,
          LAST_NAME_KEY: lastName,
        }..addAll(props ?? {});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Person &&
        other.firstName == firstName &&
        other.lastName == lastName;
  }

  @override
  String toString() => _values.toString();

  @override
  int get hashCode => _values.hashCode;

  String get firstName => _values[FIRST_NAME_KEY].toString();
  set firstName(String newValue) => _values[FIRST_NAME_KEY] = newValue;

  String get lastName => _values[LAST_NAME_KEY].toString();
  set lastName(String newValue) => _values[LAST_NAME_KEY] = newValue;

  Person clone([Map<String, Object>? additionalProps]) =>
      Person.from(Map<String, Object>.from(_values)..addAll(additionalProps ?? {}));

  Object? operator [](String key) => _values[key];
  operator []=(String key, Object value) => _values[key] = value;
}

void testIt() {
  final foo = Person(
    firstName: 'Foo Firstname',
    lastName: 'Foo Lastname',
  );
  print(foo); // {FIRST_NAME: Foo Firstname, LAST_NAME: Foo Lastname}
  final copyOfFoo = foo.clone();
  print(copyOfFoo); // {FIRST_NAME: Foo Firstname, LAST_NAME: Foo Lastname}
  final bar = foo.clone({'age': 30});
  print(bar); // {FIRST_NAME: Foo Firstname, LAST_NAME: Foo Lastname, age: 30}
  assert(foo == copyOfFoo);
  assert(foo == bar);
  assert(foo['age'] == null);
  assert(copyOfFoo['age'] == null);
  assert(bar['age'] == 30);
}
