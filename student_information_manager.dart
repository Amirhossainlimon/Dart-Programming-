import 'dart:io';

abstract class Person {
  void displayInfo();
}

class Student extends Person {
  int _id;
  String _name;
  int _age;

  Student(this._id, this._name, this._age);

  int get id => _id;
  String get name => _name;
  int get age => _age;

  @override
  void displayInfo() {
    print("ID: $_id | Name: $_name | Age: $_age");
  }
}

class StudentManager {
  final List<Student> students = [];

  void addStudent(int id, String name, int age) {
    if (searchStudent(id) != null) {
      print("\nStudent ID already exists!");
      return;
    }

    students.add(Student(id, name, age));
    print("\nStudent Added Successfully.");
  }

  void viewStudents() {
    if (students.isEmpty) {
      print("\nNo Students Found!");
      return;
    }

    print("\n----- Student List -----");

    students.forEach((student) {
      student.displayInfo();
    });
  }

  Student? searchStudent(int id) {
    for (Student student in students) {
      if (student.id == id) {
        return student;
      }
    }
    return null;
  }

  bool deleteStudent(int id) {
    Student? student = searchStudent(id);

    if (student != null) {
      students.remove(student);
      return true;
    }

    return false;
  }
}

void main() {
  StudentManager manager = StudentManager();

  while (true) {
    print("\n===== Student Information Manager =====");
    print("1. Add Student");
    print("2. View Students");
    print("3. Search Student");
    print("4. Delete Student");
    print("5. Exit");

    stdout.write("Enter your choice: ");

    int? choice = int.tryParse(stdin.readLineSync()!);

    if (choice == null) {
      print("\nInvalid Input!");
      continue;
    }

    switch (choice) {
      case 1:
        stdout.write("Enter ID: ");
        int? id = int.tryParse(stdin.readLineSync()!);

        if (id == null) {
          print("Invalid ID!");
          break;
        }

        stdout.write("Enter Name: ");
        String name = stdin.readLineSync()!;

        if (name.trim().isEmpty) {
          print("Name cannot be empty!");
          break;
        }

        stdout.write("Enter Age: ");
        int? age = int.tryParse(stdin.readLineSync()!);

        if (age == null || age <= 0) {
          print("Invalid Age!");
          break;
        }

        manager.addStudent(id, name, age);
        break;

      case 2:
        manager.viewStudents();
        break;

      case 3:
        stdout.write("Enter Student ID: ");
        int? id = int.tryParse(stdin.readLineSync()!);

        if (id == null) {
          print("Invalid ID!");
          break;
        }

        Student? student = manager.searchStudent(id);

        if (student != null) {
          print("\nStudent Found:");
          student.displayInfo();
        } else {
          print("\nStudent Not Found!");
        }
        break;

      case 4:
        stdout.write("Enter Student ID to Delete: ");
        int? id = int.tryParse(stdin.readLineSync()!);

        if (id == null) {
          print("Invalid ID!");
          break;
        }

        if (manager.deleteStudent(id)) {
          print("\nStudent Deleted Successfully.");
        } else {
          print("\nStudent Not Found!");
        }
        break;

      case 5:
        print("\nThank You!");
        exit(0);

      default:
        print("\nInvalid Choice!");
    }
  }
}