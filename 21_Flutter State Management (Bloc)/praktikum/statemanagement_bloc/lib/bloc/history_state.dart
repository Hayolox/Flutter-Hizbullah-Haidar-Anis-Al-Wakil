import 'package:equatable/equatable.dart';
import 'package:soal_bloc/model.dart';

class HistorytState extends Equatable {
  final List<GetHistory> value;

  const HistorytState(this.value);
  @override
  // TODO: implement props
  List<Object?> get props => [value];
}
