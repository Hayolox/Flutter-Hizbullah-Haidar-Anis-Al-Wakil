import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/screen/contact/contact_screen.dart';
import 'package:task1/screen/contact/contact_view_model.dart';

void main() async {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ContactViewModel>(
        create: (_) => ContactViewModel(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactScreen(),
    );
  }
}
