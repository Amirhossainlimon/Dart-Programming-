void main(){
placeorder("Pizza", 2);
print(thnx());
print("Area is ${area(8.5,8)}");
noti(); ///Anonymous funtion
print("Square: ${square(6)}"); /// Arrow function & same as void square(int x) => print(x * x);


print("When age is optional:");
info("Limon"); //optional parameter

print("When age isn't optional:");
info("Limon",21);
print("When name is optional:");
calArea(length: 12, width: 10);

print("When name isn't optional:");
calArea(length: 12, width: 10, name: "Dhaka");
}

///Funtion
 placeorder(String n,int a){
  print("Customers order is $n and number of item is $a");
 }

 String thnx(){
  return 'Thank You...Will come again';
 }

 double area(double l, double w){
  return l*w;
}

///Anonymous funtion
var noti = () {
  print("New notification");
};
/// Arrow function
int square(int x) => x * x;

//Use optional parameter
void info(String name, [int? age]) {
  print("Hello $name");
  if (age != null) {
    print("Your age is $age");
  }
}

///Optional parameter
void calArea({required double length, required double width, String? name, })
{
  double area = length * width;

  if (name != null) {
    print("Area = $area\nName is $name");
  } else {
    print("Area = $area\nNo name is given ");
  }
}