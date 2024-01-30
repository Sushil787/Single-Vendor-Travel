


import 'package:injectable/injectable.dart';
import 'package:t_admin/core/enums/booking_enum.dart';
import 'package:t_admin/features/booking/data/model/book_package.dart';
import 'package:t_admin/features/booking/domain/repo/booking_repo.dart';

/// Package Booking Repo
@Injectable(as: BookingRepo)
class BookingRepoImpl implements BookingRepo{
  
  @override
  Stream<List<BookedTravelPackage>> getBookedPackage() {
    // TODO: implement getBookedPackage
    throw UnimplementedError();
  }

  @override
  Future<void> updateBookedPackageStatus({required BookingEnum bookingStatus}) {
    // TODO: implement updateBookedPackageStatus
    throw UnimplementedError();
  }

}