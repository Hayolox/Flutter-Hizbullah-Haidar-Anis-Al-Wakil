import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statemanagement/model.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Contact with ChangeNotifier {
  late List<GetContact> _contacts = [];
  List<GetContact> get contacts => _contacts;

  TextEditingController nameController = TextEditingController();
  TextEditingController numberontroller = TextEditingController();

  void add(GetContact contact, BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _contacts.add(contact);
    String encodedData = GetContact.encode(_contacts);
    await prefs.setString('contact_key', encodedData);
    notifyListeners();
    nameController.clear();
    numberontroller.clear();
    seeDialog('Contact Berhasil Ditambahkan', DialogType.SUCCES, context);
  }

  Future<void> getStorage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? contactsString = prefs.getString('contact_key');
    final List<GetContact> akil = GetContact.decode(contactsString!);
    _contacts = akil;
    notifyListeners();
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
