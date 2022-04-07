import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soal_bloc/bloc/contact_bloc.dart';
import 'package:soal_bloc/bloc/history_bloc.dart';
import 'contact_page.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider<ContactBloc>(
      create: (BuildContext context) => ContactBloc(),
    ),
    BlocProvider<HistoryBloc>(
      create: (BuildContext context) => HistoryBloc(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Akil',
      home: ContactPage(),
    );
  }
}
