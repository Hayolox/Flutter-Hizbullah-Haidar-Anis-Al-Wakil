import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:task1/screen/contact/contact_view_model.dart';

class ContactDetailScreen extends StatelessWidget {
  const ContactDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detail"),
          centerTitle: true,
        ),
        body: Consumer<ContactViewModel>(
          builder: (context, value, child) {
            if (value.state == ContactViewState.loading) {
              return Center(
                child: Lottie.network(
                    'https://assets5.lottiefiles.com/packages/lf20_os9bpC.json',
                    width: 200),
              );
            }

            if (value.state == ContactViewState.error) {
              return Center(
                child: Lottie.network(
                    'https://assets8.lottiefiles.com/packages/lf20_pNx6yH.json',
                    width: 200),
              );
            }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    value.contact.name,
                    style: const TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    value.contact.phone,
                    style: const TextStyle(fontSize: 25),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
