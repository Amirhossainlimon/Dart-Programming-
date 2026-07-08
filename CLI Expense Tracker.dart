import 'dart:io';

extension MoneyFormatter on double {
  String formatMoney() {
    return "৳${toStringAsFixed(2)}";
  }
}

class Expense {
  String title;
  double amount;
  String category;

  Expense(this.title, this.amount, this.category);

  void display() {
    print("$title - ${amount.formatMoney()} - $category");
  }
}

class FoodExpense extends Expense {
  FoodExpense(String title, double amount)
      : super(title, amount, "Food");

  @override
  void display() {
    print("$title - ${amount.formatMoney()} - Food");
  }
}

class TransportExpense extends Expense {
  TransportExpense(String title, double amount)
      : super(title, amount, "Transport");

  @override
  void display() {
    print("$title - ${amount.formatMoney()} - Transport");
  }
}

class EntertainmentExpense extends Expense {
  EntertainmentExpense(String title, double amount)
      : super(title, amount, "Entertainment");

  @override
  void display() {
    print("$title - ${amount.formatMoney()} - Entertainment");
  }
}

void main() {
  List<Expense> expenses = [];

  while (true) {
    print("\n===== Expense Tracker =====");
    print("1. Add Expense");
    print("2. View All Expenses");
    print("3. Show Total Expenses");
    print("4. Exit");

    stdout.write("Choose Option: ");
    int choice = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    switch (choice) {
      case 1:
        stdout.write("Enter Expense Title: ");
        String title = stdin.readLineSync() ?? "";

        stdout.write("Enter Expense Amount: ");
        double amount = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        stdout.write(
            "Enter Category (Food/Transport/Entertainment): ");
        String category = (stdin.readLineSync() ?? "").toLowerCase();

        Expense expense;

        if (category == "food") {
          expense = FoodExpense(title, amount);
        } else if (category == "transport") {
          expense = TransportExpense(title, amount);
        } else if (category == "entertainment") {
          expense = EntertainmentExpense(title, amount);
        } else {
          expense = Expense(title, amount, "Others");
        }

        expenses.add(expense);

        print("\nExpense Added Successfully!");
        break;

      case 2:
        print("\n===== All Expenses =====");

        if (expenses.isEmpty) {
          print("No expenses found.");
        } else {
          for (int i = 0; i < expenses.length; i++) {
            stdout.write("${i + 1}. ");
            expenses[i].display();
          }
        }

        break;

      case 3:
        double total = 0;

        for (Expense expense in expenses) {
          total += expense.amount;
        }

        print("\nTotal Expenses: ${total.formatMoney()}");
        break;

      case 4:
        print("\nThank you for using Expense Tracker!");
        return;

      default:
        print("\nInvalid Option! Please try again.");
    }
  }
}