import "dart:math";
import "dart:core";

void main() {

  void age(DateTime today, DateTime dob) {
    final year = today.year - dob.year;
    final mth = today.month - dob.month;
    final days = today.day - dob.day;
    if(mth < 0){
     
      /// negative month means it's still upcoming
      print('you buns is ${year-1}');
      print('turning $year in ${mth.abs()} months and $days days');
    }
    else {
      print('your next bday is ${12-mth}months and ${28 -days} days away');
    }
  }

  age(DateTime(2023, 07, 9), DateTime(1997, 07, 10));
  // age(DateTime.now(), DateTime([year], [months], [days]));
}