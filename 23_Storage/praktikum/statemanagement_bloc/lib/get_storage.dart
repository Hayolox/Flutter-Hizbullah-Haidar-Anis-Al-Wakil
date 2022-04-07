import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:soal_bloc/bloc/contact_bloc.dart';
import 'package:soal_bloc/model.dart';

import 'bloc/contact_event.dart';

Future<void> getStorageContact(BuildContext context) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? contactsString = prefs.getString('contact_key');
  final List<GetContact> akil = GetContact.decode(contactsString!);
  context.read<ContactBloc>().add(LoadStorage(akil));
}
