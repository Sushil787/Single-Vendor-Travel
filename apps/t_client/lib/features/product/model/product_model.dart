import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
/// Product Model
class ProductModel with _$ProductModel {
  ///
  const factory ProductModel({
    required String categoryType,
    required String image,
    required String price,
    required String description,
    required String title,
    String? uuid,
  }) = _ProductModel;

  /// From Json constructor
  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
