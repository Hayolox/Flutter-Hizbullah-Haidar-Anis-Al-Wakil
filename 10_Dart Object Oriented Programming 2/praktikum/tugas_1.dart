class BangungRuang {
  // Variable global yang dimana masih belum mememiliki nilai
  late double panjang;
  late double lebar;
  late double tinggi;

  //Function volume yang dimana variable global sudah memiliki nilai
  void volume(double paramPanjang, double paramLebar, double paramTinggi) {
    panjang = paramPanjang;
    lebar = paramLebar;
    tinggi = paramTinggi;
  }
}

//Function kubus, disini rumus untuk menghitung kubus
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

//Fucntion balok yang dimana pada function ini berisi rumus perhitungan kubus
class Balok extends BangungRuang {
  @override
  void volume(double paramPanjang, double paramLebar, double paramTinggi) {
    double hasil = paramPanjang * paramLebar * paramTinggi;
    print(hasil);
  }
}

void main() {
  var getKubus = Kubus();
  getKubus.hitungKubus(4);

  var getBalok = Balok();
  getBalok.volume(3, 4, 5);

  // @override
  // var getBalok = Balok();
  // getBalok.volume(3, 3, 3);
  // getBalok.hitungBalok();
}
