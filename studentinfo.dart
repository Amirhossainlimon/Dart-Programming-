class Student {
  String name;
  int roll;

  Student(this.name, this.roll);

  void displayInfo() {
    print("Student Name: $name");
    print("Student Roll: $roll");
  }
}

void main() {
  Student s1 = Student("Amir Hossain Limon", 10);

  s1.displayInfo();
}
