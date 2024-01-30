import 'package:t_client/homes/data/model/travel_package_model.dart';

/// Travel Repo
abstract class TravelDataSource {
  /// Gets Travel Pacakge
  Stream<List<TravelPackageModel>> getTravelPackages();

  /// Add Location
  Future<void> addLocation({required String location});

  /// Update Pacakge
  Future<void> updatePacakage({required TravelPackageModel travelPackageModel});

  /// Delete Package
  Future<void> deletePackage({required String id});

  /// Add Category
  Future<void> addTravelCategory({required String category});
}
