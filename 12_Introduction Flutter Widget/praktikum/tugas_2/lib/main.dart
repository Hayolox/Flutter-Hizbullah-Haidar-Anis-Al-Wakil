import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  var hour = DateTime.now().hour;
  var minute = DateTime.now().minute;
  var second = DateTime.now().second;

  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1), () {
      setState(() {
        hour = DateTime.now().hour;
        minute = DateTime.now().minute;
        second = DateTime.now().second;
      });
    });
    return MaterialApp(
      home: Timer(hour: hour, minute: minute, second: second),
    );
  }
}

class Timer extends StatelessWidget {
  const Timer({
    Key? key,
    required this.hour,
    required this.minute,
    required this.second,
  }) : super(key: key);

  final int hour;
  final int minute;
  final int second;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Widget || Hizbullah Haidar Anis Al Wakil'),
        ),
        body: Center(
          child: Text(
            '$hour : $minute : $second',
            style: TextStyle(fontSize: 30),
          ),
        ));
  }
}
