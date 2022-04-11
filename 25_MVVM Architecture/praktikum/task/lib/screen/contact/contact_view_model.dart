import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statemanagement/model/contact_model.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dio/dio.dart';
import 'package:flutter_statemanagement/model/api/contact_api.dart';

class ContactViewModel with ChangeNotifier {
  List<ContactModel> _contacts = [];
  List<ContactModel> get contacts => _contacts;
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  Future<void> getContacts() async {
    try {
      List<ContactModel> dataContacts = await ContactApi().getApiContact();
      _contacts = dataContacts;
    } catch (e) {
      //  error
    }
  }

  void add(String paramName, String paramPhone, BuildContext context) async {
    var response = await Dio().post(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/',
        data: {"name": paramName, "phone": paramPhone});
    print(response.data);
    notifyListeners();
    nameController.clear();
    numberController.clear();
    seeDialog('Contact Berhasil Ditambahkan', DialogType.SUCCES, context);
  }

  Object validation(String name, String number, BuildContext context) {
    if (name.isEmpty && number.isEmpty) {
      return seeDialog(
          'Name & Number  tidak boleh kosong', DialogType.ERROR, context);
    } else if (name.isEmpty) {
      return seeDialog('Name  tidak boleh kosong', DialogType.ERROR, context);
    } else if (number.isEmpty) {
      return seeDialog('Number  tidak boleh kosong', DialogType.ERROR, context);
    } else {
      return 'success';
    }
  }

  AwesomeDialog seeDialog(
      String desc, DialogType dialogType, BuildContext context) {
    return AwesomeDialog(
        context: context,
        animType: AnimType.SCALE,
        dialogType: dialogType,
        desc: desc,
        btnOkOnPress: () {})
      ..show();
  }
}
