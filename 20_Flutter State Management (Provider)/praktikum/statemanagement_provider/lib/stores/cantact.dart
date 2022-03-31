import 'package:flutter/cupertino.dart';
import 'package:flutter_statemanagement/model.dart';

class Contact with ChangeNotifier {
  final List<GetContact> _contacts = [];
  List<GetContact> get contacts => _contacts;
  TextEditingController nameController = TextEditingController();
  TextEditingController numberontroller = TextEditingController();

  void add(GetContact contact) {
    _contacts.add(contact);
    notifyListeners();
    nameController.clear();
    numberontroller.clear();
  }
}
