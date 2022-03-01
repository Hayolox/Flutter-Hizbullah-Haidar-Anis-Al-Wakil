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
    'NameHewan': hewan,
  };

  for (var i in nameHewan['NameHewan']!) {
    for (var j in i) {
      print(j);
    }
  }
}
