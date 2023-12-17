import 'dart:async';

void main() {
  int countdownDuration = 30; // Customize the countdown duration in seconds

  // Create a periodic timer that fires every second
  Timer timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
    print('$countdownDuration seconds remaining');

    // Decrement the countdown duration
    countdownDuration--;

    // Check if the timer should stop
    if (countdownDuration == 0) {
      t.cancel(); // Cancel the timer when the countdown is complete
      print('Time is up!');
    }
  });
}
