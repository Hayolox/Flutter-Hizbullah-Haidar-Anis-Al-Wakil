String Kondisi(int nilai) {
  late String hasil;
  //Kondisi nilai
  if (nilai > 70) {
    hasil = 'A';
  } else if (nilai > 40) {
    hasil = 'B';
  } else if (nilai > 0) {
    hasil = 'C';
  } else {
    print('');
  }
  return hasil;
}

void main() {
  print(Kondisi(78));
}
