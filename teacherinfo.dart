class Person {
  String? name;
}

class Teacher extends Person {
  String? subject;

  void displayInfo() {
    print("Teacher Name: $name");
    print("Subject: $subject");
  }
}

void main() {
  Teacher t1 = Teacher();
  t1.name = "Mr. Rahman";
  t1.subject = "Dart";

  t1.displayInfo();
}
