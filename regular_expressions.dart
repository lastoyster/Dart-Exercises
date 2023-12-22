void _check(String input) {
  final RegExp phone =
      RegExp(r'^(\+0?1\s)?((\d{3})|(\(\d{3}\)))?(\s|-)\d{3}(\s|-)\d{4}$');
  if (phone.hasMatch(input)) {
    print('$input is valid');
  } else {
    print('$input is not valid');
  }
}

// Test it
void main() {
  _check('+01 (123) 456 7890');
  _check('123 456 7890');
  _check('123 456-7890');
  _check('(123) 456-7890');
  _check('123-456-7890');
  _check('123 4432 234');
}
