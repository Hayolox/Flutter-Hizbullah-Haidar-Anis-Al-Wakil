import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:task1/model/api/food_api.dart';
import 'package:task1/model/food_model.dart';

import 'food_api_test.mocks.dart';

@GenerateMocks([FoodApi])
void main() {
  FoodApi foodApi = MockFoodApi();
  group(
    'Food Api',
    () {
      test(
        'Get Food Api',
        () async {
          when(foodApi.getFoodApi()).thenAnswer((_) async => <FoodModel>[
                FoodModel(id: 1, name: 'Nasi Goreng'),
              ]);
          var foods = await FoodApi().getFoodApi();
          expect(foods.isNotEmpty, true);
        },
      );
    },
  );
}
