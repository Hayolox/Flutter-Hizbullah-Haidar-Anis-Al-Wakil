Future<List> section7(List LisData, int nilai) async {
  List listBaru = [];
  await Future.delayed(Duration(seconds: 3), () {
    LisData.forEach((element) {
      var hasil = element * nilai;
      listBaru.add(hasil);
    });
  });
  return listBaru;
}

void main() async {
  List dataPerkalian = [1, 2, 3, 4];
  print(await section7(dataPerkalian, 3));
}
