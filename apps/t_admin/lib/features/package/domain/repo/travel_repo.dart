import 'dart:typed_data';

import 'package:t_admin/features/package/data/model/travel_package_model.dart';

/// Travel Repo
abstract class TravelRepo {
  /// Gets Travel Pacakge
  Stream<List<TravelPackageModel>> getTravelPackages();

  /// Add Travel Pacakge
  Future<void> addTravelPacakge({
    required Uint8List vrImage,
    required List<Uint8List> images,
    required Uint8List featuredImage,
    required TravelPackageModel travelPackageModel,
  });

  /// Add Location
  Future<void> addLocation({required String location});

  /// UpdatePacakge
  Future<void> updatePacakage({
    required Uint8List vrImage,
    required List<Uint8List> images,
    required Uint8List featuredImage,
    required TravelPackageModel travelPackageModel,
  });

  /// Add Category
  Future<void> addTravelCategory({required String category});

  /// Delete Package
  Future<void> deletePackage({required String id});
}
