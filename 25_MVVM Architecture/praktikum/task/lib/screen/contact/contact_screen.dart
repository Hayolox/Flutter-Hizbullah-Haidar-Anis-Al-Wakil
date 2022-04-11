import 'package:flutter/material.dart';
import 'package:flutter_statemanagement/screen/contact/add_contact.dart';
import 'package:flutter_statemanagement/screen/contact/contact_view_model.dart';
import 'package:flutter_statemanagement/screen/history/history_screen.dart';
import 'package:flutter_statemanagement/screen/history/history_view_model.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';

class ContackScreen extends StatelessWidget {
  ContackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final historyP = Provider.of<HistoryViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const HistoryScreen();
                  },
                ));
              },
              child: const Icon(Icons.history_outlined),
            ),
          )
        ],
      ),
      body: Consumer<ContactViewModel>(builder: (context, provider, child) {
        return FutureBuilder(
          future: provider.getContacts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Lottie.asset('assets/lottie/loading.json', width: 100),
              );
            } else {
              return ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Text(provider.contacts[index].name),
                        subtitle: Text(provider.contacts[index].phone),
                        trailing: GestureDetector(
                          onTap: () {
                            historyP.add(provider.contacts[index].name,
                                provider.contacts[index].phone, DateTime.now());
                          },
                          child: const Icon(Icons.phone),
                        ));
                  });
            }
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return const AddContactPage();
            },
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
