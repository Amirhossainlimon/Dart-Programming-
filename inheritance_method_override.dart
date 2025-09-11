abstract class Father {
  String name;
  String land='100 bigha';
  String home='Tin home';
  //constructor
  Father(this.name) {
    print("$name Father constructor created");
  }
  incomeSource() {
    print('Farming');
  }
}


class Son extends Father {
  String sonName;
  Son(super.name,this.sonName);
  @override
  String home="Duplex home"; //override
  @override
  String land='150 bigha';  //override

 @override
  incomeSource() {
    print('Job title: App developer');
  }
}

void main() {
  Son s = Son("Monir", "Limon"); ///We can access parent info through child class
  //s.sonName="Limon"; or s.name="Limon"; we can write this one

  print("Son name : ${s.sonName}");
  print("Size of land : ${s.land}");
  print("Type of house : ${s.home}");
 s.incomeSource();
 }
