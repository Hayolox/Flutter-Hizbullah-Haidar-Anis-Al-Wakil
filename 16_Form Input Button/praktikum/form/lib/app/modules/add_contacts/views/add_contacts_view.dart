import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_contacts_controller.dart';

import '../../contacts/controllers/contacts_controller.dart';

class AddContactsView extends GetView<AddContactsController> {
  final ContactsController contactC = Get.find();
  final GlobalKey<FormState> formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create News Contacts'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formGlobalKey,
            child: ListView(
              children: [
                TextFormField(
                  controller: controller.nameC,
                  validator: contactC.validationName,
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
                TextFormField(
                  controller: controller.numberC,
                  validator: contactC.validateNumber,
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
                    if (formGlobalKey.currentState!.validate()) {
                      contactC.addContact(
                          controller.nameC.text, controller.numberC.text);
                    }
                  },
                  child: Text('submit'),
                )
              ],
            ),
          ),
        ));
  }
}
