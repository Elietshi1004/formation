import 'dart:io';

// int a;
// double b;
// num c;
// String chaine;
// String Chaine;
// var dyn;

//null-safety
void main() {
  stdout.write("Entrez un nombre 1 et 7 ");
  String? snbr = stdin.readLineSync();
  num nombre = double.parse(snbr ?? "0"); //int.parse
  // print("hello world");

  // if (nombre > 10 && nombre < 100) {
  //   print("Le nombre $nombre est dans l'intervalle voulu");
  // } else if (nombre > 50) {
  //   print("Le nombre $nombre est supérieur a 50");
  // } else {
  //   print("il est en dehors");
  // }

  switch (nombre) {
    case 1:
      print("Lundi");
      break;
    case 2:
      print("Mardi");
      break;
    case 3:
      print("Mercredi");
      break;
    case 4:
      print("Jeudi");
      break;
    case 5:
      print("Vendredi");
      break;
    case 6:
      print("Samedi");
      break;
    case 7:
      print("Dimanche");
      break;
    default:
      print("En dehors");
  }

  stdout.write("Hello World ${nombre + 1}");
}
