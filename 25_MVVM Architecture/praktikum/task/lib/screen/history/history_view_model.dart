import 'package:flutter/cupertino.dart';
import 'package:flutter_statemanagement/model/history_model.dart';

class HistoryViewModel extends ChangeNotifier {
  final List<HistoryModel> _contacts = [];
  List<HistoryModel> get contacts => _contacts;

  void add(String paramName, String paramPhone, DateTime paramNow) async {
    _contacts
        .add(HistoryModel(name: paramName, phone: paramPhone, now: paramNow));
    notifyListeners();
  }
}
