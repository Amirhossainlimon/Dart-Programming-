void main() {
  print(Animal.className);  // accessing static variable
 // Animal.test();            // calling static method
  print(Animal.test());//When I use print, it shows null because inside the test method I already used print.

}

class Animal {
  String name;
  static String className = 'animal class';

  Animal(this.name);

  static  test() {
    print('test');
  }
}
