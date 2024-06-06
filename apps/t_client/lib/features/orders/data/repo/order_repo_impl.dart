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
      log(name: 'prde', orderPackageModel.toJson().toString());
      final orderModel = orderPackageModel.copyWith(
        orderId: orderId,
        fcmToken: fcm,
      );
      await firestore.collection(packageOrder).add(orderModel.toJson());
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
}
