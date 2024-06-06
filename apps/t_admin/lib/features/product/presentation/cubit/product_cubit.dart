import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/features/product/model/product_model.dart';
import 'package:t_admin/features/product/repo/product_repo.dart';

part 'product_state.dart';
part 'product_cubit.freezed.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  ProductCubit({required this.productRepo})
      : super(const ProductState.initial());

  final ProductRepo productRepo;

  Future<void> getProducts() async {
    try {
      emit(const ProductLoading());
      final products = await productRepo.getProduct();
      emit(ProductLoaded(productModel: products));
    } catch (e) {
      emit(ProductError(message: e.toString()));
    }
  }

  Future<void> addProducts({
    required ProductModel productModel,
    required Uint8List image,
  }) async {
    try {
      emit(const ProductLoading());
      await productRepo.addProduct(
        productModel: productModel,
        image: image,
      );
      emit(const ProductSuccess(succesMessage: 'Product Added'));
      await getProducts();
    } catch (e) {
      emit(ProductError(message: e.toString()));
    }
  }

  Future<void> deleteProduct({required String id}) async {
    try {
      emit(const ProductLoading());
      await productRepo.deleteProduct(productId: id);
      final products = await productRepo.getProduct();
      emit(ProductLoaded(productModel: products));
      await getProducts();
    } catch (e) {
      emit(ProductError(message: e.toString()));
    }
  }

  Future<void> updateProduct({
    required ProductModel productModel,
    required Uint8List image,
  }) async {
    try {
      emit(const ProductLoading());
      await productRepo.updateProduct(
        productModel: productModel,
        image: image,
      );
      final products = await productRepo.getProduct();
      emit(const ProductSuccess(succesMessage: 'Product Updated'));
      emit(ProductLoaded(productModel: products));
      await getProducts();
    } catch (e) {
      emit(ProductError(message: e.toString()));
    }
  }
}
