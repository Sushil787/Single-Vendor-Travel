import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/features/product/model/product_model.dart';
import 'package:t_client/features/product/repo/product_repo.dart';

part 'product_state.dart';
part 'product_cubit.freezed.dart';

@injectable

/// PRoduct Cubit
class ProductCubit extends Cubit<ProductState> {
  ///
  ProductCubit({required this.productRepo})
      : super(const ProductState.initial());

  /// ProductRepo instance
  final ProductRepo productRepo;

  /// Fetch [ProductModel]
  Future<void> getProducts() async {
    try {
      emit(const ProductLoading());
      final products = await productRepo.getProduct();
      emit(ProductLoaded(productModel: products));
    } catch (e) {
      emit(ProductError(message: e.toString()));
    }
  }
}
