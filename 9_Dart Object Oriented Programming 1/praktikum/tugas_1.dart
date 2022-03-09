class Hewan {
  int berat;

  Hewan.berat(this.berat);
}

class Mobil {
  double kapasistas;
  List<Hewan> muatan;

  Mobil(this.kapasistas, this.muatan);
  void tambahMuatan() {
    double totalMuatan = 0;
    for (var i in muatan) {
      totalMuatan = totalMuatan + i.berat;
    }

    if (totalMuatan < kapasistas) {
      while (totalMuatan < kapasistas) {
        var newAnimal = Hewan.berat(100);
        muatan.add(newAnimal);
        print('Tambah data');
        totalMuatan = totalMuatan + newAnimal.berat;
        print(totalMuatan);
        if (totalMuatan > kapasistas) {
          break;
        }
      }
    } else {
      print('Kapasistas penuh');
    }
  }
}

void main(List<String> args) {
  var hewan1 = Hewan.berat(100);
  var hewan2 = Hewan.berat(200);
  var hewan3 = Hewan.berat(900);

  var mobilUtama = Mobil(1000, [hewan1, hewan2, hewan3]);

  mobilUtama.tambahMuatan();
}
