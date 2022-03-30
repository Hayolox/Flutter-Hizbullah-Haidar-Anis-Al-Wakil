import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:section16/app/modules/add_contacts/controllers/add_contacts_controller.dart';

class ContactsController extends GetxController {
  final AddContactsController addC = Get.find();
  RxList<Map<String, dynamic>> allContacts = <Map<String, dynamic>>[
    {
      'name': 'akil',
      'number': 62123,
      'gender': 'Male',
      'languages': {'Indenesia': true},
      'country': 'Indonesia'
    },
    {
      'name': 'udin',
      'number': 62444,
      'gender': 'Female',
      'languages': {'Inggris': true},
      'country': 'Thailand'
    },
  ].obs;

  void addContact(
    String name,
    String number,
    String gender,
    Map languages,
    String country,
  ) {
    allContacts.add({
      'name': name,
      'number': int.parse(number),
      'gender': gender,
      'languages': languages,
      'country': country
    });
    Get.snackbar(
      'Sukses',
      'Data berhasil ditambahkan',
      duration: Duration(seconds: 2),
    );
    addC.nameC.clear();
    addC.numberC.clear();

    print(allContacts);
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

  String? validateChooseCountry(country) {
    if (country == '') {
      return 'Country Required';
    } else {
      return null;
    }
  }
}
