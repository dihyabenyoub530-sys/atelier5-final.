import 'dart:io';

void main() {
  try {
    stdout.write("Entrez votre âge : ");
    String? saisie = stdin.readLineSync();

    int age = int.parse(saisie ?? "");
    print("Votre âge est : $age");
  } on FormatException {
    print("Format invalide : veuillez entrer un nombre.");
  }
}