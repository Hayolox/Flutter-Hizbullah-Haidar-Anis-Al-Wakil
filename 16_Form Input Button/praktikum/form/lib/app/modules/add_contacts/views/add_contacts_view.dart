// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_contacts_controller.dart';

import '../../contacts/controllers/contacts_controller.dart';

import 'package:dropdown_search/dropdown_search.dart';

class AddContactsView extends GetView<AddContactsController> {
  final ContactsController contactC = Get.find();
  final GlobalKey<FormState> _formGlobalKey = GlobalKey<FormState>();

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
            key: _formGlobalKey,
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
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Choose Gender',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Obx(() => RadioListTile(
                    value: 'Male',
                    title: Text('Male'),
                    groupValue: controller.valGender.value,
                    onChanged: (val) {
                      controller.changeValueRadio(val);
                    })),
                Obx(() => RadioListTile(
                    value: 'Female',
                    title: Text('Female'),
                    groupValue: controller.valGender.value,
                    onChanged: (val) {
                      controller.changeValueRadio(val);
                    })),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Choose Status',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Obx(() => CheckboxListTile(
                    title: Text('Inggris'),
                    value: controller.valCheckbox1.value,
                    onChanged: (val) {
                      controller.changeValueCheckbox1();
                      if (controller.valCheckbox1.value == true) {
                        controller.mapCheckBox['Inggris'] = true;
                      } else {
                        controller.mapCheckBox.remove('Inggris');
                      }
                      print(controller.mapCheckBox.value);
                    })),
                Obx(() => CheckboxListTile(
                    title: Text('Indonesia'),
                    value: controller.valCheckbox2.value,
                    onChanged: (val) {
                      controller.changeValueCheckbox2();
                      if (controller.valCheckbox2.value == true) {
                        controller.mapCheckBox['Indonesia'] = true;
                      } else {
                        controller.mapCheckBox.remove('Indonesia');
                      }
                      print(controller.mapCheckBox.value);
                    })),
                Obx(() => DropdownSearch<String>(
                      mode: Mode.MENU,
                      dropdownSearchDecoration:
                          InputDecoration(hintText: 'Choose your Country'),
                      items: controller.country.value,
                      validator: contactC.validateChooseCountry,
                      onChanged: (value) {
                        controller.valCountry.value = '$value';
                      },
                    )),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    if (_formGlobalKey.currentState!.validate()) {
                      contactC.addContact(
                        controller.nameC.text,
                        controller.numberC.text,
                        controller.valGender.value,
                        controller.mapCheckBox.value,
                        controller.valCountry.value,
                      );
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
