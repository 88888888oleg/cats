part of 'find_cats_bloc.dart';

@freezed
class FindCatsState with _$FindCatsState {
  const FindCatsState._();
  const factory FindCatsState.loading() = _FindCatsStateLoading;
  const factory FindCatsState.loaded({
    required String fact,
    required String photoUrl,
  }) = _FindCatsStateLoaded;
  const factory FindCatsState.error(String error) = _FindCatsStateError;
}
