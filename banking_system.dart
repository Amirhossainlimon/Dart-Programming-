class BankAccount {
  double _balance = 0;
 final String _pin;
BankAccount(this._pin){
print("Account created");
}
  double getBalance(String pin) {
    if (pin == _pin) {
      return _balance;
    } else {
      throw Exception('Unauthorized access');
    }
  }

//getter
  double get balance => _balance;
  // deposit method
  void deposit(double amount) {
    _balance += amount;
    print('Deposited: $amount');
  }

  // withdraw method
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrawn: $amount');
    } else {
      print("Invalid withdraw amount");
    }
  }
}

void main() {
  BankAccount account = BankAccount('162004');
account.deposit(10000);
 account.getBalance("162004");




}