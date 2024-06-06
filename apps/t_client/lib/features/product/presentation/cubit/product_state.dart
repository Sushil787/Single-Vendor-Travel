// ignore_for_file: public_member_api_docs

part of 'product_cubit.dart';

@freezed

///
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = ProductLoading;
  const factory ProductState.loaded({
    required List<ProductModel> productModel,
  }) = ProductLoaded;
  const factory ProductState.error({required String message}) = ProductError;
}
