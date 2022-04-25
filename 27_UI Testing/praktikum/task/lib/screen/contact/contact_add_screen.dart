import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:task1/screen/contact/contact_view_model.dart';

class ContactAddScreen extends StatelessWidget {
  const ContactAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactP = Provider.of<ContactViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddContact'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Name'),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  key: const Key("name"),
                  controller: contactP.nameController,
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Number'),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: contactP.numberController,
                  key: const Key("number"),
                  autocorrect: false,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                  key: const Key("add"),
                  onPressed: () {
                    Object kondisi = contactP.validation(
                        contactP.nameController.text,
                        contactP.numberController.text,
                        context);
                    if (kondisi == 'success') {
                      contactP.addContact(contactP.nameController.text,
                          contactP.numberController.text, context);
                    }
                  },
                  child: const Text('Add Contact'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
