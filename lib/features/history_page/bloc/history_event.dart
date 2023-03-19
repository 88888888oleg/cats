part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const HistoryEvent._();
  const factory HistoryEvent.init() = _HistoryEventInit;
  const factory HistoryEvent.deleteData() = _HistoryEventDeleteData;
}
