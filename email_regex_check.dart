import 'package:flutter/foundation.dart';

void main() {
  // Define a regular expression for validating email addresses
  RegExp emailRegex = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$",
    caseSensitive: false,
  );

  // Test email addresses
  String validEmail = "test@gmail.com";
  String invalidEmail = "test@gmail";
  String invalidMail = "test#gmail.com";

  // Check if the first email is valid
  if (emailRegex.hasMatch(validEmail)) {
    // If in debug mode, print a message indicating the validity
    if (kDebugMode) {
      print("Valid Email: $validEmail");
    }
  }

