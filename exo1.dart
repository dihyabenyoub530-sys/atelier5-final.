void main() {
  try {
    int a = 12;
    int b = 0;

    print(a ~/ b);
  } catch (e) {
    print("Division impossible");
  }
}