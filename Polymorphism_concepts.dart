// =============================
// POLYMORPHISM IN DART (A-Z)
// =============================

//--------------------------------------------------
// 1. Parent Class
//--------------------------------------------------

class Animal {
  void sound() {
    print("Animal Sound");
  }

  void eat() {
    print("Animal is Eating");
  }
}

//--------------------------------------------------
// 2. Child Classes (Method Overriding)
//--------------------------------------------------

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

class Cow extends Animal {
  @override
  void sound() {
    print("Cow Moos");
  }
}

//--------------------------------------------------
// 3. Runtime Polymorphism
//--------------------------------------------------

void runtimePolymorphism() {
  print("===== Runtime Polymorphism =====");

  Animal animal;

  animal = Dog();
  animal.sound();

  animal = Cat();
  animal.sound();

  animal = Cow();
  animal.sound();
}

//--------------------------------------------------
// 4. List Polymorphism
//--------------------------------------------------

void listPolymorphism() {
  print("\n===== List Polymorphism =====");

  List<Animal> animals = [
    Dog(),
    Cat(),
    Cow(),
  ];

  for (Animal animal in animals) {
    animal.sound();
  }
}

//--------------------------------------------------
// 5. Function Parameter Polymorphism
//--------------------------------------------------

void makeSound(Animal animal) {
  animal.sound();
}

void functionPolymorphism() {
  print("\n===== Function Parameter =====");

  makeSound(Dog());
  makeSound(Cat());
  makeSound(Cow());
}

//--------------------------------------------------
// 6. Abstract Class
//--------------------------------------------------

abstract class Shape {
  void draw();
}

class Circle extends Shape {
  @override
  void draw() {
    print("Drawing Circle");
  }
}

class Rectangle extends Shape {
  @override
  void draw() {
    print("Drawing Rectangle");
  }
}

class Triangle extends Shape {
  @override
  void draw() {
    print("Drawing Triangle");
  }
}

void abstractExample() {
  print("\n===== Abstract Class =====");

  Shape shape;

  shape = Circle();
  shape.draw();

  shape = Rectangle();
  shape.draw();

  shape = Triangle();
  shape.draw();
}

//--------------------------------------------------
// 7. Interface (implements)
//--------------------------------------------------

abstract class Printer {
  void printData();
}

class PDFPrinter implements Printer {
  @override
  void printData() {
    print("Printing PDF");
  }
}

class ImagePrinter implements Printer {
  @override
  void printData() {
    print("Printing Image");
  }
}

void interfaceExample() {
  print("\n===== Interface =====");

  Printer printer;

  printer = PDFPrinter();
  printer.printData();

  printer = ImagePrinter();
  printer.printData();
}

//--------------------------------------------------
// 8. Vehicle Example
//--------------------------------------------------

class Vehicle {
  void start() {
    print("Vehicle Started");
  }
}

class Car extends Vehicle {
  @override
  void start() {
    print("Car Started");
  }
}

class Bike extends Vehicle {
  @override
  void start() {
    print("Bike Started");
  }
}

class Bus extends Vehicle {
  @override
  void start() {
    print("Bus Started");
  }
}

void vehicleExample() {
  print("\n===== Vehicle Example =====");

  List<Vehicle> vehicles = [
    Car(),
    Bike(),
    Bus(),
  ];

  for (Vehicle vehicle in vehicles) {
    vehicle.start();
  }
}

//--------------------------------------------------
// 9. Employee Example
//--------------------------------------------------

class Employee {
  void salary() {
    print("Employee Salary");
  }
}

class Manager extends Employee {
  @override
  void salary() {
    print("Manager Salary = 80000");
  }
}

class Developer extends Employee {
  @override
  void salary() {
    print("Developer Salary = 60000");
  }
}

class Designer extends Employee {
  @override
  void salary() {
    print("Designer Salary = 50000");
  }
}

void employeeExample() {
  print("\n===== Employee Example =====");

  List<Employee> employees = [
    Manager(),
    Developer(),
    Designer(),
  ];

  for (Employee employee in employees) {
    employee.salary();
  }
}

//--------------------------------------------------
// 10. Main Function
//--------------------------------------------------

void main() {

  runtimePolymorphism();

  listPolymorphism();

  functionPolymorphism();

  abstractExample();

  interfaceExample();

  vehicleExample();

  employeeExample();

}