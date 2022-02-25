void main() {
  // List hewan yang berisi nama-nama hesan
  var hewan = [
    [
      'anjing',
      'ayam',
    ],
    ['semut', 'ular'],
  ];

// Map nameHewan yang isi key tersebut dari list
  var nameHewan = {
    'hewan1': hewan[0][1],
    'hewan2': hewan[0][0],
    'hewan3': hewan[1][0],
    'hewan4': hewan[1][1],
  };

  //Perulangan untuk menampilkan MAP
  for (var key in nameHewan.keys) {
    print(nameHewan[key]);
  }
}
