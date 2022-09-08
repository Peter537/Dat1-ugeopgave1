void setup() {
  Task6A();
  Task6B();
}

void Task6A() {
  // Could be on one line
  int a = (int) random(0, 11);
  int b = (int) random(0, 11);
  if (a == 10 || b == 10 || (a + b) == 10) {
    println("Success!");
  } else {
    println("Failure!");
  }
}

void Task6B() {
  // Could be on one line
  int x = (int) random(5, 15);
  int y = (int) random(5, 15);
  int z = (int) random(5, 15);
  if (((x + y + z) == 30) && (x % 10 != 0) && (y % 10 != 0) && (z % 10 != 0)) {
    println("Success!");
  } else {
    println("Failure!");
  }
}
