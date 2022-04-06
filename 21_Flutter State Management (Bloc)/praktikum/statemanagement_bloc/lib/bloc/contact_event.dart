import 'package:equatable/equatable.dart';

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
