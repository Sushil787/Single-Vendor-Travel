import 'package:t_client/features/package/data/model/travel_package_model.dart';

/// Travel Repo
abstract class TravelDataSource {
  /// Gets Travel Pacakge
  Stream<List<TravelPackageModel>> getTravelPackages();

  /// Update Pacakge
  Stream<List<TravelPackageModel>> searchPackage({required String search});


  /// Add Category
  Future<List<TravelPackageModel>> getRecommended();
}
