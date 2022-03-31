import 'package:flutter/material.dart';
import 'package:flutter_statemanagement/contact_page.dart';
import 'package:flutter_statemanagement/stores/cantact.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => Contact(),
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
      title: 'Flutter State Management',
      home: ContackPage(),
    );
  }
}
