import 'package:get/get.dart';
import 'package:section16/app/modules/add_contacts/controllers/add_contacts_controller.dart';

import '../controllers/contacts_controller.dart';

class ContactsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactsController>(
      () => ContactsController(),
    );
    Get.lazyPut<AddContactsController>(() => AddContactsController());
  }
}
