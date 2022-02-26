import 'package:flutter/material.dart';
import 'package:section152/model/icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView | Hizbullah Haidar A A'),
        ),
        body: GridView(
          padding: const EdgeInsets.all(20),
          children: dummy.map((item) => Item(item.icon)).toList(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisExtent: 50,
              crossAxisSpacing: 60,
              mainAxisSpacing: 60),
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  final IconData icon;
  Item(this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
