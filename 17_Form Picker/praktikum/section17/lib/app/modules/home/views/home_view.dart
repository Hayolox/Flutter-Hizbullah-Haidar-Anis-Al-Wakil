import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:section17/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import '../../preview/controllers/preview_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Create Post'),
        ),
        drawer: Drawer(),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text(
              'Cover',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.pickFile();
              },
              child: Text('Choose File'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Publish At',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Obx(() => GestureDetector(
                  onTap: () async {
                    final selectDate = await showDatePicker(
                      context: context,
                      initialDate: controller.currenDate.value,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(controller.currenDate.value.year + 3),
                    );
                    controller.dueDatate.value = selectDate!;
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      DateFormat('dd-MM-yyy')
                          .format(controller.dueDatate.value),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Color Theme',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                Get.defaultDialog(
                  title: 'Choose Colors',
                  content: Obx(() => BlockPicker(
                      pickerColor: controller.currentColor.value,
                      onColorChanged: (color) {
                        controller.currentColor.value = color;
                      })),
                  actions: [
                    TextButton(
                        onPressed: () {
                          controller.currentColor.value = Color(0xff808080);
                          Get.back();
                        },
                        child: Text('Cancel')),
                    TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('Save')),
                  ],
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Obx(() => Text(
                      'Pick A Colors',
                      style: TextStyle(
                        color: controller.currentColor.value,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Caption',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 150,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              child: TextFormField(
                controller: controller.caption,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                var inputC = controller.caption.text;
                Get.put(
                  PreviewController(
                      image: controller.fileName,
                      date: controller.dueDatate,
                      color: controller.currentColor,
                      caption: controller.caption),
                );
                Get.toNamed(Routes.PREVIEW);
              },
              child: SizedBox(
                child: Center(
                  child: Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadiusDirectional.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Simpan',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
