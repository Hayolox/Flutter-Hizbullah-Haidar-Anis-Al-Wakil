void section7(int listData, int nilai) async {
  var nilaiLists = [listData, listData, listData];
  int hasil;

  for (var nilaiList in nilaiLists) {
    hasil = await nilaiList * nilai;
    print(hasil);
  }
}

void main() {
  section7(2, 3);
}
