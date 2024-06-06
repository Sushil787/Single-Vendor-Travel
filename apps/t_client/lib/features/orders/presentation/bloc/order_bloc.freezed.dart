// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderPackageModel orderPackageModel) Order,
    required TResult Function() GetOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderPackageModel orderPackageModel)? Order,
    TResult? Function()? GetOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderPackageModel orderPackageModel)? Order,
    TResult Function()? GetOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakeOrder value) Order,
    required TResult Function(GetOrders value) GetOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MakeOrder value)? Order,
    TResult? Function(GetOrders value)? GetOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakeOrder value)? Order,
    TResult Function(GetOrders value)? GetOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MakeOrderImplCopyWith<$Res> {
  factory _$$MakeOrderImplCopyWith(
          _$MakeOrderImpl value, $Res Function(_$MakeOrderImpl) then) =
      __$$MakeOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderPackageModel orderPackageModel});
}

/// @nodoc
class __$$MakeOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$MakeOrderImpl>
    implements _$$MakeOrderImplCopyWith<$Res> {
  __$$MakeOrderImplCopyWithImpl(
      _$MakeOrderImpl _value, $Res Function(_$MakeOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderPackageModel = null,
  }) {
    return _then(_$MakeOrderImpl(
      orderPackageModel: null == orderPackageModel
          ? _value.orderPackageModel
          : orderPackageModel // ignore: cast_nullable_to_non_nullable
              as OrderPackageModel,
    ));
  }
}

/// @nodoc

class _$MakeOrderImpl implements MakeOrder {
  const _$MakeOrderImpl({required this.orderPackageModel});

  @override
  final OrderPackageModel orderPackageModel;

  @override
  String toString() {
    return 'OrderEvent.Order(orderPackageModel: $orderPackageModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeOrderImpl &&
            (identical(other.orderPackageModel, orderPackageModel) ||
                other.orderPackageModel == orderPackageModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderPackageModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MakeOrderImplCopyWith<_$MakeOrderImpl> get copyWith =>
      __$$MakeOrderImplCopyWithImpl<_$MakeOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderPackageModel orderPackageModel) Order,
    required TResult Function() GetOrders,
  }) {
    return Order(orderPackageModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderPackageModel orderPackageModel)? Order,
    TResult? Function()? GetOrders,
  }) {
    return Order?.call(orderPackageModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderPackageModel orderPackageModel)? Order,
    TResult Function()? GetOrders,
    required TResult orElse(),
  }) {
    if (Order != null) {
      return Order(orderPackageModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakeOrder value) Order,
    required TResult Function(GetOrders value) GetOrders,
  }) {
    return Order(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MakeOrder value)? Order,
    TResult? Function(GetOrders value)? GetOrders,
  }) {
    return Order?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakeOrder value)? Order,
    TResult Function(GetOrders value)? GetOrders,
    required TResult orElse(),
  }) {
    if (Order != null) {
      return Order(this);
    }
    return orElse();
  }
}

abstract class MakeOrder implements OrderEvent {
  const factory MakeOrder(
      {required final OrderPackageModel orderPackageModel}) = _$MakeOrderImpl;

