void main() {
  List<String> fruits = ["Apple", "Banana"];

  print("Initial List: $fruits");

  // add()
  fruits.add("Mango");
  print("After add(): $fruits");

  // addAll()
  fruits.addAll(["Orange", "Guava"]);
  print("After addAll(): $fruits");

  // insert()
  fruits.insert(1, "Pineapple");
  print("After insert(): $fruits");

  // contains()
  print("Contains Banana? ${fruits.contains("Banana")}");

  // indexOf()
  print("Index of Mango: ${fruits.indexOf("Mango")}");

  // remove()
  fruits.remove("Banana");
  print("After remove(): $fruits");

  // removeAt()
  fruits.removeAt(0);
  print("After removeAt(): $fruits");

  // removeWhere()
  fruits.removeWhere((fruit) => fruit == "Orange");
  print("After removeWhere(): $fruits");

  // length
  print("Length: ${fruits.length}");

  // sort()
  fruits.sort();
  print("After sort(): $fruits");

  // reversed
  print("Reversed: ${fruits.reversed.toList()}");

  // clear()
  fruits.clear();
  print("After clear(): $fruits");
}