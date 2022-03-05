import 'dart:io';

int problem2(int masukan) {
  if (masukan <= 0 || masukan == 180 || masukan >= 360) {
    return 0;
  } else if (masukan < 180) {
    return masukan + 180;
  } else if (masukan > 180) {
    return masukan - 180;
  }
  return 0;
}

void main() {
  stdout.write("Enter a number ");
  var number = stdin.readLineSync()!;
  var masukan = int.parse(number);
  print(problem2(masukan));
}
