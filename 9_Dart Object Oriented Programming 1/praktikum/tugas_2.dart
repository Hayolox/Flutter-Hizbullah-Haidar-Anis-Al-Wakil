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
    if (this.totalMuatan() < kapasitas) {
      while (this.totalMuatan() < kapasitas) {
        var addData = ['Kucing', 50];
        var toString = addData[1].toString();
        int newweightAnimal = int.parse(toString);
        int total = this.totalMuatan() + newweightAnimal;
        print('Menambahkan  data hewan ');
        dataHewan.add(addData);
        if (this.totalMuatan() > kapasitas) {
          break;
        }
        print(dataHewan);
        print(total);
      }
    } else {
      print('MUATAN PENUH!!!!');
      print(
          'total kapasitas mobil maksimal 1000 kg. total berat kapasitas sekarang ${this.totalMuatan()}');
    }
  }

  int totalMuatan() {
    int total = 0;
    for (var i in dataHewan) {
      total = i[1] + total;
    }
    return total;
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

  print('total muatan dari mobil ini adalah ${mobilUtama.totalMuatan()} KG');
}

void main() {
  test();
}
