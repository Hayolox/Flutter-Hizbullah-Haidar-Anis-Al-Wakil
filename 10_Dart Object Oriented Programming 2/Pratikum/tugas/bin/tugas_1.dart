class BangungRuang {
  late double panjang;
  late double lebar;
  late double tinggi;

  void volume(double paramPanjang, double paramLebar, double paramTinggi) {
    panjang = paramPanjang;
    lebar = paramLebar;
    tinggi = paramTinggi;
  }
}

class Kubus extends BangungRuang {
  double sisi = 0;

  void hitungKubus(double paramSisis) {
    sisi = paramSisis;
    var hasil = sisi * sisi * sisi;
    print('---------Kubus----------');
    print('');
    print(hasil);
  }
}

class Balok extends BangungRuang {
  void hitungBalok() {
    double hasil = panjang * lebar * tinggi;

    print('---------Balok----------');
    print('');
    print(hasil);
  }
}

void main() {
  @override
  var getKubus = Kubus();
  getKubus.hitungKubus(4);

  @override
  var getBalok = Balok();
  getBalok.volume(3, 3, 3);
  getBalok.hitungBalok();
}
