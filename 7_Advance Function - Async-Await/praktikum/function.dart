void section7(List<int> listData, int nilai) async {
  for (int i = 0; i < listData.length; i++) {
    await Future.delayed(Duration(seconds: 1), () {
      int hasil = listData[i] * nilai;
      print(hasil);
    });
  }
}

void main() {
  List<int> dataPerkalian = [1, 2, 3, 4];
  section7(dataPerkalian, 3);
}
