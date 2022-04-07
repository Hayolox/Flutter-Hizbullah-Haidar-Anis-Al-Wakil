import 'package:bloc/bloc.dart';
import 'package:soal_bloc/bloc/history_event.dart';
import 'package:soal_bloc/bloc/history_state.dart';
import 'package:soal_bloc/model.dart';

class HistoryBloc extends Bloc<HistorytEvent, HistorytState> {
  HistoryBloc() : super(const HistorytState([])) {
    on<AddHistory>((event, emit) {
      List<GetHistory> newList = List.from(state.value)
        ..add(GetHistory(event.name, event.number, event.now));
      emit(HistorytState(newList));
    });
  }
}
