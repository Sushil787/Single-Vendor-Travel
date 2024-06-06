import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/core/constants/firebase_collections.dart';
import 'package:t_client/features/orders/data/model/order_package_model.dart';
import 'package:t_client/features/user/domain/repository/user_repository.dart';
import 'package:uuid/uuid.dart';

/// [OrderRepo] implementation
@injectable
class OrderRepo {
  ///
  OrderRepo({required this.firestore, required this.userRepository});

  /// Firestore instance
  final FirebaseFirestore firestore;

  /// Auth Repo
  final UserRepository userRepository;

  /// Make Orders
  Future<void> makeOrder({required OrderPackageModel orderPackageModel}) async {
    try {
      const uuid = Uuid();
      final orderId = uuid.v4();
      final fcm = await FirebaseMessaging.instance.getToken();
      log(name: 'order', orderPackageModel.toJson().toString());
      final orderModel = orderPackageModel.copyWith(
        orderId: orderId,
        fcmToken: fcm,
        orderStatus: 'confirmed',
      );
      
      /// Add the order to Firestore
      await firestore.collection('order').add(orderModel.toJson());

      /// Retrieve admin document to update earnings
      final adminSnapshot = await firestore.collection('admin').get();
      final adminDoc = adminSnapshot.docs.first;
      final currentEarning = adminDoc.data()['earning'];

      /// Calculate new earnings based on the order
      final orderTotalAmount = double.parse(orderModel.totalAmount.toString());
      final updatedEarning =
          (double.tryParse(currentEarning.toString()) ?? 0) + orderTotalAmount;
      log(
        name: 'updated earning',
        updatedEarning.toString(),
      );

      /// Update earnings in the admin document
      await adminDoc.reference.update({'earning': updatedEarning});
      return;
    } on FirebaseException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  /// Gets current user orders
  Future<List<OrderPackageModel>?> getUserOrder() async {
    try {
      final uid = await userRepository.getCurrentUId();
      final data = await firestore
          .collection(packageOrder)
          .where('userId', isEqualTo: uid)
          .get();
      final packages =
          data.docs.map((e) => OrderPackageModel.fromJson(e.data())).toList();
      log(data.toString());

      return packages;
    } catch (e, s) {
      debugPrint(s.toString());
      rethrow;
    }
  }

  /// Request cancle
  Future<void> updateBookedPackageStatus({
    required String status,
    required OrderPackageModel orderPackageModel,
  }) async {
    await firestore
        .collection('order')
        .where('orderId', isEqualTo: orderPackageModel.orderId)
        .get()
        .then(
          (value) => value.docs.first.reference.update(
            {'orderStatus': status},
          ),
        );
  }
}
