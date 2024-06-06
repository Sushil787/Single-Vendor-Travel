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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function() getRecommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
    TResult? Function()? getRecommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function()? getRecommended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Get value) get,
    required TResult Function(GetRecommend value) getRecommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Get value)? get,
    TResult? Function(GetRecommend value)? getRecommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Get value)? get,
    TResult Function(GetRecommend value)? getRecommended,
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

class _$GetImpl with DiagnosticableTreeMixin implements Get {
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
    required TResult Function() getRecommended,
  }) {
    return get();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
    TResult? Function()? getRecommended,
  }) {
    return get?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function()? getRecommended,
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
    required TResult Function(Get value) get,
    required TResult Function(GetRecommend value) getRecommended,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Get value)? get,
    TResult? Function(GetRecommend value)? getRecommended,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Get value)? get,
    TResult Function(GetRecommend value)? getRecommended,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class Get implements TravelEvent {
  const factory Get() = _$GetImpl;
}

/// @nodoc
abstract class _$$GetRecommendImplCopyWith<$Res> {
  factory _$$GetRecommendImplCopyWith(
          _$GetRecommendImpl value, $Res Function(_$GetRecommendImpl) then) =
      __$$GetRecommendImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRecommendImplCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$GetRecommendImpl>
    implements _$$GetRecommendImplCopyWith<$Res> {
  __$$GetRecommendImplCopyWithImpl(
      _$GetRecommendImpl _value, $Res Function(_$GetRecommendImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRecommendImpl with DiagnosticableTreeMixin implements GetRecommend {
  const _$GetRecommendImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.getRecommended()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TravelEvent.getRecommended'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRecommendImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function() getRecommended,
  }) {
    return getRecommended();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
    TResult? Function()? getRecommended,
  }) {
    return getRecommended?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function()? getRecommended,
    required TResult orElse(),
  }) {
    if (getRecommended != null) {
      return getRecommended();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Get value) get,
    required TResult Function(GetRecommend value) getRecommended,
  }) {
    return getRecommended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Get value)? get,
    TResult? Function(GetRecommend value)? getRecommended,
  }) {
    return getRecommended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Get value)? get,
    TResult Function(GetRecommend value)? getRecommended,
    required TResult orElse(),
  }) {
    if (getRecommended != null) {
      return getRecommended(this);
    }
    return orElse();
  }
}

abstract class GetRecommend implements TravelEvent {
  const factory GetRecommend() = _$GetRecommendImpl;
}

/// @nodoc
mixin _$TravelPackageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(List<TravelPackageModel> packages)
        recommendedloaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(List<TravelPackageModel> packages)? recommendedloaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(List<TravelPackageModel> packages)? recommendedloaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(RecommendedTravelPackageLoaded value)
        recommendedloaded,
    required TResult Function(TravelPackageError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(RecommendedTravelPackageLoaded value)? recommendedloaded,
    TResult? Function(TravelPackageError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(RecommendedTravelPackageLoaded value)? recommendedloaded,
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
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(List<TravelPackageModel> packages)
        recommendedloaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(List<TravelPackageModel> packages)? recommendedloaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(List<TravelPackageModel> packages)? recommendedloaded,
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
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(RecommendedTravelPackageLoaded value)
        recommendedloaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(RecommendedTravelPackageLoaded value)? recommendedloaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(RecommendedTravelPackageLoaded value)? recommendedloaded,
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
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(List<TravelPackageModel> packages)
        recommendedloaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(List<TravelPackageModel> packages)? recommendedloaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(List<TravelPackageModel> packages)? recommendedloaded,
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
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(RecommendedTravelPackageLoaded value)
        recommendedloaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(RecommendedTravelPackageLoaded value)? recommendedloaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(RecommendedTravelPackageLoaded value)? recommendedloaded,
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
abstract class _$$TravelPackageLoadedImplCopyWith<$Res> {
  factory _$$TravelPackageLoadedImplCopyWith(_$TravelPackageLoadedImpl value,
          $Res Function(_$TravelPackageLoadedImpl) then) =
      __$$TravelPackageLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TravelPackageModel> packages});
}

/// @nodoc
class __$$TravelPackageLoadedImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res, _$TravelPackageLoadedImpl>
    implements _$$TravelPackageLoadedImplCopyWith<$Res> {
  __$$TravelPackageLoadedImplCopyWithImpl(_$TravelPackageLoadedImpl _value,
      $Res Function(_$TravelPackageLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
  }) {
    return _then(_$TravelPackageLoadedImpl(
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<TravelPackageModel>,
    ));
  }
}

/// @nodoc

