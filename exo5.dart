import 'dart:io';

class NombreNegatifException implements Exception {
  final String message;

  NombreNegatifException(this.message);

  @override
  String toString() => message;
}

void main() {
  try {
    stdout.write("Entrez un nombre : ");
    String? saisie = stdin.readLineSync();

    int nombre = int.parse(saisie ?? "");

    if (nombre < 0) {
      throw NombreNegatifException("Le nombre ne doit pas être négatif");
    }

    print("Le carré est : ${nombre * nombre}");

  } on NombreNegatifException catch (e) {
    print("Erreur : $e");

  } on FormatException {
    print("Erreur : veuillez entrer un nombre valide");

  } finally {
    print("Fin du programme");
  }
}