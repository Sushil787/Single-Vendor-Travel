import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
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
    // TODO: implement getTravelPackages
    throw UnimplementedError();
  }

  @override
  Future<void> updatePacakage(
      {required TravelPackageModel travelPackageModel}) {
    // TODO: implement updatePacakage
    throw UnimplementedError();
  }
}
