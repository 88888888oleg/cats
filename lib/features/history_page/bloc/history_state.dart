part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const HistoryState._();
  const factory HistoryState.loading() = _HistoryStateLoading;
  const factory HistoryState.loaded({
    required List<HistoryData> historyFacts,
  }) = _HistoryStateLoaded;
  const factory HistoryState.error(String error) = _HistoryStateError;
}
