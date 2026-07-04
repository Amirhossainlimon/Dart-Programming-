enum WeekDay{
  saturday,
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday
}

void main(){

 WeekDay today=WeekDay.saturday;

 print(today);

 print(today.name);

 print(today.index);

 print(WeekDay.values);

 for(WeekDay day in WeekDay.values){

    print(day.name);

 }

 switch(today){

   case WeekDay.saturday:

      print("Holiday");

      break;

   case WeekDay.sunday:

      print("Working");

      break;

   case WeekDay.monday:

      print("Working");

      break;

   case WeekDay.tuesday:

      print("Working");

      break;

   case WeekDay.wednesday:

      print("Working");

      break;

   case WeekDay.thursday:

      print("Working");

      break;

   case WeekDay.friday:

      print("Weekend");

      break;

 }

}