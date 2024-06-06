import 'package:t_client/features/package/data/model/travel_package_model.dart';

/// Travel Repo
abstract class TravelDataSource {
  /// Gets Travel Pacakge
  Stream<List<TravelPackageModel>> getTravelPackages();

  /// Update Pacakge
  Stream<List<TravelPackageModel>> searchPackage({required String search});

  /// Delete Package
  Future<void> deletePackage({required String id});

  /// Add Category
  Future<void> addTravelCategory({required String category});

  /// Add Category
  Future<List<TravelPackageModel>> getRecommended();
}
