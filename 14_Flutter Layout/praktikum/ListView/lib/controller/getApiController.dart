import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:listview/model/userModel.dart';

class GetApiController extends GetxController {
  List<UserModel> allUser = [];

  Future getAllUser() async {
    await Future.delayed(Duration(seconds: 3));

    try {
      var response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users'),
      );
      List data = json.decode(response.body);
      data.forEach((element) {
        allUser.add(UserModel.fromJson(element));
      });
    } catch (e) {
      /// Apabila error
    }
  }
}
