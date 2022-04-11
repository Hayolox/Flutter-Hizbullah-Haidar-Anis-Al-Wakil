import 'package:flutter_statemanagement/model.dart';
import 'package:dio/dio.dart';

class ContactService {
  Future<List<ContactModel>> getApiContact() async {
    var response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/');
    if (response.statusCode == 200) {
      List<ContactModel> contacts = [];
      List data = response.data;
      for (var element in data) {
        contacts.add(ContactModel.fromJson(element));
      }
      return contacts;
    } else {
      throw Exception('Gagal Get Data Contact');
    }
  }
}
