import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/screen/food/food_view_model.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      var viewModel = Provider.of<FoodViewModel>(context, listen: false);
      await viewModel.getAllFoodApi();
    });
  }

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<FoodViewModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Food'),
          centerTitle: true,
        ),
        body: Consumer<FoodViewModel>(
          builder: (context, value, child) {
            if (value.state == FoodViewState.loading) {
              return const Center(
                child: Text('Loading.........'),
              );
            }
            if (value.state == FoodViewState.error) {
              return const Center(
                child: Text('Error.........'),
              );
            }
            return RefreshIndicator(
              onRefresh: () => viewModel.getAllFoodApi(),
              child: ListView.builder(
                itemCount: value.foods.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(value.foods[index].name),
                  );
                },
              ),
            );
          },
        ));
  }
}
