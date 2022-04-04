import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddContactsController extends GetxController {
  TextEditingController nameC = TextEditingController();
  TextEditingController numberC = TextEditingController();

  RxString valGender = 'Male'.obs;
  RxBool valCheckbox1 = false.obs;
  RxBool valCheckbox2 = false.obs;
  RxString valCountry = ''.obs;
  RxMap mapCheckBox = new Map().obs;

  RxList<String> country = ['Indonesia', 'Thailand', 'Malaysia'].obs;

  void changeValueRadio(value) {
    if (valGender == 'Male') {
      valGender.value = value;
    } else {
      valGender.value = value;
    }
  }

  void changeValueCheckbox1() {
    if (valCheckbox1 == true) {
      valCheckbox1.toggle();
    } else {
      valCheckbox1.toggle();
    }
  }

  void changeValueCheckbox2() {
    if (valCheckbox2 == true) {
      valCheckbox2.toggle();
    } else {
      valCheckbox2.toggle();
    }
  }
}
