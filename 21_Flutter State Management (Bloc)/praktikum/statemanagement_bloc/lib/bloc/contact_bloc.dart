import 'package:bloc/bloc.dart';
import 'package:soal_bloc/model.dart';
import 'contact_state.dart';
import 'contact_event.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc()
      : super(ContactState([GetContact(name: 'Akil', phoneNumber: '5555')])) {
    on<AddContact>((event, emit) {
      if (event.name.isEmpty && event.number.isEmpty) {
        print('name dan number tidak boeh kosong');
      } else if (event.name.isEmpty) {
        print('name name tidak boeh kosong');
      } else if (event.number.isEmpty) {
        print(' number tidak boeh kosong');
      } else {
        List<GetContact> newList = List.from(state.value)
          ..add(GetContact(name: event.name, phoneNumber: event.number));
        emit(ContactState(newList));
      }
    });
  }
}
