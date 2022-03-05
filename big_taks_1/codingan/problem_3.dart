import 'dart:io';

void problem3(int rows) {
  for (int i = 0; i < rows - 1; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write(" ");
    }
    for (int k = 0; k <= rows - 1 - i; k++) {
      stdout.write("* ");
    }

    stdout.writeln();
  }

  for (var i = rows - 1; i >= 0; i--) {
    for (var k = 0; k < i; k++) {
      stdout.write(" ");
    }
    for (var j = i; j <= rows - 1; j++) {
      stdout.write("*" + " ");
    }
    stdout.writeln();
  }
}

void main() {
  stdout.write("Enter a number ");
  var number = stdin.readLineSync()!;
  var rows = int.parse(number);
  problem3(rows);
}
