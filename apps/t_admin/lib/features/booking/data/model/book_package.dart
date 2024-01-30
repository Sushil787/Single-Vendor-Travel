// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t_admin/core/enums/booking_enum.dart';
import 'package:uuid/uuid.dart';
part 'book_package.freezed.dart';
part 'book_package.g.dart';

/// Book Pacakge
/// Represents a booked travel package.
@freezed
class BookedTravelPackage with _$BookedTravelPackage {
  /// Default constructor for creating a booked travel package.
  factory BookedTravelPackage({
    required DateTime checkInDate,
    required DateTime checkOutDate,
    required int numberOfRooms,
    required int numberOfPersons,
    required double totalPrice,
    required String packageId,
    required String phoneNumber,
    required String userFcm,
    required String phoneNo,
    required String userName,
    @Default(BookingEnum.pending) BookingEnum bookStatus,
    @Default(false) bool isPaid,
  }) = _BookedTravelPackage;

  /// Creates a booked travel package from a JSON map.
  factory BookedTravelPackage.fromJson(Map<String, dynamic> json) =>
      _$BookedTravelPackageFromJson(json);
}
