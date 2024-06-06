import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/core/constants/api_constant.dart';
import 'package:t_admin/core/dio/dio_client.dart';
import 'package:t_admin/features/order/data/model/order_package_model.dart';
import 'package:t_admin/features/order/domain/repo/booking_repo.dart';
import 'package:t_admin/features/user/domain/repository/user_repository.dart';

/// Package Booking Repo
@Injectable(as: BookingRepo)
class BookingRepoImpl implements BookingRepo {
  BookingRepoImpl({
    required this.firebaseFirestore,
    required this.userRepository,
    required this.dioClient,
  });
  final UserRepository userRepository;
  final DioClient dioClient;

  final FirebaseFirestore firebaseFirestore;
  List<OrderPackageModel> orders = [];
  @override
  Stream<List<OrderPackageModel>> getBookedPackage() {
    final data = firebaseFirestore.collection('order').snapshots();
    return data.map(
      (event) =>
          event.docs.map((e) => OrderPackageModel.fromJson(e.data())).toList(),
    );
  }

  @override
  Future<void> updateBookedPackageStatus({
    required String status,
    required OrderPackageModel orderPackageModel,
  }) async {
    await firebaseFirestore
        .collection('order')
        .where('orderId', isEqualTo: orderPackageModel.orderId)
        .get()
        .then(
          (value) => value.docs.first.reference.update(
            {'orderStatus': status},
          ),
        );

    /// Retrieve admin document to update earnings
    final adminSnapshot = await firebaseFirestore.collection('admin').get();
    final adminDoc = adminSnapshot.docs.first;
    final currentEarning = adminDoc.data()['earning'];

    /// Calculate new earnings based on the order
    final orderTotalAmount =
        double.parse(orderPackageModel.totalAmount.toString());
    final updatedEarning = (double.tryParse(currentEarning.toString()) ?? 0) -
        (orderTotalAmount - orderTotalAmount * .4);
    log(
      name: 'updated earning',
      updatedEarning.toString(),
    );

    /// Update earnings in the admin document
    await adminDoc.reference.update({'earning': updatedEarning});

    final data = {
      'to': orderPackageModel.fcmToken,
      'notification': {
        'title': '${orderPackageModel.packageName} $status',
        'body': 'your booking is $status',
      },
      'data': {
        'route': '/order',
      },
    };
    await dioClient.request(
      requestType: RequestType.post,
      path: ApiConstant.sendNotificationEndPoint,
      data: data,
    );
  }
}
