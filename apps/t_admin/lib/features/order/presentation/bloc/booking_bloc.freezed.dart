// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context,
            OrderPackageModel orderPackageModel, String status)
        updateOrder,
    required TResult Function() getBookedPackage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, OrderPackageModel orderPackageModel,
            String status)?
        updateOrder,
    TResult? Function()? getBookedPackage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, OrderPackageModel orderPackageModel,
            String status)?
        updateOrder,
    TResult Function()? getBookedPackage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) updateOrder,
    required TResult Function(Get value) getBookedPackage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? updateOrder,
    TResult? Function(Get value)? getBookedPackage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? updateOrder,
    TResult Function(Get value)? getBookedPackage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
          BookingEvent value, $Res Function(BookingEvent) then) =
      _$BookingEventCopyWithImpl<$Res, BookingEvent>;
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res, $Val extends BookingEvent>
    implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      OrderPackageModel orderPackageModel,
      String status});
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? orderPackageModel = null,
    Object? status = null,
  }) {
    return _then(_$UpdateImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      orderPackageModel: null == orderPackageModel
          ? _value.orderPackageModel
          : orderPackageModel // ignore: cast_nullable_to_non_nullable
              as OrderPackageModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(
      {required this.context,
      required this.orderPackageModel,
      required this.status});

  @override
  final BuildContext context;
  @override
  final OrderPackageModel orderPackageModel;
  @override
  final String status;

  @override
  String toString() {
    return 'BookingEvent.updateOrder(context: $context, orderPackageModel: $orderPackageModel, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.orderPackageModel, orderPackageModel) ||
                other.orderPackageModel == orderPackageModel) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, orderPackageModel, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context,
            OrderPackageModel orderPackageModel, String status)
        updateOrder,
    required TResult Function() getBookedPackage,
  }) {
    return updateOrder(context, orderPackageModel, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, OrderPackageModel orderPackageModel,
            String status)?
        updateOrder,
    TResult? Function()? getBookedPackage,
  }) {
    return updateOrder?.call(context, orderPackageModel, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, OrderPackageModel orderPackageModel,
            String status)?
        updateOrder,
    TResult Function()? getBookedPackage,
    required TResult orElse(),
  }) {
    if (updateOrder != null) {
      return updateOrder(context, orderPackageModel, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) updateOrder,
    required TResult Function(Get value) getBookedPackage,
  }) {
    return updateOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? updateOrder,
    TResult? Function(Get value)? getBookedPackage,
  }) {
    return updateOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? updateOrder,
    TResult Function(Get value)? getBookedPackage,
    required TResult orElse(),
  }) {
    if (updateOrder != null) {
      return updateOrder(this);
    }
    return orElse();
  }
}

abstract class _Update implements BookingEvent {
  const factory _Update(
      {required final BuildContext context,
      required final OrderPackageModel orderPackageModel,
      required final String status}) = _$UpdateImpl;

  BuildContext get context;
  OrderPackageModel get orderPackageModel;
  String get status;
  @JsonKey(ignore: true)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImplCopyWith<$Res> {
  factory _$$GetImplCopyWith(_$GetImpl value, $Res Function(_$GetImpl) then) =
      __$$GetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$GetImpl>
    implements _$$GetImplCopyWith<$Res> {
  __$$GetImplCopyWithImpl(_$GetImpl _value, $Res Function(_$GetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetImpl implements Get {
  const _$GetImpl();

  @override
  String toString() {
    return 'BookingEvent.getBookedPackage()';
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
    required TResult Function(BuildContext context,
            OrderPackageModel orderPackageModel, String status)
        updateOrder,
    required TResult Function() getBookedPackage,
  }) {
    return getBookedPackage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, OrderPackageModel orderPackageModel,
            String status)?
        updateOrder,
    TResult? Function()? getBookedPackage,
  }) {
    return getBookedPackage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, OrderPackageModel orderPackageModel,
            String status)?
        updateOrder,
    TResult Function()? getBookedPackage,
    required TResult orElse(),
  }) {
    if (getBookedPackage != null) {
      return getBookedPackage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) updateOrder,
    required TResult Function(Get value) getBookedPackage,
  }) {
    return getBookedPackage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? updateOrder,
    TResult? Function(Get value)? getBookedPackage,
  }) {
    return getBookedPackage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? updateOrder,
    TResult Function(Get value)? getBookedPackage,
    required TResult orElse(),
  }) {
    if (getBookedPackage != null) {
      return getBookedPackage(this);
    }
    return orElse();
  }
}

