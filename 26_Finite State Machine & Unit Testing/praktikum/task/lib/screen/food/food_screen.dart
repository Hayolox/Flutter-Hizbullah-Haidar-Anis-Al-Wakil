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
        body: body(context, viewModel));
  }

  Widget body(BuildContext context, FoodViewModel viewModel) {
    final isLoading = viewModel.state == FoodViewState.loading;
    final isError = viewModel.state == FoodViewState.error;
    if (isLoading) {
      return const Center(
        child: Text('Loading.........'),
      );
    }

    if (isError) {
      return const Center(
        child: Text('Error.........'),
      );
    }
    return RefreshIndicator(
      onRefresh: () => viewModel.getAllFoodApi(),
      child: ListView.builder(
        itemCount: viewModel.foods.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(viewModel.foods[index].name),
          );
        },
      ),
    );
  }
}
