
void main() {
  Function createGreeting(String name) {
    return (String message) {
      return '$message, $name!';
    };
  }

  // Create a closure by calling the createGreeting function
  var greetPratiksha = createGreeting('Pratiksha');

  // Use the closure to create a personalized greeting
  String greeting = greetPratiksha('Hello');

  print(greeting);
}
