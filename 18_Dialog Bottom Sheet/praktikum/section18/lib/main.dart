import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hizbullah Hadidar Anis Al Wakil'),
          centerTitle: false,
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: 10,
            itemBuilder: (BuildContext ctx, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                      Container(
                        height: 300,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                        ),
                        child: Center(
                          child: CircleAvatar(
                            maxRadius: 100,
                            backgroundImage: NetworkImage(
                                'https://picsum.photos/id/${index + 37}/100/100'),
                          ),
                        ),
                      ),
                    );
                  },
                  onDoubleTap: () {
                    Get.defaultDialog(
                        title: 'Akil',
                        content: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://picsum.photos/id/${index + 37}/100/100'),
                          maxRadius: 100,
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://picsum.photos/id/${index + 37}/70/70'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
