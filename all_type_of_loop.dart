void main() {
  print("=== for loop ===");
  for (int i = 1; i <= 5; i++) {
    print(i);
  }

  print("\n=== while loop ===");
  int j = 1;
  while (j <= 5) {
    print(j);
    j++;
  }

  print("\n=== do-while loop ===");
  int k = 1;
  do {
    print(k);
    k++;
  } while (k <= 5);
}