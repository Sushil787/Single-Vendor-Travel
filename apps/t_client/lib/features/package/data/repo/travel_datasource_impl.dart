// ignore_for_file: public_member_api_docs

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/core/constants/firebase_collections.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/domain/repo/travel_data_source.dart';

/// Travel Data Source Repo
@Injectable(as: TravelDataSource)
class TravelDataSourceImpl implements TravelDataSource {
  TravelDataSourceImpl({
    required this.firestore,
  });
  final FirebaseFirestore firestore;

  @override
  Future<void> addTravelCategory({required String category}) {
    throw UnimplementedError();
  }

  @override
  Stream<List<TravelPackageModel>> getTravelPackages() {
    try {
      final data = firestore.collection(pakcages).snapshots();
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
  Future<void> deletePackage({required String id}) {
    throw UnimplementedError();
  }

  @override
  Stream<List<TravelPackageModel>> searchPackage({required String search}) {
    try {
      return firestore.collection(pakcages).snapshots().map(
            (event) => event.docs
                .map(
                  (e) => TravelPackageModel.fromJson(e.data()),
                )
                .toList(),
          );
    } catch (e, s) {
      debugPrint(s.toString());
      rethrow;
    }
  }
}
