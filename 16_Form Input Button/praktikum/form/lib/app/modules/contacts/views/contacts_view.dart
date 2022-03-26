import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:section16/app/routes/app_pages.dart';

import '../controllers/contacts_controller.dart';

class ContactsView extends GetView<ContactsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contacts'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(Routes.ADD_CONTACTS);
          },
          child: Icon(Icons.add),
        ),
        body: Obx(() => ListView.builder(
              itemCount: controller.allContacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(controller.allContacts[index]['name']),
                  subtitle: Text('${controller.allContacts[index]['number']}'),
                );
              },
            )));
  }
}
