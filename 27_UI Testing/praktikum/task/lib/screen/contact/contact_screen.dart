import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/screen/contact/contact_add_screen.dart';
import 'package:task1/screen/contact/contact_detail_screen.dart';
import 'package:task1/screen/contact/contact_view_model.dart';
import 'package:lottie/lottie.dart';
import 'package:task1/screen/history/history_contact_screen.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<ContactScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
  //     var viewModel = Provider.of<ContactViewModel>(context, listen: false);
  //     await viewModel.getAllContactApi();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const HistoryContactScreen();
                  },
                ));
              },
              child: const Icon(Icons.history_outlined),
            ),
          )
        ],
      ),
      body: Consumer<ContactViewModel>(
        builder: (context, value, child) {
          // if (value.state == ContactViewState.loading) {
          //   return Center(
          //     child: Lottie.network(
          //         'https://assets5.lottiefiles.com/packages/lf20_os9bpC.json',
          //         width: 200),
          //   );
          // }

          // if (value.state == ContactViewState.error) {
          //   return Center(
          //     child: Lottie.network(
          //         'https://assets8.lottiefiles.com/packages/lf20_pNx6yH.json',
          //         width: 200),
          //   );
          // }

          return RefreshIndicator(
            onRefresh: () => value.getAllContactApi(),
            child: ListView.builder(
              itemCount: value.contacts.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    value.getDetailContact(value.contacts[index].id!.toInt());
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const ContactDetailScreen();
                      },
                    ));
                  },
                  child: ListTile(
                      title: Text(value.contacts[index].name),
                      subtitle: Text(value.contacts[index].phone),
                      trailing: GestureDetector(
                        onTap: () {
                          value.addHistory(
                            value.contacts[index].name,
                            value.contacts[index].phone,
                            DateTime.now(),
                          );
                        },
                        child: const Icon(Icons.phone),
                      )),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return const ContactAddScreen();
            },
          ));
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
