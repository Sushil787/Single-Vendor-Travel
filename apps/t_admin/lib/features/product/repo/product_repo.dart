import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/core/utils/firebase_storage_utils.dart';
import 'package:t_admin/di/di_setup.dart';
import 'package:t_admin/features/product/model/product_model.dart';
import 'package:uuid/uuid.dart';

@injectable

/// Product Repository
class ProductRepo {
  ///
  ProductRepo({required this.firebaseFirestore});

  /// Firebase Firestore Instance
  final FirebaseFirestore firebaseFirestore;

  /// Fetch Product
  Future<List<ProductModel>> getProduct() async {
    try {
      final data = await firebaseFirestore.collection('products').get();
      final products = data.docs
          .map(
            (e) => ProductModel.fromJson(
              e.data(),
            ),
          )
          .toList();
      return products;
    } catch (e) {
      rethrow;
    }
  }

  /// Fetch Product
  Future<void> updateProduct({
    required ProductModel productModel,
    required Uint8List image,
  }) async {
    try {
      final firebaseStorageUitls = getIt<FirebaseStorageUitls>();
      final featuredImageUrl = await firebaseStorageUitls.uploadImage(
        packageId: productModel.uuid!,
        image: image,
      );
      final data = await firebaseFirestore
          .collection('products')
          .where('uuid', isEqualTo: productModel.uuid)
          .get();
      await data.docs.first.reference.update(
        productModel
            .copyWith(
              image: featuredImageUrl,
            )
            .toJson(),
      );
    } catch (e, s) {
      print(e.toString() + s.toString());
      rethrow;
    }
  }

  /// Fetch Product
  Future<void> addProduct({
    required ProductModel productModel,
    required Uint8List image,
  }) async {
    try {
      final uuid = const Uuid().v1();
      final firebaseStorageUitls = getIt<FirebaseStorageUitls>();
      final featuredImageUrl = await firebaseStorageUitls.uploadImage(
        packageId: uuid,
        image: image,
      );
      await firebaseFirestore.collection('products').add(
            productModel
                .copyWith(
                  uuid: uuid,
                  image: featuredImageUrl,
                )
                .toJson(),
          );
    } catch (e) {
      rethrow;
    }
  }

  /// Fetch Product
  Future<void> deleteProduct({required String productId}) async {
    try {
      final data = await firebaseFirestore
          .collection('products')
          .where('uuid', isEqualTo: productId)
          .get();
      await data.docs.first.reference.delete();
    } catch (e) {
      rethrow;
    }
  }
}
