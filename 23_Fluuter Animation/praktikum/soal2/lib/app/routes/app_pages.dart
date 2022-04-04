import 'package:get/get.dart';

import 'package:section16/app/modules/add_contacts/bindings/add_contacts_binding.dart';
import 'package:section16/app/modules/add_contacts/views/add_contacts_view.dart';
import 'package:section16/app/modules/contacts/bindings/contacts_binding.dart';
import 'package:section16/app/modules/contacts/views/contacts_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CONTACTS;

  static final routes = [
    GetPage(
      name: _Paths.CONTACTS,
      page: () => ContactsView(),
      binding: ContactsBinding(),
    ),
    GetPage(
      name: _Paths.ADD_CONTACTS,
      page: () => AddContactsView(),
      binding: AddContactsBinding(),
    ),
  ];
}
