import 'dart:io';

void main() {
  print("Enter month number (1-12): ");
  int month = int.parse(stdin.readLineSync()!);

  switch (month) {
    case 1:
      print("January");
      break;
    case 2:
      print("February");
      break;
    case 3:
      print("March");
      break;
    case 4:
      print("April");
      break;
    case 5:
      print("May");
      break;
    case 6:
      print("June");
      break;
    case 7:
      print("July");
      break;
    case 8:
      print("August");
      break;
    case 9:
      print("September");
      break;
    case 10:
      print("October");
      break;
    case 11:
      print("November");
      break;
    case 12:
      print("December");
      break;
    default:
      print("Invalid month number! Please enter between 1-12.");
  }

    print("Enter month number (1-12): ");
    int num = int.parse(stdin.readLineSync()!);

    switch (num) {
      case 12:
      case 1:
      case 2:
        print("Season: Winter ❄️");

      case 3:
      case 4:
        print("Season: Spring 🌸");

      case 5:
      case 6:
      case 7:
        print("Season: Summer ☀️");

      case 8:
      case 9:
      case 10:
      case 11:
        print("Season: Autumn/Monsoon 🍂🌧️");

      default:
        print("Invalid month number!");
    }
  

}
