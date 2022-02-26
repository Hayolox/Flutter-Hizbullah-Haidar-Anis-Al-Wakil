import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              child: BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'Alterra Academy',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 150,
              height: 150,
              child: BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'Flutter Asik',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 150,
              height: 150,
              child: BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'Hizbullah Haidar Anis Al Wakil',
              ),
            ),
          ],
        ),
      )),
    );
  }
}
