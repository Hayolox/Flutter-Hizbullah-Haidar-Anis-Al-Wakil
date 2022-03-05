import 'dart:io';

void problem4(int angka) {
  for (int i = 0; i < angka; i++) {
    for (int j = 0; j < angka; j++) {
      if (i == j) {
        stdout.write(' ${i + 1}');
      } else {
        stdout.write(' ');
      }
    }
    stdout.writeln();
  }
}

void main() {
  stdout.write("Enter a number ");
  var number = stdin.readLineSync()!;
  var angka = int.parse(number);
  problem4(angka);
}
