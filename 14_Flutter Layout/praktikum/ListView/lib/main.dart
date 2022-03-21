import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listview/controller/getApiController.dart';
import 'package:listview/widgets/contack.dart';
import 'package:listview/widgets/skeleton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GetApiController getApi = Get.put(GetApiController());
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Listview'),
            centerTitle: true,
          ),
          body: FutureBuilder(
            future: getApi.getAllUser(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return SkeletonWidget();
              } else {
                return ListView.builder(
                  itemCount: getApi.allUser.length,
                  itemBuilder: (context, index) {
                    return ContackWidget(
                        name: getApi.allUser[index].name,
                        phone: getApi.allUser[index].phone);
                  },
                );
              }
            },
          ),
        ));
  }
}
