
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/features/product/model/product_model.dart';


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

}
