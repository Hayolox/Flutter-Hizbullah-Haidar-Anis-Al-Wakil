import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:section_16/controllers/contact_controller.dart';
import 'package:section_16/pages/newContact.dart';

class ContactPage extends StatelessWidget {
  final getData = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Contacts'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => Newcontact());
              },
              child: const Text('Create New Contacks'),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Obx(() => ListView.builder(
                    itemCount: getData.data.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Obx(() => Text(getData.data[index]['name'])),
                      subtitle: Obx(
                          () => Text(getData.data[index]['no_hp'].toString())),
                    ),
                  )),
            ),
          ],
        ));
  }
}
