import 'dart:io';

void main() {
  // stdout.write('Entrez le premier nombre : ');
  // int a = int.parse(stdin.readLineSync()!);

  // stdout.write('Entrez le deuxième nombre : ');
  // int b = int.parse(stdin.readLineSync()!);

  // int pgcd = calculerPGCD(a, b);

  // print('Le PGCD de $a et $b est $pgcd');
}

int calculerPGCD(int a, int b) {
  if (b == 0) {
    return a;
  } else {
    return calculerPGCD(b, a % b);
  }
}
