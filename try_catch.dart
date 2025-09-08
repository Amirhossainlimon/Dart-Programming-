void main() {
  try {
    int result = 10 ~/ 0;   // error hobe (divide by zero)
    print("Result: $result");
  } catch (e) {
    print("Error : $e");  // error hole ei line run hobe
  }
  print(10 / 0);
}
