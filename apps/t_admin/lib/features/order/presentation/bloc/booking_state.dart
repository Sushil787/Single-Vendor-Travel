part of 'booking_bloc.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState.initial() = Initial;

  const factory BookingState.loaded({required List<OrderPackageModel> orders}) =
      BookingLoaded;
  const factory BookingState.orderUpdated() = OrderUpdated;
  const factory BookingState.loading() = BookingLoading;
  const factory BookingState.error({required String message}) = Error;
}
