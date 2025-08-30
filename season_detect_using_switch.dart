import 'dart:io';
void main() {
  print("Enter month number (1-12): ");
  int num = int.parse(stdin.readLineSync()!);

  switch (num) {
    case 12 || 1 ||2:
      print("Season: Winter ");

    case 3 || 4:
      print("Season: Spring ");

    case 5||6||7:
      print("Season: Summer ");

    case 8||9||10||11:
      print("Season: Autumn/Monsoon ");

    default:
      print("Invalid month number!");
  }
}