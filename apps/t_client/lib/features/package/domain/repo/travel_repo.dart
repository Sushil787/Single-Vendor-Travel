import 'package:t_client/features/package/data/model/travel_package_model.dart';

/// Travel Repo
abstract class TravelRepo {
  /// Gets Travel Pacakge
  Stream<List<TravelPackageModel>> getTravelPackages();

  /// UpdatePacakge
  Stream<List<TravelPackageModel>> searchPackage({required String search});

  /// Add Category
  Future<void> addTravelCategory({required String category});

  /// Add Category
  Future<List<TravelPackageModel>?> getRecommended();
}
