import 'package:flutter/material.dart';
import 'package:flutter_statemanagement/add_contact.dart';
import 'package:flutter_statemanagement/stores/contact.dart';
import 'package:provider/provider.dart';

class ContackPage extends StatelessWidget {
  const ContackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var contackP = Provider.of<Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: contackP.contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contackP.contacts[index].name),
            subtitle: Text(contackP.contacts[index].phoneNumber),
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
