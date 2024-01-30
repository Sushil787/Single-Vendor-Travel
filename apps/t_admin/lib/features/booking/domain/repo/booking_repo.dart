import 'package:t_admin/core/enums/booking_enum.dart';
import 'package:t_admin/features/booking/data/model/book_package.dart';

/// Booking Repo Abastract Class
abstract class BookingRepo {
  /// Gets The Booked Pacakge
  Stream<List<BookedTravelPackage>> getBookedPackage();

  /// Update Booked Pacakge
  Future<void> updateBookedPackageStatus({required BookingEnum bookingStatus});
}
