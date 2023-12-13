class Human {
  String name;
  int age;

  Human(this.name, this.age);

  void introduce() {
    print('My name is $name and I am $age years old.');
  }
}

class Student extends Human {
  String school;
0
  Student(String name, int age, this.school) : super(name, age);

  void study() {
    print('$name is studying at $school.');
  }
}

class Teacher extends Human {
  String subject;

  Teacher(String name, int age, this.subject) : super(name, age);

  void teach() {
    print('$name is teaching $subject.');
  }
}

void main() {
  Student student = Student('John', 20, 'XYZ University');
  student.introduce(); // Output: My name is John and I am 20 years old.
  student.study(); // Output: John is studying at XYZ University.

  Teacher teacher = Teacher('Jane', 35, 'Mathematics');
  teacher.introduce(); // Output: My name is Jane and I am 35 years old.
  teacher.teach(); // Output: Jane is teaching Mathematics.
}
