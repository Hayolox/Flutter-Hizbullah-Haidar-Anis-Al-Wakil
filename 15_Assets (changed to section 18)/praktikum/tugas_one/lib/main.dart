import 'package:flutter/material.dart';
import 'package:tugas_one/detailPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List listImage = [
    'https://picsum.photos/seed/picsum/1000/1000',
    'https://picsum.photos/id/237/1000/1000',
    'https://picsum.photos/200/300?grayscale',
    'https://picsum.photos/200/300?random=1',
    'https://picsum.photos/200/300?random=1',
    'https://picsum.photos/200/300?random=2',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Taks 15 | Hizbullah A A'),
            centerTitle: true,
          ),
          body: Home(data: listImage)),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List data;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: data.length,
        itemBuilder: (BuildContext ctx, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return DetailPage(data[index]);
                },
              ));
            },
            child: Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: NetworkImage(data[index]),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15)),
            ),
          );
        });
  }
}
