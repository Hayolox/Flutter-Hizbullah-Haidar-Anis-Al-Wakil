import 'package:flutter/material.dart';
import 'package:flutter_statemanagement/model.dart';
import 'package:flutter_statemanagement/stores/cantact.dart';
import 'package:provider/provider.dart';

class AddContactPage extends StatelessWidget {
  const AddContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Contact contactC = Provider.of<Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Contact'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
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
                controller: contactC.nameController,
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
                controller: contactC.numberontroller,
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
                  contactC.add(
                    GetContact(
                        name: contactC.nameController.text,
                        phoneNumber: contactC.numberontroller.text),
                  );
                  print(contactC.contacts[0].name);
                },
                child: const Text('Add Contact'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
