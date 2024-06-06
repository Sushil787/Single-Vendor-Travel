// ignore_for_file: public_member_api_docs


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/core/constants/api_constant.dart';
import 'package:t_client/core/constants/firebase_collections.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/domain/repo/travel_data_source.dart';
import 'package:t_client/features/user/domain/repository/user_repository.dart';

/// Travel Data Source Repo
@Injectable(as: TravelDataSource)
class TravelDataSourceImpl implements TravelDataSource {
  TravelDataSourceImpl(
    this.userRepository, {
    required this.firestore,
    required this.dio,
  });
  final FirebaseFirestore firestore;
  final Dio dio;
  final UserRepository userRepository;

  @override
  Future<void> addTravelCategory({required String category}) {
    throw UnimplementedError();
  }

  /// Get Travel Packages
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

  /// Delete Pacakge
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

  @override
  Future<List<TravelPackageModel>> getRecommended() async {
    try {
      final id = await userRepository.getCurrentUId();
      final response = await dio.post(recommend, data: {'uid': id});

      if (response.statusCode == 200) {
        final responseData = response.data;
        if (responseData != null) {
          final recommended = (responseData['data'] as List)
              .map(
                (item) =>
                    TravelPackageModel.fromJson(item as Map<String, dynamic>),
              )
              .toList();
          return recommended;
        } else {
          throw Exception(
            'Response data is not of type List<Map<String, dynamic>>',
          );
        }
      } else {
        throw Exception(
          'Request failed with status code ${response.statusCode}',
        );
      }
    } catch (e, s) {
      debugPrint('Error: $e');
      debugPrint('Stacktrace: $s');
      rethrow;
    }
  }
}
