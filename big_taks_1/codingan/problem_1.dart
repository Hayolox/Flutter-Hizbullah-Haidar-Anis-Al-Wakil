import 'dart:io';

bool problem1(var angka) {
  if (angka % 2 == 0) {
    return true;
  } else if (angka % 3 == 0 || angka % 1 == 0) {
    return false;
  }
  return true;
}

void main() {
  stdout.write("Enter a number ");
  var number = stdin.readLineSync()!;
  var angka = int.parse(number);

  print(problem1(angka));
}
