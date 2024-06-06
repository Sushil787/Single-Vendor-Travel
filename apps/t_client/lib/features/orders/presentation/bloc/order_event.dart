part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.Order({
    required OrderPackageModel orderPackageModel,
  }) = MakeOrder;
  const factory OrderEvent.GetOrders() = GetOrders;
  const factory OrderEvent.updateOrder({
    required String status,
    required OrderPackageModel orderPackageModel,
  }) = UpdateOrders;
}
