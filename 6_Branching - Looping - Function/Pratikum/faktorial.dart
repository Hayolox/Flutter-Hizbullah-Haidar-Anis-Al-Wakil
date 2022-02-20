void main() {
  int inputan = 30;
  double faktorial = 1;

  if (inputan >= 30) {
    for (int a = 1; a <= inputan; a++) {
      faktorial = faktorial * a;

      if (a == 10) {
        print(faktorial);
      } else if (a == 20) {
        print(faktorial);
      } else if (a == 30) {
        print(faktorial);
      }
    }
  } else {
    print('inputan harus sama atau lebih dari 30');
  }
}
