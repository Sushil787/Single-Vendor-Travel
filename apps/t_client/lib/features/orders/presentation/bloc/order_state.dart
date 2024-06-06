// ignore_for_file: public_member_api_docs

part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = Initial;
  const factory OrderState.loading() = Loading;
  const factory OrderState.ordered() = Ordered;
  const factory OrderState.error({required String message}) = Error;
  const factory OrderState.orders({required List<OrderPackageModel> orders}) =
      Orders;
}
