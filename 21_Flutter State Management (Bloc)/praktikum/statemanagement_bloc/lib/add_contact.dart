import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soal_bloc/bloc/contact_bloc.dart';

import 'bloc/contact_event.dart';

class addContactPage extends StatelessWidget {
  addContactPage({Key? key}) : super(key: key);
  TextEditingController nameC = TextEditingController();
  TextEditingController numberC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Contact')),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
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
                  controller: nameC,
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
                  controller: numberC,
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
                    //  var hasil =  context
                    //       .read<ContactBloc>()
                    //       .add(Validation(nameC.text, numberC.text));
                    context
                        .read<ContactBloc>()
                        .add(AddContact(nameC.text, numberC.text));
                  },
                  child: const Text('Add Contact'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
