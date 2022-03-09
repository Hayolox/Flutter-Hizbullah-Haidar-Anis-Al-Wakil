import 'tugas_1.dart';

class Hewan {
  int berat;

  Hewan.berat(this.berat);
}

class Mobil {
  double kapasistas;
  List<Hewan> muatan;

  Mobil(this.kapasistas, this.muatan);

  void tambahMuatan() {
    if (this.totalMuatan() < kapasistas) {
      while (this.totalMuatan() < kapasistas) {
        double total = 0;
        var newAnimal = Hewan.berat(100);
        muatan.add(newAnimal);
        print('Tambah Data');
        total = this.totalMuatan() + newAnimal.berat;
        if (this.totalMuatan() > kapasistas) {
          print(total);
          break;
        }
      }
    } else {
      print('Kapasistas penuh');
    }
  }

  double totalMuatan() {
    double totalMuatan = 0;
    for (var i in muatan) {
      totalMuatan = totalMuatan + i.berat;
    }
    return totalMuatan;
  }
}

void main(List<String> args) {
  var hewan1 = Hewan.berat(100);
  var hewan2 = Hewan.berat(200);
  var hewan3 = Hewan.berat(300);

  var mobilUtama = Mobil(1000, [hewan1, hewan2, hewan3]);

  mobilUtama.tambahMuatan();

  print(mobilUtama.totalMuatan());
}
