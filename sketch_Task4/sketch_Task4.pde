void setup() {
  // 4.a
  for (int i = 0; i <= 20; i++) {
    println(i);
  }
  
  // 4.b - Uden modulus
  for (int i = 0; i <= 20; i += 2) {
    println(i);
  }
  
  // 4.b - Med modulus
  for (int i = 0; i <= 20; i++) {
    if (i % 2 == 0)
      println(i);
  }
  
  // 4.c - Med modulus
  int i = 0;
  while (i <= 20) {
    if (i % 2 == 0)
      println(i);
    i++;
  }
}
