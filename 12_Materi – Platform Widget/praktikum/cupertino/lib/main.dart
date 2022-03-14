import 'package:cupertino/pages/detail.dart';
import 'package:cupertino/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './widgets/AppbarContent.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int Currentindex = 0;
    late bool activ = false;
    Widget header() {
      return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        color: const Color(0xffF6F6F6),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    'Chats',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Icon(
                    Icons.create,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            CupertinoSearchTextField(
              prefixInsets: const EdgeInsets.only(left: 150.0),
              onChanged: (String value) {
                print('The text has changed to: $value');
              },
              onSubmitted: (String value) {
                print('Submitted text: $value');
              },
            ),
            const SizedBox(
              height: 7,
            ),
          ],
        ),
      );
    }

    Widget tabBar() {
      return Container(
        padding: const EdgeInsets.only(bottom: 15),
        color: const Color(0xffF6F6F6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  // Currentindex = 0;
                  // activ = true;
                  // print(Currentindex);
                });
              },
              child: appBarContent('All chat', 0, activ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // Currentindex = 1;
                  // activ = true;
                  // print(activ);
                  // print(Currentindex);
                });
              },
              child: appBarContent('work', 1, activ),
            ),
            GestureDetector(
              onTap: () {
                Currentindex = 2;
              },
              child: appBarContent('Unread', 9, true),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // Currentindex = 3;
                  // activ = true;
                  // print(activ);
                });
              },
              child: appBarContent('Personal', 2, activ),
            ),
          ],
        ),
      );
    }

    List content = [
      const Home(),
      const Detail(),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              tabBar(),
              Expanded(
                child: CupertinoTabScaffold(
                  tabBar: CupertinoTabBar(
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.people_alt_sharp), label: 'Contack'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.call), label: 'Call'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.chat_outlined), label: 'Chats'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.settings), label: 'Chats')
                    ],
                  ),
                  tabBuilder: (BuildContext context, int index) {
                    print(index);
                    return content[index];
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
