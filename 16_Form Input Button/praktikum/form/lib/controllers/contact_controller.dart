import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {
  List data = [
    {
      'name': 'akil',
      'no_hp': 628122222,
    },
    {
      'name': 'Udin',
      'no_hp': 62833333,
    },
    {
      'name': 'samsudin',
      'no_hp': 6284411111,
    }
  ].obs;

  TextEditingController nameC = TextEditingController();
  TextEditingController nomorC = TextEditingController();

  void addData() async {
    if (nameC.text != '' && nomorC.text != '') {
      data.add({
        'name': nameC.text,
        'no_hp': int.parse(nomorC.text),
      });

      Get.snackbar(
        'Success',
        'Contack Berhasil Ditambahkan',
        margin: const EdgeInsets.only(
          top: 50,
          right: 25,
          left: 25,
        ),
      );
    } else {
      Get.snackbar(
        'Gagal',
        'Nama atau Nomor tidak boleh kosong',
        backgroundColor: Colors.red,
        margin: const EdgeInsets.only(
          top: 50,
          right: 25,
          left: 25,
        ),
      );
    }
  }
}
