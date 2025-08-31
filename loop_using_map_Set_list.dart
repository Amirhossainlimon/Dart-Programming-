void main(){
  print("For-in loop:");
  List<String> fruits = ["Apple", "Banana", "Mango"];

  for (var fruit in fruits) {
    print(fruit);
  }
  print("List of Map");
// List of Map
  var persons = [
    {
      "name": "Rahim",
      "address": "Dhaka, Bangladesh",
      "tk": 5000
    },
    {
      "name": "Karim",
      "address": "Chattogram, Bangladesh",
      "tk": 7000
    },
    {
      "name": "Sultana",
      "address": "Sylhet, Bangladesh",
      "tk": 9000
    }
  ];
  int total=0;
  for(var i in persons){
    total+=i["tk"] as int;
    print(i);
  }

  print("Total amount $total");
  print("Set:");
  var name= {'Limon',"Amir","Nur"};

  for(var n in name){
    print(n);
  }
  
}