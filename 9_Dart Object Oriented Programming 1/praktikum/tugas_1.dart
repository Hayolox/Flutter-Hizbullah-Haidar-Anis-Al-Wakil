class hewan {
  String nameAnimal;
  int weightAnimal;

  hewan.babi(this.nameAnimal, this.weightAnimal);
}

class mobil {
  var dataHewan = [];
  int kapasitas;

  mobil(this.dataHewan, this.kapasitas);

  void tambahMuatan() {
    int total = 0;
    for (var i in dataHewan) {
      total = i[1] + total;
    }
    if (total < kapasitas) {
      while (total < kapasitas) {
        var addData = ['Kucing', 43];
        var toString = addData[1].toString();
        int newweightAnimal = int.parse(toString);
        total = total + newweightAnimal;
        dataHewan.add([addData]);
        if (total > kapasitas) {
          break;
        }
        print('Menambahkan  data hewan ');
        print(total);
        print(dataHewan);
      }
    } else {
      print('MUATAN PENUH!!!!');
      print(
          'total kapasitas mobil maksimal 1000 kg. total berat kapasitas sekarang $total');
    }
  }
}

void test() {
  var hewan1 = hewan.babi('ayam', 500);
  var hewan2 = hewan.babi('babi', 300);
  var hewan3 = hewan.babi('anjing', 300);

  var mobilUtama = mobil([
    [
      hewan1.nameAnimal,
      hewan1.weightAnimal,
    ],
    [
      hewan2.nameAnimal,
      hewan2.weightAnimal,
    ],
    [
      hewan3.nameAnimal,
      hewan3.weightAnimal,
    ],
  ], 1000);

  mobilUtama.tambahMuatan();
}

void main() {
  test();
}
