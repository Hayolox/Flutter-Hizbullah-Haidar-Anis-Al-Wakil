class Matematika {
  void hasil() {}
}

class KelipatanPersekutuanTerkecil implements Matematika {
  int x = 6;
  int y = 9;

  void hasil() {
    if (x < y) {
      for (var i = x;; i++) {
        if (i % x == 0 && i % y == 0) {
          print('Jadi hasil KPK dari $x dan $y adalah $i');
          break;
        }
      }
    }
  }
}

class FaktorPeseketuanTerbesar {
  int x = 6;
  int y = 9;

  void hasil() {
    if (x < y) {
      for (int i = x; i > 0; i--) {
        if (x % i == 0 && y % i == 0) {
          print('jadi hasil FPB $x dan $y adalah $i');
          break;
        }
      }
    } else {
      print('x harus lebih kecil dari y');
    }
  }
}

void main() {
  var getKPK = KelipatanPersekutuanTerkecil();
  getKPK.hasil();
  print('-------------');
  var getFPB = FaktorPeseketuanTerbesar();
  getFPB.hasil();
}