abstract class Get implements BookingEvent {
  const factory Get() = _$GetImpl;
}

/// @nodoc
mixin _$BookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<OrderPackageModel> orders) loaded,
    required TResult Function() orderUpdated,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<OrderPackageModel> orders)? loaded,
    TResult? Function()? orderUpdated,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<OrderPackageModel> orders)? loaded,
    TResult Function()? orderUpdated,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BookingLoaded value) loaded,
    required TResult Function(OrderUpdated value) orderUpdated,
    required TResult Function(BookingLoading value) loading,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BookingLoaded value)? loaded,
    TResult? Function(OrderUpdated value)? orderUpdated,
    TResult? Function(BookingLoading value)? loading,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BookingLoaded value)? loaded,
    TResult Function(OrderUpdated value)? orderUpdated,
    TResult Function(BookingLoading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

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
    extends _$BookingStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'BookingState.initial()';
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
    required TResult Function(List<OrderPackageModel> orders) loaded,
    required TResult Function() orderUpdated,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<OrderPackageModel> orders)? loaded,
    TResult? Function()? orderUpdated,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<OrderPackageModel> orders)? loaded,
    TResult Function()? orderUpdated,
    TResult Function()? loading,
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
    required TResult Function(BookingLoaded value) loaded,
    required TResult Function(OrderUpdated value) orderUpdated,
    required TResult Function(BookingLoading value) loading,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BookingLoaded value)? loaded,
    TResult? Function(OrderUpdated value)? orderUpdated,
    TResult? Function(BookingLoading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BookingLoaded value)? loaded,
    TResult Function(OrderUpdated value)? orderUpdated,
    TResult Function(BookingLoading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BookingState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$BookingLoadedImplCopyWith<$Res> {
  factory _$$BookingLoadedImplCopyWith(
          _$BookingLoadedImpl value, $Res Function(_$BookingLoadedImpl) then) =
      __$$BookingLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrderPackageModel> orders});
}

/// @nodoc
class __$$BookingLoadedImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingLoadedImpl>
    implements _$$BookingLoadedImplCopyWith<$Res> {
  __$$BookingLoadedImplCopyWithImpl(
      _$BookingLoadedImpl _value, $Res Function(_$BookingLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$BookingLoadedImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderPackageModel>,
    ));
  }
}

/// @nodoc

class _$BookingLoadedImpl implements BookingLoaded {
  const _$BookingLoadedImpl({required final List<OrderPackageModel> orders})
      : _orders = orders;

