import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:task1/model/api/contact_api.dart';
import 'package:task1/model/contact_model.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

enum ContactViewState {
  none,
  loading,
  error,
}

class ContactViewModel extends ChangeNotifier {
  ContactViewState _state = ContactViewState.loading;
  ContactViewState get state => _state;

  List<ContactModel> _contacts = [];
  List<ContactModel> get contacts => _contacts;

  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  changeState(ContactViewState s) {
    _state = s;
    notifyListeners();
  }

  getAllFoodApi() async {
    changeState(ContactViewState.loading);

    try {
      List<ContactModel> _getContactApi = await ContactApi().getContactApi();
      _contacts = _getContactApi;
      notifyListeners();
      changeState(ContactViewState.none);
    } catch (e) {
      changeState(ContactViewState.error);
    }
  }

  void add(String paramName, String paramPhone, BuildContext context) async {
    var response = await Dio().post(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/',
        data: ContactModel(name: paramName, phone: paramPhone).toJson());
    print(response.data);
    _contacts.add((ContactModel.fromJson(response.data)));
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
