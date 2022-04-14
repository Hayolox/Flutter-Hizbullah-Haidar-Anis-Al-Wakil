import 'package:dio/dio.dart';
import 'package:task1/model/food_model.dart';

class FoodApi {
  Future<List<FoodModel>> getFoodApi() async {
    var response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods/');
    if (response.statusCode == 200) {
      List<FoodModel> _foods = [];
      List<dynamic> data = response.data;
      for (var element in data) {
        _foods.add(FoodModel.fromJson(element));
      }
      return _foods;
    } else {
      throw Exception('Gagal Get Data Contact');
    }
  }
}
