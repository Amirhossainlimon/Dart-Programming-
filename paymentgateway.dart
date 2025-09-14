//Interface class

abstract class PaymentGateway {
  cashOut(double amount);
  cashIn(double amount);
}

// Implement for Bkash
class Bkash implements PaymentGateway {
  @override
  cashOut(double amount) {
    print('Bkash Cash out 20 per 1000');
  }

 @override
  cashIn(double amount) {
    print('Bkash Cash in free');
  }
}

// Implement for Nagad
class Nagad implements PaymentGateway {
  @override
  cashOut(double amount) {
    print('Nagad Cash out 15 per 1000');
  }

  @override
  cashIn(double amount) {
    print('Nagad Cash in free');
  }
}

void main() {
  //Polymorphism
  PaymentGateway payment1 = Bkash();
  print("Payment gateway info for Bkash:");
  payment1.cashOut(1000);
  payment1.cashIn(500);

  PaymentGateway payment2 = Nagad();
  print("Payment gateway info for Nagad:");
  payment2.cashOut(1000);
  payment2.cashIn(500);
}
