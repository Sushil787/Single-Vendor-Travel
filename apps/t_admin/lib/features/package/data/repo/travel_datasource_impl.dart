import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/core/utils/firebase_storage_utils.dart';
import 'package:t_admin/di/di_setup.dart';
import 'package:t_admin/features/package/data/model/travel_package_model.dart';
import 'package:t_admin/features/package/domain/repo/package_data_source.dart';

/// Travel Data Source Repo
@Injectable(as: TravelDataSource)
class TravelDataSourceImpl implements TravelDataSource {
  TravelDataSourceImpl({
    required this.firestore,
  });
  final FirebaseFirestore firestore;

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
      log(travelPackageModel.toJson().toString());
      final firebaseStorageUitls = getIt<FirebaseStorageUitls>();
      final collectionRef = firestore.collection('packages');
      final featuredImageUrl = await firebaseStorageUitls.uploadImage(
        packageId: travelPackageModel.uuid,
        image: featuredImage,
      );
      final listImagesUrl =
          await firebaseStorageUitls.uploadMultipleImagesToFirebase(
        packageId: travelPackageModel.uuid,
        images: images,
      );
      final vrImageUrl = await firebaseStorageUitls.uploadImage(
        packageId: travelPackageModel.uuid,
        image: vrImage,
      );

      await collectionRef.add(
        travelPackageModel
            .copyWith(
              vrImage: vrImageUrl,
              images: listImagesUrl,
              featuredImage: featuredImageUrl,
            )
            .toJson(),
      );
    } on FirebaseException catch (e) {
      log(name: 'firebase', e.toString());

      rethrow;
    } on Exception catch (e) {
      log(name: 'exception', e.toString());

      rethrow;
    }
  }

  @override

  /// Get Travel Packages
  @override
  Stream<List<TravelPackageModel>> getTravelPackages() {
    try {
      final data = firestore.collection('packages').snapshots();
      final packages = data.map(
        (event) => event.docs
            .map((e) => TravelPackageModel.fromJson(e.data()))
            .toList(),
      );
      return packages;
    } catch (e, s) {
      debugPrint(s.toString());
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
    try {
      final firebaseStorageUitls = getIt<FirebaseStorageUitls>();
      final featuredImageUrl = await firebaseStorageUitls.uploadImage(
        packageId: travelPackageModel.uuid,
        image: featuredImage,
      );
      final listImagesUrl =
          await firebaseStorageUitls.uploadMultipleImagesToFirebase(
        packageId: travelPackageModel.uuid,
        images: images,
      );
      final vrImageUrl = await firebaseStorageUitls.uploadImage(
        packageId: travelPackageModel.uuid,
        image: vrImage,
      );

      final data = await firestore
          .collection('packages')
          .where('uuid', isEqualTo: travelPackageModel.uuid)
          .get();
      await data.docs.first.reference.update(
        travelPackageModel
            .copyWith(
              featuredImage: featuredImageUrl,
              images: listImagesUrl,
              vrImage: vrImageUrl,
            )
            .toJson(),
      );
    } catch (e, s) {
      debugPrint(s.toString());
      rethrow;
    }
  }

  @override
  Future<void> deletePackage({required String id}) async {
    try {
      final data = await firestore
          .collection('packages')
          .where('uuid', isEqualTo: id)
          .get();
      await data.docs.first.reference.delete();
    } catch (e, s) {
      debugPrint(s.toString());
      rethrow;
    }
  }
}
