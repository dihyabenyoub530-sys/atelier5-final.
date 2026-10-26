class MotdepasseCourtException implements Exception {
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException();
  }
}

void main() {
  try {
    verifierMotdepasse("abc");
  } on MotdepasseCourtException {
    print("Erreur : le mot de passe est trop court");
  }
}