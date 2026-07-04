// ===============================
// ABSTRACT CLASS - COMPLETE CODE
// ===============================

abstract class Animal {
  // Abstract Methods (No Body)
  void sound();
  void run();

  // Normal Methods (With Body)
  void eat() {
    print("Animal is eating");
  }

  void sleep() {
    print("Animal is sleeping");
  }
}

// Child Class using extends
class Dog extends Animal {
  @override
  void sound() {
    print("Dog says: Bark");
  }

  @override
  void run() {
    print("Dog is running");
  }
}

// Child Class using implements
class Cat implements Animal {
  @override
  void sound() {
    print("Cat says: Meow");
  }

  @override
  void run() {
    print("Cat is running");
  }

  @override
  void eat() {
    print("Cat is eating");
  }

  @override
  void sleep() {
    print("Cat is sleeping");
  }
}

void main() {
  print("===== EXTENDS =====");

  Dog dog = Dog();
  dog.sound();
  dog.run();
  dog.eat();
  dog.sleep();

  print("");

  print("===== IMPLEMENTS =====");

  Cat cat = Cat();
  cat.sound();
  cat.run();
  cat.eat();
  cat.sleep();
}