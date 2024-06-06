import 'package:t_admin/features/product/model/product_model.dart';

/// Order Class
class OrderPackageModel {
  /// Constructor
  OrderPackageModel({
    required this.orderId,
    required this.packageId,
    required this.packageName,
    required this.totalAmount,
    required this.totalPerson,
    required this.totalDays,
    required this.name,
    required this.phone,
    required this.from,
    required this.to,
    required this.pickupLocation,
    required this.orderStatus,
    required this.userId,
    this.productModel,
    this.fcmToken,
    this.paymentStatus = 'unpaid',
    this.createdAt,
  });

  /// Create object from JSON
  factory OrderPackageModel.fromJson(Map<String, dynamic> json) {
    List<ProductModel>? products;
    if (json['products'] != null) {
      products = (json['products'] as List)
          .map((productJson) =>
              ProductModel.fromJson(productJson as Map<String, dynamic>))
          .toList();
    }
    return OrderPackageModel(
      orderId: json['orderId'] as String,
      packageId: json['packageID'] as String,
      totalAmount: json['totalAmount'] as String,
      totalPerson: json['totalPerson'] as String,
      totalDays: json['totalDays'] as int,
      productModel: products,
      name: json['name'] as String,
      phone: json['phone'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      pickupLocation: json['pickupLocation'] as String,
      packageName: json['packageName'] as String,
      paymentStatus: json['paymentStatus'] as String,
      orderStatus: json['orderStatus'] as String,
      fcmToken: json['fcmToken'] as String,
      userId: json['userId'] as String,
      createdAt: json['createdAt'] as String?,
    );
  }

  /// Package Name
  final String? packageName;

  /// User ID
  final String? userId;

  /// FCM token
  final String? fcmToken;

  /// Package id
  final String? packageId;

  /// Payment Status
  final String? paymentStatus;

  /// Products
  final List<ProductModel>? productModel;

  /// Order id
  final String? orderId;

  /// Package Name
  final String? pickupLocation;

  /// Total Amount
  final String? totalAmount;

  /// Order Status
  final String? orderStatus;

  /// Number of People
  final String? totalPerson;

  /// Total Days
  final int? totalDays;

  /// User name
  final String? name;

  /// Phone number
  final String? phone;

  /// From Date
  final String? from;

  /// to Date
  final String? to;

  /// Created at
  final String? createdAt;

  /// Convert object to JSON
  Map<String, dynamic> toJson() {
    return {
      'packageName': packageName,
      'totalAmount': totalAmount,
      'totalPerson': totalPerson,
      'totalDays': totalDays,
      'packageID': packageId,
      'orderId': orderId,
      'name': name,
      'phone': phone,
      'from': from,
      'to': to,
      'products': productModel?.map((product) => product.toJson()).toList(),
      'pickupLocation': pickupLocation,
      'paymentStatus': paymentStatus,
      'orderStatus': orderStatus,
      'fcmToken': fcmToken,
      'userId': userId,
      'createdAt': DateTime.now().toString(),
    };
  }

  /// Copy With method
  OrderPackageModel copyWith({
    String? packageName,
    String? packageId,
    String? paymentStatus,
    String? orderId,
    String? pickupLocation,
    String? totalAmount,
    String? totalPerson,
    int? totalDays,
    String? name,
    String? phone,
    String? from,
    String? to,
    String? orderStatus,
    String? fcmToken,
    String? userId,
    List<ProductModel>? productmodel,
  }) {
    return OrderPackageModel(
      packageName: packageName ?? this.packageName,
      packageId: packageId ?? this.packageId,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      orderId: orderId ?? this.orderId,
      pickupLocation: pickupLocation ?? this.pickupLocation,
      totalAmount: totalAmount ?? this.totalAmount,
      totalPerson: totalPerson ?? this.totalPerson,
      totalDays: totalDays ?? this.totalDays,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      from: from ?? this.from,
      to: to ?? this.to,
      productModel: productmodel ?? productModel,
      orderStatus: orderStatus ?? this.orderStatus,
      fcmToken: fcmToken ?? this.fcmToken,
      userId: userId ?? this.userId,
    );
  }
}
