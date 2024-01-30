
import 'package:t_client/homes/data/model/travel_package_model.dart';

/// Travel Repo
abstract class TravelRepo {
  /// Gets Travel Pacakge
  Stream<List<TravelPackageModel>> getTravelPackages();

  /// Add Location
  Future<void> addLocation({required String location});

  /// UpdatePacakge
  Future<void> updatePacakage({required TravelPackageModel travelPackageModel});

  /// Add Category
  Future<void> addTravelCategory({required String category});
}
