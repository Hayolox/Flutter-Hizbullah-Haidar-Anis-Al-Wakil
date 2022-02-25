import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget drawe() {
    return Drawer(
      child: Column(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                  left: 12,
                  top: 40,
                ),
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        image: const NetworkImage(
                          'https://picsum.photos/id/237/200/100',
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.7), BlendMode.dstATop))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: Colors.grey,
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://picsum.photos/id/3/200/100'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Hizbullah Haidar',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      '082152225555',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          ListTile(
            onTap: () {},
            title: const Text('New Group'),
            leading: const Icon(Icons.people),
          ),
          ListTile(
            onTap: () {},
            title: const Text('New Seceret Chat'),
            leading: const Icon(Icons.lock),
          ),
          ListTile(
            onTap: () {},
            title: const Text('New Channel'),
            leading: const Icon(Icons.speaker),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Contacks'),
            leading: const Icon(Icons.contact_page_sharp),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Invite Friend'),
            leading: const Icon(Icons.person_add_rounded),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Settings'),
            leading: const Icon(Icons.settings),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Telegram FAQ'),
            leading: const Icon(Icons.question_answer),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.00,
          backgroundColor: const Color(0xff55879F),
          title: const Text(
            'Telegram',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
                size: 30,
              ),
            )
          ],
        ),
        drawer: drawe(),
        body: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 5,
          ),
          child: ListView(
            children: [
              //chat pertama
              Container(
                padding: const EdgeInsets.only(left: 4),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://picsum.photos/id/7/200/100'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.people),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Press Room',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Ashley :',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Wooww Nice Mention! :',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Text(
                          '5: 54 PM',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 40),
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.green),
                          child: Center(
                            child: Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 68, top: 4),
                width: 40,
                height: 0.5,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              //chat kedua
              Container(
                padding: const EdgeInsets.only(left: 4),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 255, 171, 64),
                      ),
                      child: Center(
                        child: Text(
                          'MG',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Monika Goldsmith',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Ashley :',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Wooww Nice Mention! :',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        Icon(
                          Icons.done_all,
                          size: 20,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          '5: 54 PM',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 68, top: 4),
                width: 40,
                height: 0.5,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              //chat ketiga
              Container(
                padding: const EdgeInsets.only(left: 4),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://picsum.photos/id/7/200/100'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.lock,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Press Room',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Ashley :',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Wooww Nice Mention! :',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Text(
                            'Tue',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 68, top: 4),
                width: 40,
                height: 0.5,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xff55879F),
          child: const Center(
            child: Icon(
              Icons.mode_rounded,
            ),
          ),
        ),
      ),
    );
  }
}
