import 'package:flutter/material.dart';
import 'package:flutter_statemanagement/model.dart';
import 'package:flutter_statemanagement/stores/contact.dart';
import 'package:provider/provider.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class AddContactPage extends StatelessWidget {
  AddContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactP = Provider.of<Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Contact'),
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
                  controller: contactP.numberontroller,
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
                  onPressed: () {
                    Object kondisi = contactP.validation(
                        contactP.nameController.text,
                        contactP.numberontroller.text,
                        context);
                    if (kondisi == 'success') {
                      contactP.add(
                        GetContact(
                          name: contactP.nameController.text,
                          phoneNumber: contactP.numberontroller.text,
                        ),
                        context,
                      );
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
