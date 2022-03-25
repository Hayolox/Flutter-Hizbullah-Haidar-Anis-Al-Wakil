import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  late String dataDetail;
  DetailPage(this.dataDetail);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akil'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(dataDetail), fit: BoxFit.cover)),
      ),
    );
  }
}
