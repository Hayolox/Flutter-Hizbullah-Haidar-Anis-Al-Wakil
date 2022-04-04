import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:section16/app/modules/add_contacts/views/add_contacts_view.dart';
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
            Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return AddContactsView();
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                final tween = Tween(begin: 0.0, end: 1.0);
                return ScaleTransition(
                  scale: animation.drive(tween),
                  child: child,
                );
              },
            ));
          },
          child: Icon(Icons.add),
        ),
        body: Obx(() => ListView.builder(
              itemCount: controller.allContacts.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.defaultDialog(
                        title: 'Details',
                        content: Column(
                          children: [
                            Text(
                              'Gender :  ${controller.allContacts[index]['gender']}',
                            ),
                            Text(
                              'languages :  ${controller.allContacts[index]['languages']}',
                            ),
                            Text(
                              'Country :  ${controller.allContacts[index]['country']} ',
                            ),
                          ],
                        ));
                  },
                  child: ListTile(
                    title: Text(controller.allContacts[index]['name']),
                    subtitle:
                        Text('${controller.allContacts[index]['number']}'),
                  ),
                );
              },
            )));
  }
}
