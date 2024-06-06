part of 'booking_bloc.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.updateOrder({
   required BuildContext context,
    required OrderPackageModel orderPackageModel,
    required String status,
  }) = _Update;

  const factory BookingEvent.getBookedPackage() = Get;
}

