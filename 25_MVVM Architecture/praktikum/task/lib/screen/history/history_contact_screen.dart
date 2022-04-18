import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:task1/screen/contact/contact_view_model.dart';

class HistoryContactScreen extends StatelessWidget {
  const HistoryContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('History Contacts'),
          centerTitle: true,
        ),
        body: Consumer<ContactViewModel>(
          builder: (context, value, child) {
            return ListView.builder(
              itemCount: value.historyContacts.length,
              itemBuilder: (context, index) {
                int reversedIndex = value.historyContacts.length - 1 - index;
                String formattedDate = DateFormat('yyyy-MM-dd – kk:mm')
                    .format(value.historyContacts[reversedIndex].now);
                return ListTile(
                    title: Text(value.historyContacts[reversedIndex].name),
                    subtitle: Text(value.historyContacts[reversedIndex].phone),
                    trailing: Text(formattedDate));
              },
            );
          },
        ));
  }
}
