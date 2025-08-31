
main() {
  List<int> numbers = [10, 20, 30];
  print("Initial List: $numbers");

  numbers.add(40);
  print("After add(40): $numbers");

  numbers.addAll([50, 60]);
  print("After addAll([50, 60]): $numbers");

  numbers.insert(2, 25);
  print("After insert(2, 25): $numbers");

  numbers.insertAll(4, [35, 37]);
  print("After insertAll(4, [35, 37]): $numbers");
  List<int>a=[2,3,1,4,5,8,6,9,7];
  a.sort();
  print("After sorting values: $a");
  a.remove(8);
  print("After removing value (8): $a");
  a.removeAt(2);
  print("After removing value (3): $a");
  a.removeLast();
  print("After removing last value (9): $a");
  print("List length: ${a.length}"); //print(a.length);
   print(a.runtimeType); //type
  List<dynamic> myList = [1, "Hello", true, 3.14];
  print(myList);
  print(myList.runtimeType);

  List MyList = [2, "world", false, 3.14];
  print(MyList);
  print(MyList.runtimeType);
print(a.reversed.toList());
List<int>b=[1,2,3,4,5,6];
print(b.reversed); //It's not a list its an Iterable
print(b.runtimeType);



 }

