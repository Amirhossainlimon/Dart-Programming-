class Engine {
  void start() {
    print("Engine Start");
  }
}

class Car {
  Engine engine = Engine(); // Engine is inside the car

  void run() {
    engine.start();
    print("Car Running");
  }
}

void main() {
  Car car = Car();
  car.run();
}