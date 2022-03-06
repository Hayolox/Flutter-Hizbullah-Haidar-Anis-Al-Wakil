int problem2(int masukan) {
  late var hasil;
  if (masukan >= 180) {
    hasil = masukan - 180;
  } else {
    hasil = masukan + 180;
  }
  if (hasil >= 360 || hasil <= 0) {
    hasil = 0;
  }
  return hasil;
}

void main() {
  print(problem2(120));
  print(problem2(200));
  print(problem2(180));
  print(problem2(-1));
  print(problem2(360));
  print(problem2(540));
}
