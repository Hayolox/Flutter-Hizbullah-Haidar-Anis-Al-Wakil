import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PreviewController extends GetxController {
  Rx<String> image = ''.obs;
  Rx<DateTime> date = DateTime.now().obs;
  Rx<Color> color = Color(0xff808080).obs;
  TextEditingController caption = TextEditingController();

  PreviewController({
    required this.image,
    required this.date,
    required this.color,
    required this.caption,
  });
}
