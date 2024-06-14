int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  String returnAdd = ('Add $a + $b = ${add(a, b)}');
  String returnedSub = ('Sub $a - $b = ${sub(a, b)}');
  return (returnAdd + '\n' + returnedSub);
}