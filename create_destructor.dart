class Mobile{
  String ? brandname;
  String ? phonename;
  int ? year;
  Mobile(this.brandname,this.phonename,this.year){  ///Mobile(this.brandname, this.phonename, this.year); this also valid
    /*print("Brand Name: $brandname");
    print("Phone Name: $phonename");
    print("Year Released: $year"); */
  }
}

void main(){
  Mobile p=Mobile("Apple", "Iphone X", 2018);
  print("Brand Name: ${p.brandname}");
  print("Phone Name: ${p.phonename}");
  print("Year Released: ${p.year}");


}