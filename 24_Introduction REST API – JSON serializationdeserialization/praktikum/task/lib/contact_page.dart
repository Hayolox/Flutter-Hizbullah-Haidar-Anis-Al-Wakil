import 'package:flutter/material.dart';
import 'package:flutter_statemanagement/add_contact.dart';
import 'package:flutter_statemanagement/stores/contact.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';

class ContackPage extends StatelessWidget {
  const ContackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
      ),
      body: Consumer<Contact>(builder: (context, provider, child) {
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
                    );
                  });
            }
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return AddContactPage();
            },
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
