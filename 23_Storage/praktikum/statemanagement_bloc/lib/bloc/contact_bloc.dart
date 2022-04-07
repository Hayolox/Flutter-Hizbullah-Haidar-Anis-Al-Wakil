import 'package:bloc/bloc.dart';
import 'package:soal_bloc/model.dart';
import 'contact_state.dart';
import 'contact_event.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(const ContactState([])) {
    on<LoadStorage>((event, emit) {
      emit(ContactState(event.getData));
    });

    on<AddContact>((event, emit) async {
      if (event.name.isEmpty && event.number.isEmpty) {
        print('name dan number tidak boeh kosong');
      } else if (event.name.isEmpty) {
        print('name name tidak boeh kosong');
      } else if (event.number.isEmpty) {
        print(' number tidak boeh kosong');
      } else {
        List<GetContact> newList = List.from(state.value)
          ..add(GetContact(name: event.name, phoneNumber: event.number));

        final SharedPreferences prefs = await SharedPreferences.getInstance();
        String encodedData = GetContact.encode(newList);
        await prefs.setString('contact_key', encodedData);
        emit(ContactState(newList));
      }
    });
  }
}
