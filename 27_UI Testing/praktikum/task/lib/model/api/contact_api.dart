import 'package:dio/dio.dart';
import 'package:task1/model/contact_model.dart';

class ContactApi {
  final _baseUrl =
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/';

  Future<List<ContactModel>> getContactApi() async {
    final _response = await Dio().get(_baseUrl);

    if (_response.statusCode == 200) {
      List<ContactModel> _contacts = [];
      List<dynamic> _data = _response.data;
      for (var _element in _data) {
        _contacts.add(ContactModel.fromJson(_element));
      }
      return _contacts;
    } else {
      throw Exception('Gagal Get Data Contact');
    }
  }

  Future<ContactModel> getContactId(int id) async {
    final _response = await Dio().get(_baseUrl + id.toString());
    ContactModel _contact;
    final data = ContactModel.fromJson(_response.data);
    _contact = data;
    return _contact;
  }

  Future<dynamic> addContactApi(String name, String phone) async {
    final response = await Dio()
        .post(_baseUrl, data: ContactModel(name: name, phone: phone).toJson());

    return response.data;
  }
}
