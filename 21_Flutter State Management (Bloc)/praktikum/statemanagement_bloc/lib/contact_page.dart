import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soal_bloc/add_contact.dart';
import 'package:soal_bloc/bloc/contact_bloc.dart';
import 'package:soal_bloc/bloc/history_bloc.dart';
import 'package:soal_bloc/bloc/history_event.dart';
import 'package:soal_bloc/history_page.dart';

import 'bloc/contact_state.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return HistoryPage();
                  },
                ));
              },
              child: Icon(Icons.history_outlined),
            ),
          )
        ],
      ),
      body: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.value.length,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text(state.value[index].name),
                  subtitle: Text(state.value[index].phoneNumber),
                  trailing: GestureDetector(
                    onTap: () {
                      context.read<HistoryBloc>().add(AddHistory(
                          state.value[index].name,
                          state.value[index].phoneNumber,
                          DateTime.now()));
                    },
                    child: Icon(Icons.phone),
                  ));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return addContactPage();
            },
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
