import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/screen/contact/contact_add_screen.dart';
import 'package:task1/screen/contact/contact_view_model.dart';
import 'package:lottie/lottie.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<ContactScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      var viewModel = Provider.of<ContactViewModel>(context, listen: false);
      await viewModel.getAllFoodApi();
    });
  }

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<ContactViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food'),
        centerTitle: true,
      ),
      body: body(context, viewModel),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return ContactAddScreen();
            },
          ));
        }),
        child: Icon(Icons.add),
      ),
    );
  }

  Widget body(BuildContext context, ContactViewModel viewModel) {
    final isLoading = viewModel.state == ContactViewState.loading;
    final isError = viewModel.state == ContactViewState.error;
    if (isLoading) {
      return Center(
        child: Lottie.network(
            'https://assets5.lottiefiles.com/packages/lf20_os9bpC.json',
            width: 250),
      );
    }

    if (isError) {
      return Center(
        child: Lottie.network(
            'https://assets8.lottiefiles.com/packages/lf20_pNx6yH.json',
            width: 250),
      );
    }
    return RefreshIndicator(
      onRefresh: () => viewModel.getAllFoodApi(),
      child: ListView.builder(
        itemCount: viewModel.contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(viewModel.contacts[index].name),
            subtitle: Text(viewModel.contacts[index].phone),
          );
        },
      ),
    );
  }
}
