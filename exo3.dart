void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception("Mot de passe trop court");
  }
}

void main() {
  try {
    verifierMotdepasse("abc");
  } catch (e) {
    print("Erreur : $e");
  }
}