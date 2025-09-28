class Parent {
  void greet() {
    print("Hello from Parent");
  }
}

class Child extends Parent {
  @override
  void greet() {
    super.greet();   // parent method call
    print("Hello from Child");
  }
}

void main() {
  Child c = Child();
  c.greet();
}