  OrderPackageModel get orderPackageModel;
  @JsonKey(ignore: true)
  _$$MakeOrderImplCopyWith<_$MakeOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOrdersImplCopyWith<$Res> {
  factory _$$GetOrdersImplCopyWith(
          _$GetOrdersImpl value, $Res Function(_$GetOrdersImpl) then) =
      __$$GetOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrdersImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetOrdersImpl>
    implements _$$GetOrdersImplCopyWith<$Res> {
  __$$GetOrdersImplCopyWithImpl(
      _$GetOrdersImpl _value, $Res Function(_$GetOrdersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOrdersImpl implements GetOrders {
  const _$GetOrdersImpl();

  @override
  String toString() {
    return 'OrderEvent.GetOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderPackageModel orderPackageModel) Order,
    required TResult Function() GetOrders,
  }) {
    return GetOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderPackageModel orderPackageModel)? Order,
    TResult? Function()? GetOrders,
  }) {
    return GetOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderPackageModel orderPackageModel)? Order,
    TResult Function()? GetOrders,
    required TResult orElse(),
  }) {
    if (GetOrders != null) {
      return GetOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MakeOrder value) Order,
    required TResult Function(GetOrders value) GetOrders,
  }) {
    return GetOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MakeOrder value)? Order,
    TResult? Function(GetOrders value)? GetOrders,
  }) {
    return GetOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MakeOrder value)? Order,
    TResult Function(GetOrders value)? GetOrders,
    required TResult orElse(),
  }) {
    if (GetOrders != null) {
      return GetOrders(this);
    }
    return orElse();
  }
}

abstract class GetOrders implements OrderEvent {
  const factory GetOrders() = _$GetOrdersImpl;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() ordered,
    required TResult Function(String message) error,
    required TResult Function(List<OrderPackageModel> orders) orders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ordered,
    TResult? Function(String message)? error,
    TResult? Function(List<OrderPackageModel> orders)? orders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ordered,
    TResult Function(String message)? error,
    TResult Function(List<OrderPackageModel> orders)? orders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Ordered value) ordered,
    required TResult Function(Error value) error,
    required TResult Function(Orders value) orders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Ordered value)? ordered,
    TResult? Function(Error value)? error,
    TResult? Function(Orders value)? orders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Ordered value)? ordered,
    TResult Function(Error value)? error,
    TResult Function(Orders value)? orders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

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
    extends _$OrderStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'OrderState.initial()';
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
    required TResult Function() ordered,
    required TResult Function(String message) error,
    required TResult Function(List<OrderPackageModel> orders) orders,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ordered,
    TResult? Function(String message)? error,
    TResult? Function(List<OrderPackageModel> orders)? orders,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ordered,
    TResult Function(String message)? error,
    TResult Function(List<OrderPackageModel> orders)? orders,
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
    required TResult Function(Ordered value) ordered,
    required TResult Function(Error value) error,
    required TResult Function(Orders value) orders,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Ordered value)? ordered,
    TResult? Function(Error value)? error,
    TResult? Function(Orders value)? orders,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Ordered value)? ordered,
    TResult Function(Error value)? error,
    TResult Function(Orders value)? orders,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements OrderState {
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
    extends _$OrderStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'OrderState.loading()';
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
    required TResult Function() ordered,
    required TResult Function(String message) error,
    required TResult Function(List<OrderPackageModel> orders) orders,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ordered,
    TResult? Function(String message)? error,
    TResult? Function(List<OrderPackageModel> orders)? orders,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ordered,
    TResult Function(String message)? error,
    TResult Function(List<OrderPackageModel> orders)? orders,
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
    required TResult Function(Ordered value) ordered,
    required TResult Function(Error value) error,
    required TResult Function(Orders value) orders,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Ordered value)? ordered,
    TResult? Function(Error value)? error,
    TResult? Function(Orders value)? orders,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Ordered value)? ordered,
    TResult Function(Error value)? error,
    TResult Function(Orders value)? orders,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements OrderState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$OrderedImplCopyWith<$Res> {
  factory _$$OrderedImplCopyWith(
          _$OrderedImpl value, $Res Function(_$OrderedImpl) then) =
      __$$OrderedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderedImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderedImpl>
    implements _$$OrderedImplCopyWith<$Res> {
  __$$OrderedImplCopyWithImpl(
      _$OrderedImpl _value, $Res Function(_$OrderedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderedImpl implements Ordered {
  const _$OrderedImpl();

  @override
  String toString() {
    return 'OrderState.ordered()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() ordered,
    required TResult Function(String message) error,
    required TResult Function(List<OrderPackageModel> orders) orders,
  }) {
    return ordered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ordered,
    TResult? Function(String message)? error,
    TResult? Function(List<OrderPackageModel> orders)? orders,
  }) {
    return ordered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ordered,
    TResult Function(String message)? error,
    TResult Function(List<OrderPackageModel> orders)? orders,
    required TResult orElse(),
  }) {
    if (ordered != null) {
      return ordered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Ordered value) ordered,
    required TResult Function(Error value) error,
    required TResult Function(Orders value) orders,
  }) {
    return ordered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Ordered value)? ordered,
    TResult? Function(Error value)? error,
    TResult? Function(Orders value)? orders,
  }) {
    return ordered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Ordered value)? ordered,
    TResult Function(Error value)? error,
    TResult Function(Orders value)? orders,
    required TResult orElse(),
  }) {
    if (ordered != null) {
      return ordered(this);
    }
    return orElse();
  }
}

