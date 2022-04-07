import 'package:equatable/equatable.dart';
import 'package:soal_bloc/model.dart';

abstract class ContactEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class AddContact extends ContactEvent {
  final String name;
  final String number;
  AddContact(this.name, this.number);
}

class LoadStorage extends ContactEvent {
  final List<GetContact> getData;
  LoadStorage(this.getData);
}
