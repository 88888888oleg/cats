part of 'find_cats_bloc.dart';

@freezed
class FindCatsEvent with _$FindCatsEvent {
  const FindCatsEvent._();
  const factory FindCatsEvent.init() = _FindCatsEventInit;
  const factory FindCatsEvent.addSearch() = _FindCatsEventAddSearch;
}