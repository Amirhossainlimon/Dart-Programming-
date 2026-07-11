class Animal {
  void sound() {
    print("Animal Sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog Barks");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat Meows");
  }
}

void main() {
Animal animal = Dog();
animal.sound();

animal = Cat(); // শুধু নতুন object 'Cat()' assign করলাম...
animal.sound();
}