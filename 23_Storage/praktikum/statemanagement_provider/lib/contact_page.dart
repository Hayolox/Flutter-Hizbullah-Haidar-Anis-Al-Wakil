import 'package:flutter/material.dart';
import 'package:flutter_statemanagement/add_contact.dart';
import 'package:flutter_statemanagement/stores/contact.dart';
import 'package:provider/provider.dart';

class ContackPage extends StatelessWidget {
  const ContackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
      ),
      body: Consumer<Contact>(
        builder: (context, value, child) {
          return FutureBuilder(
            future: value.getStorage(),
            builder: (context, snapshot) {
              return ListView.builder(
                itemCount: value.contacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(value.contacts[index].name),
                    subtitle: Text(value.contacts[index].phoneNumber),
                  );
                },
              );
            },
          );
        },
      ),
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
