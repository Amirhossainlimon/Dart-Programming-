import 'dart:math';

abstract class Shape {
  double _area = 0;

  double area();

  set areaValue(double value) {
    _area = value;
  }

  double get areaValue => _area;
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    double result = pi * radius * radius;
    areaValue = result;
    return result;
  }
}

void main() {
  Circle c1 = Circle(7);
  c1.area();

  print("Circle Area: ${c1.areaValue}");
}
