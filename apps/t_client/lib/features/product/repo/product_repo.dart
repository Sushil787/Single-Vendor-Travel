import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@injectable

/// Product Repository
class ProductRepo {
  ///
  ProductRepo({required this.firebaseFirestore});

  /// Firebase Firestore Instance
  final FirebaseFirestore firebaseFirestore;

  /// Fetch Product
  Future<void> getProduct() async {}
}
