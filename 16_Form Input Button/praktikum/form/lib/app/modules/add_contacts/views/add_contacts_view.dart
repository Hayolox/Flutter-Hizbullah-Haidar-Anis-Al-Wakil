import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_contacts_controller.dart';

import '../../contacts/controllers/contacts_controller.dart';

class AddContactsView extends GetView<AddContactsController> {
  final ContactsController contactC = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create News Contacts'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              TextField(
                controller: controller.nameC,
                autocorrect: false,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: controller.numberC,
                autocorrect: false,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  labelText: 'Number',
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  contactC.addContact(
                      controller.nameC.text, controller.numberC.text);
                },
                child: Text('submit'),
              )
            ],
          ),
        ));
  }
}
