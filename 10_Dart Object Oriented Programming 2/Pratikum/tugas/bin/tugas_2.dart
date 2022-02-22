import 'dart:async';

class Matematika {
  void hasil() {}
}

class KelipatanPersekutuanTerkecil {
  late int x;
  late int y;

  void hasil(int paramX, int paramY) {
    x = paramX;
    y = paramY;
    while (x != y) {
      if (x > y) {
        y = paramY + y;
      } else {
        x = paramX + x;
      }
    }

    print('Jadi hasil KPK dari $paramX dan $paramY adalah $x');
  }
}

void main() {
  var getKPK = KelipatanPersekutuanTerkecil();
  getKPK.hasil(3, 7);
}
