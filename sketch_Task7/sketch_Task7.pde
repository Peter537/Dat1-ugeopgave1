void setup() {
  Task7A();
  Task7B();
}

void Task7A() {
  int input = 20;
  for (int i = input; i >= 0; i--){
    if (i == 6) {
      println("six");
    } else if (i == input / 2) {
      println("HALF!");
    } else {
      println(i);
    }
  }
}

void Task7B() {
  // If the input is negative, the for loop will never run
  // because it checks the condition before looping the first time,
  // and 'i' as a negative number wouldn't be greater than or equal to 0
  int input = 28;
  for (int i = input; i >= 0; i--){
    if (i == 6) {
      println("six");
    } else if (i == input / 2) {
      println("HALF!");
    } else {
      println(i);
    }
  }  
}
