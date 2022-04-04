import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
        centerTitle: true,
      ),
      body: Center(
          child: GestureDetector(
        onTap: () {
          controller.isBig.toggle();
        },
        child: Obx(() => AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: controller.isBig.isFalse ? 70 : 400,
              width: controller.isBig.isFalse ? 70 : 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://picsum.photos/200/300?grayscale'),
                      fit: BoxFit.cover)),
            )),
      )),
    );
  }
}
