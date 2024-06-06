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
    this.fcmToken,
    this.paymentStatus = 'unpaid',
  });

  /// Create object from JSON
  factory OrderPackageModel.fromJson(Map<String, dynamic> json) {
    return OrderPackageModel(
        orderId: json['orderId'] as String,
        packageId: json['packageID'] as String,
        totalAmount: json['totalAmount'] as String,
        totalPerson: json['totalPerson'] as String,
        totalDays: json['totalDays'] as int,
        name: json['name'] as String,
        phone: json['phone'] as String,
        from: json['from'] as String,
        to: json['to'] as String,
        pickupLocation: json['pickupLocation'] as String,
        packageName: json['packageName'] as String,
        paymentStatus: json['paymentStatus'] as String,
        orderStatus: json['orderStatus'] as String,
        fcmToken: json['fcmToken'] as String,);
  }

  /// Package Name
  final String? packageName;

  /// FCM token
  final String? fcmToken;

  /// Package id
  final String? packageId;

  /// Payment Status
  final String? paymentStatus;

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
      'pickupLocation': pickupLocation,
      'paymentStatus': paymentStatus,
      'orderStatus': orderStatus,
      'fcmToken': fcmToken,
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
      orderStatus: orderStatus ?? this.orderStatus,
      fcmToken: fcmToken ?? this.fcmToken,
    );
  }
}