  final List<OrderPackageModel> _orders;
  @override
  List<OrderPackageModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'BookingState.loaded(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingLoadedImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingLoadedImplCopyWith<_$BookingLoadedImpl> get copyWith =>
      __$$BookingLoadedImplCopyWithImpl<_$BookingLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<OrderPackageModel> orders) loaded,
    required TResult Function() orderUpdated,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loaded(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<OrderPackageModel> orders)? loaded,
    TResult? Function()? orderUpdated,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<OrderPackageModel> orders)? loaded,
    TResult Function()? orderUpdated,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BookingLoaded value) loaded,
    required TResult Function(OrderUpdated value) orderUpdated,
    required TResult Function(BookingLoading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BookingLoaded value)? loaded,
    TResult? Function(OrderUpdated value)? orderUpdated,
    TResult? Function(BookingLoading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BookingLoaded value)? loaded,
    TResult Function(OrderUpdated value)? orderUpdated,
    TResult Function(BookingLoading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BookingLoaded implements BookingState {
  const factory BookingLoaded({required final List<OrderPackageModel> orders}) =
      _$BookingLoadedImpl;

  List<OrderPackageModel> get orders;
  @JsonKey(ignore: true)
  _$$BookingLoadedImplCopyWith<_$BookingLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderUpdatedImplCopyWith<$Res> {
  factory _$$OrderUpdatedImplCopyWith(
          _$OrderUpdatedImpl value, $Res Function(_$OrderUpdatedImpl) then) =
      __$$OrderUpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderUpdatedImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$OrderUpdatedImpl>
    implements _$$OrderUpdatedImplCopyWith<$Res> {
  __$$OrderUpdatedImplCopyWithImpl(
      _$OrderUpdatedImpl _value, $Res Function(_$OrderUpdatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderUpdatedImpl implements OrderUpdated {
  const _$OrderUpdatedImpl();

  @override
  String toString() {
    return 'BookingState.orderUpdated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderUpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<OrderPackageModel> orders) loaded,
    required TResult Function() orderUpdated,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return orderUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<OrderPackageModel> orders)? loaded,
    TResult? Function()? orderUpdated,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return orderUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<OrderPackageModel> orders)? loaded,
    TResult Function()? orderUpdated,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (orderUpdated != null) {
      return orderUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BookingLoaded value) loaded,
    required TResult Function(OrderUpdated value) orderUpdated,
    required TResult Function(BookingLoading value) loading,
    required TResult Function(Error value) error,
  }) {
    return orderUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BookingLoaded value)? loaded,
    TResult? Function(OrderUpdated value)? orderUpdated,
    TResult? Function(BookingLoading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return orderUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BookingLoaded value)? loaded,
    TResult Function(OrderUpdated value)? orderUpdated,
    TResult Function(BookingLoading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (orderUpdated != null) {
      return orderUpdated(this);
    }
    return orElse();
  }
}

abstract class OrderUpdated implements BookingState {
  const factory OrderUpdated() = _$OrderUpdatedImpl;
}

/// @nodoc
abstract class _$$BookingLoadingImplCopyWith<$Res> {
  factory _$$BookingLoadingImplCopyWith(_$BookingLoadingImpl value,
          $Res Function(_$BookingLoadingImpl) then) =
      __$$BookingLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingLoadingImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingLoadingImpl>
    implements _$$BookingLoadingImplCopyWith<$Res> {
  __$$BookingLoadingImplCopyWithImpl(
      _$BookingLoadingImpl _value, $Res Function(_$BookingLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingLoadingImpl implements BookingLoading {
  const _$BookingLoadingImpl();

  @override
  String toString() {
    return 'BookingState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookingLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<OrderPackageModel> orders) loaded,
    required TResult Function() orderUpdated,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<OrderPackageModel> orders)? loaded,
    TResult? Function()? orderUpdated,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<OrderPackageModel> orders)? loaded,
    TResult Function()? orderUpdated,
    TResult Function()? loading,
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
    required TResult Function(BookingLoaded value) loaded,
    required TResult Function(OrderUpdated value) orderUpdated,
    required TResult Function(BookingLoading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BookingLoaded value)? loaded,
    TResult? Function(OrderUpdated value)? orderUpdated,
    TResult? Function(BookingLoading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BookingLoaded value)? loaded,
    TResult Function(OrderUpdated value)? orderUpdated,
    TResult Function(BookingLoading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BookingLoading implements BookingState {
  const factory BookingLoading() = _$BookingLoadingImpl;
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
    extends _$BookingStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'BookingState.error(message: $message)';
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
    required TResult Function(List<OrderPackageModel> orders) loaded,
    required TResult Function() orderUpdated,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<OrderPackageModel> orders)? loaded,
    TResult? Function()? orderUpdated,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<OrderPackageModel> orders)? loaded,
    TResult Function()? orderUpdated,
    TResult Function()? loading,
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
    required TResult Function(BookingLoaded value) loaded,
    required TResult Function(OrderUpdated value) orderUpdated,
    required TResult Function(BookingLoading value) loading,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BookingLoaded value)? loaded,
    TResult? Function(OrderUpdated value)? orderUpdated,
    TResult? Function(BookingLoading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BookingLoaded value)? loaded,
    TResult Function(OrderUpdated value)? orderUpdated,
    TResult Function(BookingLoading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements BookingState {
  const factory Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
