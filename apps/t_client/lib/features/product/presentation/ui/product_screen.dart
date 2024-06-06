import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_client/features/product/model/product_model.dart';

import 'package:t_client/features/product/presentation/cubit/product_cubit.dart';
import 'package:t_client/features/product/presentation/ui/widget/product_widget.dart';

class ProductsScreen extends StatefulWidget {
  ///
  ProductsScreen({required this.onTap, super.key});

  /// Call Back for selected product
  void Function(ProductModel? productModel) onTap;

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProductCubit>().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is ProductLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is ProductLoaded) {
            if (state.productModel.isEmpty) {
              return const Center(
                child: Text('Add some products'),
              );
            } else {
              return Flexible(
                child: Wrap(
                  children: [
                    ...state.productModel.map(
                      (e) => ProductWidget(
                        productModel: e,
                      ),
                    ),
                  ],
                ),
              );
            }
          }
          return const Center(
            child: Text('Something went wrong'),
          );
        },
      ),
    );
  }
}
