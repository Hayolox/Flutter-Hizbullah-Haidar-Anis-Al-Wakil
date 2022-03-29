import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:file_picker/file_picker.dart';
import 'package:file_picker/file_picker.dart';

class HomeController extends GetxController {
  Rx<DateTime> dueDatate = DateTime.now().obs;
  final currenDate = DateTime.now().obs;
  Rx<Color> currentColor = Color(0xff808080).obs;
  TextEditingController caption = TextEditingController();
  Rx<String> fileName = ''.obs;

  void pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      PlatformFile file = result.files.first;
      fileName.value = file.path!;
      print(fileName);
    }
  }

  // void openFile(PlatformFile file) {
  //   OpenFile.open(file.path);
  // }
}
