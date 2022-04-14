import 'package:dio/dio.dart';
import 'package:task1/model/contact_model.dart';

class ContactApi {
  Future<List<ContactModel>> getContactApi() async {
    var response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/');
    if (response.statusCode == 200) {
      List<ContactModel> contacts = [];
      List<dynamic> data = response.data;
      for (var element in data) {
        contacts.add(ContactModel.fromJson(element));
      }
      return contacts;
    } else {
      throw Exception('Gagal Get Data Contact');
    }
  }
}
