import 'package:flutter/material.dart';

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
          title: const Text('JSON ListView in Flutter || Hizbullah Haidar A A'),
        ),
        body: ListView(
          children: [
            Content('Leanne Graham', '1-770-736-8031 x56442', 'L'),
            Content('Erwin Howell', '010-921-6593 x09125', 'E'),
            Content('Cilementine Bauch', '1-463-123-4447', 'L'),
            Content('Patricia Lebsack', '493-170-9623 x156', 'P'),
            Content('Chelsey Dietrich', '(254)954-1289', 'C'),
            Content('Mrs. Dennis Schulist', '1-447-935-8478 x6430', 'M'),
            Content('Kurtis Weisnnat', '210.607.6132', 'K'),
          ],
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  Content(this.name, this.number, this.profile);
  final String name;
  final String number;
  final String profile;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(
                profile,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                number,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
