import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soal_bloc/add_contact.dart';
import 'package:soal_bloc/bloc/history_bloc.dart';
import 'package:soal_bloc/bloc/history_event.dart';
import 'package:soal_bloc/bloc/history_state.dart';
import 'package:intl/intl.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History Contacts'),
        centerTitle: true,
      ),
      body: BlocBuilder<HistoryBloc, HistorytState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.value.length,
            itemBuilder: (context, index) {
              String formattedDate = DateFormat('yyyy-MM-dd – kk:mm')
                  .format(state.value[index].now);
              return ListTile(
                  title:
                      Text('${state.value[index].name} || ${formattedDate} '),
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
