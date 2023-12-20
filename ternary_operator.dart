void main(){
  int age = 30;
  String output = age < 1
  ? 'Infant'
      : age < 4
          ? 'Baby'
          : age < 12
              ? 'Middle Childhood'
              : age < 18
                  ? 'Adolescence'
                  : 'Grown Up';
  print(output);
}
}