class _$TravelPackageLoadedImpl
    with DiagnosticableTreeMixin
    implements TravelPackageLoaded {
  const _$TravelPackageLoadedImpl(
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.loaded(packages: $packages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelPackageState.loaded'))
      ..add(DiagnosticsProperty('packages', packages));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPackageLoadedImpl &&
            const DeepCollectionEquality().equals(other._packages, _packages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_packages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelPackageLoadedImplCopyWith<_$TravelPackageLoadedImpl> get copyWith =>
      __$$TravelPackageLoadedImplCopyWithImpl<_$TravelPackageLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(List<TravelPackageModel> packages)
        recommendedloaded,
    required TResult Function(String message) error,
  }) {
    return loaded(packages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(List<TravelPackageModel> packages)? recommendedloaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(packages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(List<TravelPackageModel> packages)? recommendedloaded,
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
    required TResult Function(Loading value) loading,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(RecommendedTravelPackageLoaded value)
        recommendedloaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(RecommendedTravelPackageLoaded value)? recommendedloaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(RecommendedTravelPackageLoaded value)? recommendedloaded,
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
  const factory TravelPackageLoaded(
          {required final List<TravelPackageModel> packages}) =
      _$TravelPackageLoadedImpl;

  List<TravelPackageModel> get packages;
  @JsonKey(ignore: true)
  _$$TravelPackageLoadedImplCopyWith<_$TravelPackageLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecommendedTravelPackageLoadedImplCopyWith<$Res> {
  factory _$$RecommendedTravelPackageLoadedImplCopyWith(
          _$RecommendedTravelPackageLoadedImpl value,
          $Res Function(_$RecommendedTravelPackageLoadedImpl) then) =
      __$$RecommendedTravelPackageLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TravelPackageModel> packages});
}

/// @nodoc
class __$$RecommendedTravelPackageLoadedImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res,
        _$RecommendedTravelPackageLoadedImpl>
    implements _$$RecommendedTravelPackageLoadedImplCopyWith<$Res> {
  __$$RecommendedTravelPackageLoadedImplCopyWithImpl(
      _$RecommendedTravelPackageLoadedImpl _value,
      $Res Function(_$RecommendedTravelPackageLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
  }) {
    return _then(_$RecommendedTravelPackageLoadedImpl(
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<TravelPackageModel>,
    ));
  }
}

/// @nodoc

class _$RecommendedTravelPackageLoadedImpl
    with DiagnosticableTreeMixin
    implements RecommendedTravelPackageLoaded {
  const _$RecommendedTravelPackageLoadedImpl(
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.recommendedloaded(packages: $packages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelPackageState.recommendedloaded'))
      ..add(DiagnosticsProperty('packages', packages));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedTravelPackageLoadedImpl &&
            const DeepCollectionEquality().equals(other._packages, _packages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_packages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendedTravelPackageLoadedImplCopyWith<
          _$RecommendedTravelPackageLoadedImpl>
      get copyWith => __$$RecommendedTravelPackageLoadedImplCopyWithImpl<
          _$RecommendedTravelPackageLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(List<TravelPackageModel> packages)
        recommendedloaded,
    required TResult Function(String message) error,
  }) {
    return recommendedloaded(packages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(List<TravelPackageModel> packages)? recommendedloaded,
    TResult? Function(String message)? error,
  }) {
    return recommendedloaded?.call(packages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(List<TravelPackageModel> packages)? recommendedloaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (recommendedloaded != null) {
      return recommendedloaded(packages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(RecommendedTravelPackageLoaded value)
        recommendedloaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return recommendedloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(RecommendedTravelPackageLoaded value)? recommendedloaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return recommendedloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(RecommendedTravelPackageLoaded value)? recommendedloaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) {
    if (recommendedloaded != null) {
      return recommendedloaded(this);
    }
    return orElse();
  }
}

abstract class RecommendedTravelPackageLoaded implements TravelPackageState {
  const factory RecommendedTravelPackageLoaded(
          {required final List<TravelPackageModel> packages}) =
      _$RecommendedTravelPackageLoadedImpl;

  List<TravelPackageModel> get packages;
  @JsonKey(ignore: true)
  _$$RecommendedTravelPackageLoadedImplCopyWith<
          _$RecommendedTravelPackageLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(List<TravelPackageModel> packages)
        recommendedloaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(List<TravelPackageModel> packages)? recommendedloaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(List<TravelPackageModel> packages)? recommendedloaded,
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
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(RecommendedTravelPackageLoaded value)
        recommendedloaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(RecommendedTravelPackageLoaded value)? recommendedloaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(RecommendedTravelPackageLoaded value)? recommendedloaded,
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
