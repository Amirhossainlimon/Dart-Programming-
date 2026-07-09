mixin Walk {
  void walk() {
    print("Walking...");
  }
}

mixin Swim {
  void swim() {
    print("Swimming...");
  }
}

class Duck with Walk, Swim {}

void main() {
  Duck duck = Duck();

  duck.walk();
  duck.swim();
}