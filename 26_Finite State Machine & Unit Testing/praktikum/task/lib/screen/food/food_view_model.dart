import 'package:flutter/cupertino.dart';
import 'package:task1/model/api/food_api.dart';
import 'package:task1/model/food_model.dart';

enum FoodViewState {
  none,
  loading,
  error,
}

class FoodViewModel extends ChangeNotifier {
  FoodViewState _state = FoodViewState.loading;
  FoodViewState get state => _state;

  List<FoodModel> _foods = [];
  List<FoodModel> get foods => _foods;

  changeState(FoodViewState s) {
    _state = s;
    notifyListeners();
  }

  getAllFoodApi() async {
    changeState(FoodViewState.loading);

    try {
      List<FoodModel> _getFoodApi = await FoodApi().getFoodApi();
      _foods = _getFoodApi;
      notifyListeners();
      changeState(FoodViewState.none);
    } catch (e) {
      changeState(FoodViewState.error);
    }
  }
}
