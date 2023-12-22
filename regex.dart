void main() {
  // Regular expression to validate a name
  RegExp rex = RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");

  // Expected ouput: True
  if (rex.hasMatch("Donand J. Trump")) {
    print('True');
  } else {
    print("False");
  }

  // Expected ouput: True
  if (rex.hasMatch("Brady Hartsfield")) {
    print("True");
  } else {
    print("False");
  }

  // Expected ouput: True
  if (rex.hasMatch("Ken Pat O'Biden")) {
    print("True");
  } else {
    print("False");
  }

  // Expected ouput: True
  if (rex.hasMatch("A-Crazy-Name Saitama")) {
    print('True');
  } else {
    print("False");
  }

  // Expected ouput: False
  if (rex.hasMatch("A wrong name ____ @! ?")) {
    print('True');
  } else {
    print("False");
  }
}