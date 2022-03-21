import 'package:flutter/material.dart';

class ContackWidget extends StatelessWidget {
  String name;
  String phone;

  ContackWidget({required this.name, required this.phone});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          child: Center(
        child: Text(name.substring(0, 1).toUpperCase()),
      )),
      title: Text(name),
      subtitle: Text(phone),
    );
  }
}
