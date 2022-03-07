import 'dart:async';
import 'dart:io';

void soal1() {
  print('hellow word');
}

void soal2() {
  print('soal 2 -------------');
  String firstName = 'Akil';
  String lastName = 'kil';
  int umur = 12;
  bool menikah = true;
  List<String> namaAdik = ['ucil', 'icil'];
  Map<String, dynamic> namaKeluaurga = {
    'tante': 'Minarni',
    'paman': 'Samsudin',
  };
  print('nama saya $firstName $lastName umur $umur');
  print('apakah saya sudah menikah? $menikah');
  print(namaAdik);
  print(namaKeluaurga['tante']);
}

void soal3() {
  print('soal 3 -------------');
  String firstName = 'Akil';
  String lastName = 'kil';
  int height = 175;
  print('nama saya $firstName $lastName tinggi $height');
}

void soal4() {
  print('soal 4 -------------');
  var name = 'Dhimas';
  print('Your name is ${name.toLowerCase()}');
  print('Your name is ${name.toUpperCase()}');
}

void soal5() {
  print('soal 5 -------------');
  print('Hasil programnya seperti dibawah ini :');
  print('Your name is Dhimas');
}

void soal6() {
  print('soal 6 -------------');
  String firstName = 'Akil';
  String lastName = 'kil';
  print('$firstName $lastName ');
}

void soal7() {
  print(
      'bisa menggunakah toUpperCase untuk mengubah string ke huruf besar semua dan lowecase ke kecilsemua');
}

void soal8() {
  print('untuk mengubah string menjadi huruf kecil semua');
}

void soal9() {
  print('x : 2, y: 0, z: 0');
}

void soal10() {
  print('///');
}

void soal11() {
  print('null');
}

void soal12() {
  print('dari string berubah jadi number hasilnya 3 dengan tipe data integer');
}

void soal13() {
  print('dari string berubah jadi number hasilnya 3 dengan tipe data integer');
}

bool soal14(var angka) {
  if (angka % 2 == 0) {
    return true;
  } else if (angka % 3 == 0 || angka % 1 == 0) {
    return false;
  }
  return true;
}

void soal15() {
  print(20 % 4);
  print('2, 0, 8, 5, 0');
}

void soal16() {
  print('kosong');
}

void soal17() {
  print('true');
  print('false');
}

void soal18() {
  print('A');
}

void soal19() {
  List nums = [];
  Map name = {};
}

void soal20() {
  int satu = 1;
  String dua = '2';
  bool hasil = true;
  print([satu, dua, hasil]);
}

void soal21() {
  print('dynamic');
}

void soal22() {
  print('spring : 1, summer : 2, autumn : 3');
}

void soal23() {
  print('String, int');
}

void soal24() {
  print(4);
}

void soal25() {
  print('restaurants[0][name]');
}

void soal26() {
  var restaurans = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];
  restaurans.add({
    'name': 'Navaratna',
    'cuisine': 'Indian',
    'ratings': [4.0, 4.5, 4.0]
  });
}

void soal27() {
  var restaurans = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];

  for (var i in restaurans) {
    print(i['name']);
    print(i['cuisine']);
    print(i['ratings']);
  }
}

void soal28() {
  var restaurans = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];

  for (var i in restaurans) {
    i['means rating'] = 4.5;
  }
  print(restaurans);
}

void soal29() {
  print('hellow');
  print('Data berhasil didapatkan');
}

void soal30() {
  print('Data berhasil didapatkan');
  print('hellow');
}

void main() {
  // stdout.write("Enter a number ");
  // var number = stdin.readLineSync()!;
  // var angka = int.parse(number);
  // print(soal14(angka));
  soal28();
}
