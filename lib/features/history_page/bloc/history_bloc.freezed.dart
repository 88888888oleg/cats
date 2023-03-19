// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() deleteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? deleteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? deleteData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryEventInit value) init,
    required TResult Function(_HistoryEventDeleteData value) deleteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryEventInit value)? init,
    TResult? Function(_HistoryEventDeleteData value)? deleteData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryEventInit value)? init,
    TResult Function(_HistoryEventDeleteData value)? deleteData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res, HistoryEvent>;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res, $Val extends HistoryEvent>
    implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HistoryEventInitCopyWith<$Res> {
  factory _$$_HistoryEventInitCopyWith(
          _$_HistoryEventInit value, $Res Function(_$_HistoryEventInit) then) =
      __$$_HistoryEventInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HistoryEventInitCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$_HistoryEventInit>
    implements _$$_HistoryEventInitCopyWith<$Res> {
  __$$_HistoryEventInitCopyWithImpl(
      _$_HistoryEventInit _value, $Res Function(_$_HistoryEventInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HistoryEventInit extends _HistoryEventInit {
  const _$_HistoryEventInit() : super._();

  @override
  String toString() {
    return 'HistoryEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HistoryEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() deleteData,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? deleteData,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? deleteData,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryEventInit value) init,
    required TResult Function(_HistoryEventDeleteData value) deleteData,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryEventInit value)? init,
    TResult? Function(_HistoryEventDeleteData value)? deleteData,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryEventInit value)? init,
    TResult Function(_HistoryEventDeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _HistoryEventInit extends HistoryEvent {
  const factory _HistoryEventInit() = _$_HistoryEventInit;
  const _HistoryEventInit._() : super._();
}

/// @nodoc
abstract class _$$_HistoryEventDeleteDataCopyWith<$Res> {
  factory _$$_HistoryEventDeleteDataCopyWith(_$_HistoryEventDeleteData value,
          $Res Function(_$_HistoryEventDeleteData) then) =
      __$$_HistoryEventDeleteDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HistoryEventDeleteDataCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$_HistoryEventDeleteData>
    implements _$$_HistoryEventDeleteDataCopyWith<$Res> {
  __$$_HistoryEventDeleteDataCopyWithImpl(_$_HistoryEventDeleteData _value,
      $Res Function(_$_HistoryEventDeleteData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HistoryEventDeleteData extends _HistoryEventDeleteData {
  const _$_HistoryEventDeleteData() : super._();

  @override
  String toString() {
    return 'HistoryEvent.deleteData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryEventDeleteData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() deleteData,
  }) {
    return deleteData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? deleteData,
  }) {
    return deleteData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? deleteData,
    required TResult orElse(),
  }) {
    if (deleteData != null) {
      return deleteData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryEventInit value) init,
    required TResult Function(_HistoryEventDeleteData value) deleteData,
  }) {
    return deleteData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryEventInit value)? init,
    TResult? Function(_HistoryEventDeleteData value)? deleteData,
  }) {
    return deleteData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryEventInit value)? init,
    TResult Function(_HistoryEventDeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (deleteData != null) {
      return deleteData(this);
    }
    return orElse();
  }
}

abstract class _HistoryEventDeleteData extends HistoryEvent {
  const factory _HistoryEventDeleteData() = _$_HistoryEventDeleteData;
  const _HistoryEventDeleteData._() : super._();
}

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<HistoryData> historyFacts) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<HistoryData> historyFacts)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<HistoryData> historyFacts)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryStateLoading value) loading,
    required TResult Function(_HistoryStateLoaded value) loaded,
    required TResult Function(_HistoryStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryStateLoading value)? loading,
    TResult? Function(_HistoryStateLoaded value)? loaded,
    TResult? Function(_HistoryStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryStateLoading value)? loading,
    TResult Function(_HistoryStateLoaded value)? loaded,
    TResult Function(_HistoryStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HistoryStateLoadingCopyWith<$Res> {
  factory _$$_HistoryStateLoadingCopyWith(_$_HistoryStateLoading value,
          $Res Function(_$_HistoryStateLoading) then) =
      __$$_HistoryStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HistoryStateLoadingCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$_HistoryStateLoading>
    implements _$$_HistoryStateLoadingCopyWith<$Res> {
  __$$_HistoryStateLoadingCopyWithImpl(_$_HistoryStateLoading _value,
      $Res Function(_$_HistoryStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HistoryStateLoading extends _HistoryStateLoading {
  const _$_HistoryStateLoading() : super._();

  @override
  String toString() {
    return 'HistoryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HistoryStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<HistoryData> historyFacts) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<HistoryData> historyFacts)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<HistoryData> historyFacts)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryStateLoading value) loading,
    required TResult Function(_HistoryStateLoaded value) loaded,
    required TResult Function(_HistoryStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryStateLoading value)? loading,
    TResult? Function(_HistoryStateLoaded value)? loaded,
    TResult? Function(_HistoryStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryStateLoading value)? loading,
    TResult Function(_HistoryStateLoaded value)? loaded,
    TResult Function(_HistoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HistoryStateLoading extends HistoryState {
  const factory _HistoryStateLoading() = _$_HistoryStateLoading;
  const _HistoryStateLoading._() : super._();
}

/// @nodoc
abstract class _$$_HistoryStateLoadedCopyWith<$Res> {
  factory _$$_HistoryStateLoadedCopyWith(_$_HistoryStateLoaded value,
          $Res Function(_$_HistoryStateLoaded) then) =
      __$$_HistoryStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HistoryData> historyFacts});
}

/// @nodoc
class __$$_HistoryStateLoadedCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$_HistoryStateLoaded>
    implements _$$_HistoryStateLoadedCopyWith<$Res> {
  __$$_HistoryStateLoadedCopyWithImpl(
      _$_HistoryStateLoaded _value, $Res Function(_$_HistoryStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? historyFacts = null,
  }) {
    return _then(_$_HistoryStateLoaded(
      historyFacts: null == historyFacts
          ? _value._historyFacts
          : historyFacts // ignore: cast_nullable_to_non_nullable
              as List<HistoryData>,
    ));
  }
}

/// @nodoc

class _$_HistoryStateLoaded extends _HistoryStateLoaded {
  const _$_HistoryStateLoaded({required final List<HistoryData> historyFacts})
      : _historyFacts = historyFacts,
        super._();

  final List<HistoryData> _historyFacts;
  @override
  List<HistoryData> get historyFacts {
    if (_historyFacts is EqualUnmodifiableListView) return _historyFacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyFacts);
  }

  @override
  String toString() {
    return 'HistoryState.loaded(historyFacts: $historyFacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._historyFacts, _historyFacts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_historyFacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryStateLoadedCopyWith<_$_HistoryStateLoaded> get copyWith =>
      __$$_HistoryStateLoadedCopyWithImpl<_$_HistoryStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<HistoryData> historyFacts) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(historyFacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<HistoryData> historyFacts)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(historyFacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<HistoryData> historyFacts)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(historyFacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryStateLoading value) loading,
    required TResult Function(_HistoryStateLoaded value) loaded,
    required TResult Function(_HistoryStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryStateLoading value)? loading,
    TResult? Function(_HistoryStateLoaded value)? loaded,
    TResult? Function(_HistoryStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryStateLoading value)? loading,
    TResult Function(_HistoryStateLoaded value)? loaded,
    TResult Function(_HistoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _HistoryStateLoaded extends HistoryState {
  const factory _HistoryStateLoaded(
      {required final List<HistoryData> historyFacts}) = _$_HistoryStateLoaded;
  const _HistoryStateLoaded._() : super._();

  List<HistoryData> get historyFacts;
  @JsonKey(ignore: true)
  _$$_HistoryStateLoadedCopyWith<_$_HistoryStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HistoryStateErrorCopyWith<$Res> {
  factory _$$_HistoryStateErrorCopyWith(_$_HistoryStateError value,
          $Res Function(_$_HistoryStateError) then) =
      __$$_HistoryStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_HistoryStateErrorCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$_HistoryStateError>
    implements _$$_HistoryStateErrorCopyWith<$Res> {
  __$$_HistoryStateErrorCopyWithImpl(
      _$_HistoryStateError _value, $Res Function(_$_HistoryStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_HistoryStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HistoryStateError extends _HistoryStateError {
  const _$_HistoryStateError(this.error) : super._();

  @override
  final String error;

  @override
  String toString() {
    return 'HistoryState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryStateErrorCopyWith<_$_HistoryStateError> get copyWith =>
      __$$_HistoryStateErrorCopyWithImpl<_$_HistoryStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<HistoryData> historyFacts) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<HistoryData> historyFacts)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<HistoryData> historyFacts)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryStateLoading value) loading,
    required TResult Function(_HistoryStateLoaded value) loaded,
    required TResult Function(_HistoryStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryStateLoading value)? loading,
    TResult? Function(_HistoryStateLoaded value)? loaded,
    TResult? Function(_HistoryStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryStateLoading value)? loading,
    TResult Function(_HistoryStateLoaded value)? loaded,
    TResult Function(_HistoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HistoryStateError extends HistoryState {
  const factory _HistoryStateError(final String error) = _$_HistoryStateError;
  const _HistoryStateError._() : super._();

  String get error;
  @JsonKey(ignore: true)
  _$$_HistoryStateErrorCopyWith<_$_HistoryStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
