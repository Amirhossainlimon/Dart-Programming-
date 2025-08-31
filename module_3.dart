void main() {
  Set<int> setA = {1, 2, 3, 4};
  Set<int> setB = {3, 4, 5, 6};

  print("Set A: $setA");
  print("Set B: $setB");
  print("Union: ${setA.union(setB)}");
  print("Intersection: ${setA.intersection(setB)}");

print("Map:");
Map<String, String> student = {
"name": "Limon",
"dept": "CSE",
"university": "Bangladesh University"
};

print(student);
print(student["name"]);

  Map<String, int> x = {"Math": 90, "Physics": 85, "ICT": 95};

  print(x);

  x.remove("Physics");
  print(x);

  print(x.containsKey("Math"));     // true
  print(x.containsKey("Biology"));  // false

  print(x.containsValue(95));       // true
  print(x.containsValue(100));
x.addAll({
  'OOP':80,
  "CGPA":3,

});
print(x);
 var keylist=x.keys.toList();
print(keylist);
  var valuelist=x.values.toList();
  print(valuelist);
}
