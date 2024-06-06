import 'package:t_admin/features/order/data/model/order_package_model.dart';

/// Booking Repo Abastract Class
abstract class BookingRepo {
  /// Gets The Booked Pacakge
  Stream<List<OrderPackageModel>> getBookedPackage();

  /// Update Booked Pacakge
  Future<void> updateBookedPackageStatus({
    required String status,
    required OrderPackageModel orderPackageModel,
  });
}
