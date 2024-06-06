import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/features/package/data/model/travel_package_model.dart';
import 'package:t_admin/features/package/domain/repo/package_data_source.dart';
import 'package:t_admin/features/package/domain/repo/travel_repo.dart';

/// Travel Repository
@Injectable(as: TravelRepo)
class TravelRepoImpl implements TravelRepo {
  ///
  TravelRepoImpl({required this.travelDataSource});

  final TravelDataSource travelDataSource;
  @override
  Future<void> addLocation({required String location}) {
    throw UnimplementedError();
  }

  @override
  Future<void> addTravelCategory({required String category}) {
    throw UnimplementedError();
  }

  @override
  Future<void> addTravelPacakge({
    required Uint8List vrImage,
    required List<Uint8List> images,
    required Uint8List featuredImage,
    required TravelPackageModel travelPackageModel,
  }) async {
    try {
      await travelDataSource.addTravelPacakge(
        vrImage: vrImage,
        images: images,
        featuredImage: featuredImage,
        travelPackageModel: travelPackageModel,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Stream<List<TravelPackageModel>> getTravelPackages() {
    try {
      return travelDataSource.getTravelPackages();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updatePacakage({
    required Uint8List vrImage,
    required List<Uint8List> images,
    required Uint8List featuredImage,
    required TravelPackageModel travelPackageModel,
  }) async {
    await travelDataSource.updatePacakage(
        vrImage: vrImage,
        images: images,
        featuredImage: featuredImage,
        travelPackageModel: travelPackageModel,);
  }

  @override
  Future<void> deletePackage({required String id}) async {
    await travelDataSource.deletePackage(id: id);
  }
}
