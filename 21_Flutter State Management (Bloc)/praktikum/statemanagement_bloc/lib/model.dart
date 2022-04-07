import 'dart:convert';

class GetContact {
  String name, phoneNumber;

  GetContact({required this.name, required this.phoneNumber});
}

class GetHistory {
  String name, phoneNumber;
  DateTime now;
  GetHistory(this.name, this.phoneNumber, this.now);
}
