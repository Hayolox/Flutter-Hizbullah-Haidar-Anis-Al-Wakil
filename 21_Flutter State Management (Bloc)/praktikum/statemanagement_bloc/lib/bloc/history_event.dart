import 'package:equatable/equatable.dart';

abstract class HistorytEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class AddHistory extends HistorytEvent {
  final String name;
  final String number;
  final DateTime now;
  AddHistory(this.name, this.number, this.now);
}
