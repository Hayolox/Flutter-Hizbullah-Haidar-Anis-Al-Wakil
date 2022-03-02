void main() {
  // List hewan yang berisi nama-nama hesan
  var name = [
    [
      'akil',
      12,
    ],
    ['udin', 14],
    ['ucup', 14],
  ];

// Map nameHewan yang isi key tersebut dari list
  var mapName = {};

  for (var i in name) {
    for (var p in i) {
      mapName[i[0]] = p;
    }
  }

  print(mapName);
}
