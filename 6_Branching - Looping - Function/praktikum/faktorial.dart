void main() {
  //Membuat variable inputan yang bernilai integer dan faktorial yang bernilai faktorial
  int inputan = 30;
  double faktorial = 1;

  /*
    Kondisi yang dimana apabila inpusan lebih dari 30 atau sama dengan 30 maka masuk le logic faktorial
    apabila kurang dari 30 maka ada pesan inputan haurs lebih dari 30
  
  */

  if (inputan >= 30) {
    //Disini logic fatroial yang dimana menggunakan perulangan
    for (int a = 1; a <= inputan; a++) {
      // Ini merupakan perkalian untuk menghitung faktorial
      faktorial = faktorial * a;

      //Ini kondisi apabila a == 10 berarti langsung print hasil faktorialnya dan selanjutnya sama seperti tadi.
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
