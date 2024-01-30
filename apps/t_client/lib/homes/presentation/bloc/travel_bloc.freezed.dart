// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TravelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Get value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelEventCopyWith<$Res> {
  factory $TravelEventCopyWith(
          TravelEvent value, $Res Function(TravelEvent) then) =
      _$TravelEventCopyWithImpl<$Res, TravelEvent>;
}

/// @nodoc
class _$TravelEventCopyWithImpl<$Res, $Val extends TravelEvent>
    implements $TravelEventCopyWith<$Res> {
  _$TravelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetImplCopyWith<$Res> {
  factory _$$GetImplCopyWith(_$GetImpl value, $Res Function(_$GetImpl) then) =
      __$$GetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetImplCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$GetImpl>
    implements _$$GetImplCopyWith<$Res> {
  __$$GetImplCopyWithImpl(_$GetImpl _value, $Res Function(_$GetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetImpl with DiagnosticableTreeMixin implements _Get {
  const _$GetImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.get()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TravelEvent.get'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
  }) {
    return get();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
  }) {
    return get?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Get value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _Get implements TravelEvent {
  const factory _Get() = _$GetImpl;
}

/// @nodoc
mixin _$TravelPackageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelPackageStateCopyWith<$Res> {
  factory $TravelPackageStateCopyWith(
          TravelPackageState value, $Res Function(TravelPackageState) then) =
      _$TravelPackageStateCopyWithImpl<$Res, TravelPackageState>;
}

/// @nodoc
class _$TravelPackageStateCopyWithImpl<$Res, $Val extends TravelPackageState>
    implements $TravelPackageStateCopyWith<$Res> {
  _$TravelPackageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TravelPackageState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TravelPackageState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TravelPackageState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements TravelPackageState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessImpl with DiagnosticableTreeMixin implements Success {
  const _$SuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TravelPackageState.success'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements TravelPackageState {
  const factory Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$TravelPackageUpdatedImplCopyWith<$Res> {
  factory _$$TravelPackageUpdatedImplCopyWith(_$TravelPackageUpdatedImpl value,
          $Res Function(_$TravelPackageUpdatedImpl) then) =
      __$$TravelPackageUpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TravelPackageUpdatedImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res, _$TravelPackageUpdatedImpl>
    implements _$$TravelPackageUpdatedImplCopyWith<$Res> {
  __$$TravelPackageUpdatedImplCopyWithImpl(_$TravelPackageUpdatedImpl _value,
      $Res Function(_$TravelPackageUpdatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TravelPackageUpdatedImpl
    with DiagnosticableTreeMixin
    implements TravelPackageUpdated {
  const _$TravelPackageUpdatedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.updated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TravelPackageState.updated'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPackageUpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class TravelPackageUpdated implements TravelPackageState {
  const factory TravelPackageUpdated() = _$TravelPackageUpdatedImpl;
}

/// @nodoc
abstract class _$$TravelPackageDeletedImplCopyWith<$Res> {
  factory _$$TravelPackageDeletedImplCopyWith(_$TravelPackageDeletedImpl value,
          $Res Function(_$TravelPackageDeletedImpl) then) =
      __$$TravelPackageDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TravelPackageDeletedImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res, _$TravelPackageDeletedImpl>
    implements _$$TravelPackageDeletedImplCopyWith<$Res> {
  __$$TravelPackageDeletedImplCopyWithImpl(_$TravelPackageDeletedImpl _value,
      $Res Function(_$TravelPackageDeletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TravelPackageDeletedImpl
    with DiagnosticableTreeMixin
    implements TravelPackageDeleted {
  const _$TravelPackageDeletedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.deleted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TravelPackageState.deleted'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPackageDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class TravelPackageDeleted implements TravelPackageState {
  const factory TravelPackageDeleted() = _$TravelPackageDeletedImpl;
}

/// @nodoc
abstract class _$$TravelPackageLoadedImplCopyWith<$Res> {
  factory _$$TravelPackageLoadedImplCopyWith(_$TravelPackageLoadedImpl value,
          $Res Function(_$TravelPackageLoadedImpl) then) =
      __$$TravelPackageLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TravelPackageLoadedImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res, _$TravelPackageLoadedImpl>
    implements _$$TravelPackageLoadedImplCopyWith<$Res> {
  __$$TravelPackageLoadedImplCopyWithImpl(_$TravelPackageLoadedImpl _value,
      $Res Function(_$TravelPackageLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TravelPackageLoadedImpl
    with DiagnosticableTreeMixin
    implements TravelPackageLoaded {
  const _$TravelPackageLoadedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.loaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TravelPackageState.loaded'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPackageLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TravelPackageLoaded implements TravelPackageState {
  const factory TravelPackageLoaded() = _$TravelPackageLoadedImpl;
}

/// @nodoc
abstract class _$$TravelPackageErrorImplCopyWith<$Res> {
  factory _$$TravelPackageErrorImplCopyWith(_$TravelPackageErrorImpl value,
          $Res Function(_$TravelPackageErrorImpl) then) =
      __$$TravelPackageErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TravelPackageErrorImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res, _$TravelPackageErrorImpl>
    implements _$$TravelPackageErrorImplCopyWith<$Res> {
  __$$TravelPackageErrorImplCopyWithImpl(_$TravelPackageErrorImpl _value,
      $Res Function(_$TravelPackageErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TravelPackageErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TravelPackageErrorImpl
    with DiagnosticableTreeMixin
    implements TravelPackageError {
  const _$TravelPackageErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelPackageState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPackageErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelPackageErrorImplCopyWith<_$TravelPackageErrorImpl> get copyWith =>
      __$$TravelPackageErrorImplCopyWithImpl<_$TravelPackageErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TravelPackageError implements TravelPackageState {
  const factory TravelPackageError({required final String message}) =
      _$TravelPackageErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$TravelPackageErrorImplCopyWith<_$TravelPackageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
