void setup() {
  MethodOne(); 
  MethodTwo(5); 
}

/*
  The following method has an error in it. Fix the error and run it. 
*/

void MethodOne()
{
  int i = 1000; // You are not allowed to change this line. 
  int max = 10;
  String output = "";
  if (i > max)
  {
    output = "i is greater than "+max+".";
  }
  println(output);
}

/* 
  Finish the following method so that we can change the number assigned 
  to the weekday and it prints the correct output.
*/
void MethodTwo(int weekDay) 
{
  // Not sure if 'we can change the number assigned to the weekday',
  // should be understood as we can change the number in the method
  // or if it hypothetically can be changed and it will work.

  // So here we have an answer where we use the random function.
  //int weekDay = (int) random(0, 7); // 0 = Monday, 6 = Sunday.

  boolean weekend = false;
  if (weekDay < 5)
  {
    weekend = false;
  }
  else 
  {
    weekend = true;
  }
  
  // Print the name of the weekday here: 
  String[] weekdays = new String[] { "Mandag", "Tirsdag", "Onsdag", "Torsdag", "Fredag", "Lørdag", "Søndag"};
  println(weekdays[weekDay]);
  
  // Print if it is weekend here:
  println("Det er " + (weekend ? "" : "ikke ") + "weekend");
}
