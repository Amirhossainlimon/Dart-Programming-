abstract class Animal {
  void sound();
}

class Dog implements Animal {
  @override
  void sound() {
    print("Dog Barks");
  }
}

class Cat implements Animal {
  @override
  void sound() {
    print("Cat Meows");
  }
}

void main() {
  Animal animal = Dog();
  animal.sound();

  animal = Cat();
  animal.sound();
}