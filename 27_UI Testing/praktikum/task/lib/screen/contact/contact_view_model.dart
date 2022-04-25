import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:task1/model/api/contact_api.dart';
import 'package:task1/model/contact_model.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:task1/model/history_model.dart';

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

  late ContactModel _contact;
  ContactModel get contact => _contact;

  final List<HistoryModel> _historyContacts = [];
  List<HistoryModel> get historyContacts => _historyContacts;

  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  changeState(ContactViewState s) {
    _state = s;
    notifyListeners();
  }

  getAllContactApi() async {
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

  getDetailContact(int paramId) async {
    changeState(ContactViewState.loading);

    try {
      ContactModel _getDetailContact = await ContactApi().getContactId(paramId);
      _contact = _getDetailContact;
      notifyListeners();
      changeState(ContactViewState.none);
    } catch (e) {
      changeState(ContactViewState.error);
    }
  }

  void addContact(
      String paramName, String paramPhone, BuildContext context) async {
    final response = await ContactApi().addContactApi(paramName, paramPhone);
    print(response);
    _contacts.add((ContactModel.fromJson(response)));
    notifyListeners();
    nameController.clear();
    numberController.clear();
    seeDialog('Contact Berhasil Ditambahkan', DialogType.SUCCES, context);
  }

  void addHistory(
      String paramName, String paramPhone, DateTime paramNow) async {
    _historyContacts
        .add(HistoryModel(name: paramName, phone: paramPhone, now: paramNow));
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
