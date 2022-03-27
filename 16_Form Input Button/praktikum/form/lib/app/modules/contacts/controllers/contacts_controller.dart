import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:section16/app/modules/add_contacts/controllers/add_contacts_controller.dart';

class ContactsController extends GetxController {
  final AddContactsController addC = Get.find();
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
    allContacts.add({
      'name': name,
      'number': int.parse(number),
    });
    Get.snackbar(
      'Sukses',
      'Data berhasil ditambahkan',
      duration: Duration(seconds: 2),
    );
    addC.nameC.clear();
    addC.numberC.clear();
  }

  String? validationName(name) {
    if (name == '') {
      return 'Name Required';
    } else {
      return null;
    }
  }

  String? validateNumber(number) {
    if (number == '') {
      return 'Number Required';
    } else {
      return null;
    }
  }
}
