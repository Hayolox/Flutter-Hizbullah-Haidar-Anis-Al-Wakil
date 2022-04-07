import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soal_bloc/add_contact.dart';
import 'package:soal_bloc/bloc/contact_bloc.dart';
import 'package:soal_bloc/get_storage.dart';

import 'bloc/contact_state.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
      ),
      body: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          return FutureBuilder(
            future: getStorageContact(context),
            builder: (context, snapshot) {
              return ListView.builder(
                itemCount: state.value.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.value[index].name),
                    subtitle: Text(state.value[index].phoneNumber),
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
