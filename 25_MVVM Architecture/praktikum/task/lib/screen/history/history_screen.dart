import 'package:flutter/material.dart';
import 'package:flutter_statemanagement/model/history_model.dart';
import 'package:flutter_statemanagement/screen/history/history_view_model.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('History Contacts'),
          centerTitle: true,
        ),
        body: Consumer<HistoryViewModel>(
          builder: (context, provider, child) {
            return ListView.builder(
              itemCount: provider.contacts.length,
              itemBuilder: (context, index) {
                int reversedIndex = provider.contacts.length - 1 - index;
                String formattedDate = DateFormat('yyyy-MM-dd – kk:mm')
                    .format(provider.contacts[reversedIndex].now);
                return ListTile(
                    title: Text(provider.contacts[reversedIndex].name),
                    subtitle: Text(provider.contacts[reversedIndex].phone),
                    trailing: Text(formattedDate));
              },
            );
          },
        ));
  }
}
