import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soal_bloc/bloc/contact_bloc.dart';
import 'contact._page.dart';

void main() {
  runApp(BlocProvider(
    create: (context) {
      return ContactBloc();
    },
    child: MyApp(),
  ));
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
