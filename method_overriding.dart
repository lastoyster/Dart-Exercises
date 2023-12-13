class Animal {
  void makeSound() {
    print('The animal makes a sound.');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('The cat meows.');
  }
}

void main() {
  Animal animal = Animal();
  animal.makeSound(); // Output: The animal makes a sound.

  Cat cat = Cat();
  cat.makeSound(); // Output: The cat meows.
}
