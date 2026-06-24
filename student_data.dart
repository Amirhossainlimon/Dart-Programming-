void main() {

  List<String> students1 = ['Tonmoy', 'Sakib'];

  
  bool isNewStudent = true;

  
  List<String> students2 = [
    'Rahat',
    'Nafis',
    if (isNewStudent) 'Rahim',
  ];

  
  List<String> students = [...students1, ...students2];


  Set<String> courses = {
    'Flutter',
    'Dart',
    'Git',
  };


  Map<String, int> studentAges = {
    'Tonmoy': 22,
    'Sakib': 23,
    'Rahat': 21,
    'Nafis': 24,
    'Rahim': 20,
  };

  print('Students:');
  print(students);

  print('\nCourses:');
  print(courses);

  print('\nStudent Ages:');
  studentAges.forEach((name, age) {
    print('$name -> $age');
  });
}