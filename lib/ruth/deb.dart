import 'dart:io';

main() {
  int a;
  double b;
  String c;
  bool d;

  int val;
  String name;
  a = 0;
  b = 4;
  print("Entrez une valeur $a $b");
  a = int.parse(stdin.readLineSync()!);
  b = a * 2;
  print("Le double est $b");
  print("Entrez une valeur $a $b");
  a = int.parse(stdin.readLineSync()!);
  b = a * 3;
  print("Le triple est $b");
}
