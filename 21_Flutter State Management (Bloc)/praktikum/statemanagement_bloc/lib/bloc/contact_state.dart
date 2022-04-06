import 'package:equatable/equatable.dart';
import 'package:soal_bloc/model.dart';

class ContactState extends Equatable {
  final List<GetContact> value;

  const ContactState(this.value);
  @override
  // TODO: implement props
  List<Object?> get props => [value];
}
