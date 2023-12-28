Future<bool> isStringLongerThan(String input, int minLength) async {
  return input.length > minLength;
}

void testIt() async {
  final test1 = await isStringLongerThan('Hello, World!', 5);
  assert(test1 == true);

  final test2 = await isStringLongerThan('Dart', 10);
  assert(test2 == false);

  final test3 = await isStringLongerThan('OpenAI', 3);
  assert(test3 == true);
}
