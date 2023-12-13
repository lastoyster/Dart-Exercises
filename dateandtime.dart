import 'package:intl/intl.dart';

void main() {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('yyyy-MM-dd').format(now);
  String formattedTime = DateFormat('HH:mm:ss').format(now);

  print('Current Date: $formattedDate');
  print('Current Time: $formattedTime');
}