abstract class Ordered implements OrderState {
  const factory Ordered() = _$OrderedImpl;
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
    extends _$OrderStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'OrderState.error(message: $message)';
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
    required TResult Function() loading,
    required TResult Function() ordered,
    required TResult Function(String message) error,
    required TResult Function(List<OrderPackageModel> orders) orders,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ordered,
    TResult? Function(String message)? error,
    TResult? Function(List<OrderPackageModel> orders)? orders,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ordered,
    TResult Function(String message)? error,
    TResult Function(List<OrderPackageModel> orders)? orders,
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
    required TResult Function(Ordered value) ordered,
    required TResult Function(Error value) error,
    required TResult Function(Orders value) orders,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Ordered value)? ordered,
    TResult? Function(Error value)? error,
    TResult? Function(Orders value)? orders,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Ordered value)? ordered,
    TResult Function(Error value)? error,
    TResult Function(Orders value)? orders,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements OrderState {
  const factory Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrdersImplCopyWith<$Res> {
  factory _$$OrdersImplCopyWith(
          _$OrdersImpl value, $Res Function(_$OrdersImpl) then) =
      __$$OrdersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrderPackageModel> orders});
}

/// @nodoc
class __$$OrdersImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrdersImpl>
    implements _$$OrdersImplCopyWith<$Res> {
  __$$OrdersImplCopyWithImpl(
      _$OrdersImpl _value, $Res Function(_$OrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$OrdersImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderPackageModel>,
    ));
  }
}

/// @nodoc

class _$OrdersImpl implements Orders {
  const _$OrdersImpl({required final List<OrderPackageModel> orders})
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
    return 'OrderState.orders(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      __$$OrdersImplCopyWithImpl<_$OrdersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() ordered,
    required TResult Function(String message) error,
    required TResult Function(List<OrderPackageModel> orders) orders,
  }) {
    return orders(this.orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? ordered,
    TResult? Function(String message)? error,
    TResult? Function(List<OrderPackageModel> orders)? orders,
  }) {
    return orders?.call(this.orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? ordered,
    TResult Function(String message)? error,
    TResult Function(List<OrderPackageModel> orders)? orders,
    required TResult orElse(),
  }) {
    if (orders != null) {
      return orders(this.orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Ordered value) ordered,
    required TResult Function(Error value) error,
    required TResult Function(Orders value) orders,
  }) {
    return orders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Ordered value)? ordered,
    TResult? Function(Error value)? error,
    TResult? Function(Orders value)? orders,
  }) {
    return orders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Ordered value)? ordered,
    TResult Function(Error value)? error,
    TResult Function(Orders value)? orders,
    required TResult orElse(),
  }) {
    if (orders != null) {
      return orders(this);
    }
    return orElse();
  }
}

abstract class Orders implements OrderState {
  const factory Orders({required final List<OrderPackageModel> orders}) =
      _$OrdersImpl;

  List<OrderPackageModel> get orders;
  @JsonKey(ignore: true)
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
