class Restaurant {
  int _id = 26565;

  // getter
  int get ResID => _id;

 /*  We can define getter this way
 int get ResID {
    return _id;
  } */

  // setter
  set setID(int value) {
    _id = value;
  }

  order(String item) {
    print('$item Ordered');
    //Access Private data by using encapsulation....
    _shoping(item);
    _prepareItem(item);
  }

  _prepareItem(String item) {
    print('$item preparing');
  }

  _shoping(String item) {
    print('$item shopping');
  }
}

void main() {
  Restaurant r = Restaurant();

  print("Old Restaurant ID: ${r.ResID}");

  // using setter
  r.setID = 98765;

  print("New Restaurant ID: ${r.ResID}");

  r.order("Burger");
}
