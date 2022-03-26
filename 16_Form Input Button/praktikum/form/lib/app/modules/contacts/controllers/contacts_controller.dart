import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactsController extends GetxController {
  RxList<Map<String, dynamic>> allContacts = <Map<String, dynamic>>[
    {
      'name': 'akil',
      'number': 62123,
    },
    {
      'name': 'udin',
      'number': 62444,
    },
  ].obs;

  void addContact(String name, String number) {
    if (name != '' && number != '') {
      allContacts.add({
        'name': name,
        'number': int.parse(number),
      });
      Get.snackbar(
        'Sukses',
        'Data berhasil ditambahkan',
        duration: Duration(seconds: 2),
      );
    } else {
      Get.snackbar(
        'Gagal',
        'Name atau number tidak boleh kosong',
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
        margin: EdgeInsets.all(10),
      );
    }
  }
}
