// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommend_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecommendEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() recommend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? recommend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? recommend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Recommend value) recommend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Recommend value)? recommend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Recommend value)? recommend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendEventCopyWith<$Res> {
  factory $RecommendEventCopyWith(
          RecommendEvent value, $Res Function(RecommendEvent) then) =
      _$RecommendEventCopyWithImpl<$Res, RecommendEvent>;
}

/// @nodoc
class _$RecommendEventCopyWithImpl<$Res, $Val extends RecommendEvent>
    implements $RecommendEventCopyWith<$Res> {
  _$RecommendEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecommendImplCopyWith<$Res> {
  factory _$$RecommendImplCopyWith(
          _$RecommendImpl value, $Res Function(_$RecommendImpl) then) =
      __$$RecommendImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecommendImplCopyWithImpl<$Res>
    extends _$RecommendEventCopyWithImpl<$Res, _$RecommendImpl>
    implements _$$RecommendImplCopyWith<$Res> {
  __$$RecommendImplCopyWithImpl(
      _$RecommendImpl _value, $Res Function(_$RecommendImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecommendImpl implements Recommend {
  const _$RecommendImpl();

  @override
  String toString() {
    return 'RecommendEvent.recommend()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecommendImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() recommend,
  }) {
    return recommend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? recommend,
  }) {
    return recommend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? recommend,
    required TResult orElse(),
  }) {
    if (recommend != null) {
      return recommend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Recommend value) recommend,
  }) {
    return recommend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Recommend value)? recommend,
  }) {
    return recommend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Recommend value)? recommend,
    required TResult orElse(),
  }) {
    if (recommend != null) {
      return recommend(this);
    }
    return orElse();
  }
}

abstract class Recommend implements RecommendEvent {
  const factory Recommend() = _$RecommendImpl;
}

/// @nodoc
mixin _$RecommendState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() recommendLoading,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? recommendLoading,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? recommendLoading,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RecommendLoading value) recommendLoading,
    required TResult Function(RecommendLoaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RecommendLoading value)? recommendLoading,
    TResult? Function(RecommendLoaded value)? loaded,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RecommendLoading value)? recommendLoading,
    TResult Function(RecommendLoaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendStateCopyWith<$Res> {
  factory $RecommendStateCopyWith(
          RecommendState value, $Res Function(RecommendState) then) =
      _$RecommendStateCopyWithImpl<$Res, RecommendState>;
}

/// @nodoc
class _$RecommendStateCopyWithImpl<$Res, $Val extends RecommendState>
    implements $RecommendStateCopyWith<$Res> {
  _$RecommendStateCopyWithImpl(this._value, this._then);

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
    extends _$RecommendStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RecommendState.initial()';
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
    required TResult Function() recommendLoading,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? recommendLoading,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? recommendLoading,
    TResult Function(List<TravelPackageModel> packages)? loaded,
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
    required TResult Function(RecommendLoading value) recommendLoading,
    required TResult Function(RecommendLoaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RecommendLoading value)? recommendLoading,
    TResult? Function(RecommendLoaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RecommendLoading value)? recommendLoading,
    TResult Function(RecommendLoaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RecommendState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RecommendLoadingImplCopyWith<$Res> {
  factory _$$RecommendLoadingImplCopyWith(_$RecommendLoadingImpl value,
          $Res Function(_$RecommendLoadingImpl) then) =
      __$$RecommendLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecommendLoadingImplCopyWithImpl<$Res>
    extends _$RecommendStateCopyWithImpl<$Res, _$RecommendLoadingImpl>
    implements _$$RecommendLoadingImplCopyWith<$Res> {
  __$$RecommendLoadingImplCopyWithImpl(_$RecommendLoadingImpl _value,
      $Res Function(_$RecommendLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecommendLoadingImpl implements RecommendLoading {
  const _$RecommendLoadingImpl();

  @override
  String toString() {
    return 'RecommendState.recommendLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecommendLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() recommendLoading,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(String message) error,
  }) {
    return recommendLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? recommendLoading,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return recommendLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? recommendLoading,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (recommendLoading != null) {
      return recommendLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RecommendLoading value) recommendLoading,
    required TResult Function(RecommendLoaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return recommendLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RecommendLoading value)? recommendLoading,
    TResult? Function(RecommendLoaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return recommendLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RecommendLoading value)? recommendLoading,
    TResult Function(RecommendLoaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (recommendLoading != null) {
      return recommendLoading(this);
    }
    return orElse();
  }
}

abstract class RecommendLoading implements RecommendState {
  const factory RecommendLoading() = _$RecommendLoadingImpl;
}

/// @nodoc
abstract class _$$RecommendLoadedImplCopyWith<$Res> {
  factory _$$RecommendLoadedImplCopyWith(_$RecommendLoadedImpl value,
          $Res Function(_$RecommendLoadedImpl) then) =
      __$$RecommendLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TravelPackageModel> packages});
}

/// @nodoc
class __$$RecommendLoadedImplCopyWithImpl<$Res>
    extends _$RecommendStateCopyWithImpl<$Res, _$RecommendLoadedImpl>
    implements _$$RecommendLoadedImplCopyWith<$Res> {
  __$$RecommendLoadedImplCopyWithImpl(
      _$RecommendLoadedImpl _value, $Res Function(_$RecommendLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
  }) {
    return _then(_$RecommendLoadedImpl(
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<TravelPackageModel>,
    ));
  }
}

/// @nodoc

class _$RecommendLoadedImpl implements RecommendLoaded {
  const _$RecommendLoadedImpl(
      {required final List<TravelPackageModel> packages})
      : _packages = packages;

  final List<TravelPackageModel> _packages;
  @override
  List<TravelPackageModel> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  @override
  String toString() {
    return 'RecommendState.loaded(packages: $packages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendLoadedImpl &&
            const DeepCollectionEquality().equals(other._packages, _packages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_packages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendLoadedImplCopyWith<_$RecommendLoadedImpl> get copyWith =>
      __$$RecommendLoadedImplCopyWithImpl<_$RecommendLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() recommendLoading,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(packages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? recommendLoading,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(packages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? recommendLoading,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(packages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RecommendLoading value) recommendLoading,
    required TResult Function(RecommendLoaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RecommendLoading value)? recommendLoading,
    TResult? Function(RecommendLoaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RecommendLoading value)? recommendLoading,
    TResult Function(RecommendLoaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RecommendLoaded implements RecommendState {
  const factory RecommendLoaded(
          {required final List<TravelPackageModel> packages}) =
      _$RecommendLoadedImpl;

  List<TravelPackageModel> get packages;
  @JsonKey(ignore: true)
  _$$RecommendLoadedImplCopyWith<_$RecommendLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RecommendStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RecommendState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() recommendLoading,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? recommendLoading,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? recommendLoading,
    TResult Function(List<TravelPackageModel> packages)? loaded,
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
    required TResult Function(RecommendLoading value) recommendLoading,
    required TResult Function(RecommendLoaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(RecommendLoading value)? recommendLoading,
    TResult? Function(RecommendLoaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RecommendLoading value)? recommendLoading,
    TResult Function(RecommendLoaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements RecommendState {
  const factory Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
