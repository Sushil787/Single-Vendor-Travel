import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/features/product/model/product_model.dart';
import 'package:t_client/features/product/presentation/cubit/product_cubit.dart';
import 'package:t_client/features/product/presentation/ui/widget/product_widget.dart';

/// Select Product Widget
class SelectProductWidget extends StatefulWidget {
  ///
  SelectProductWidget({required this.onTap, super.key});

  /// Call Back for selected product
  void Function(List<ProductModel>? productModel) onTap;

  @override
  State<SelectProductWidget> createState() => _SelectProductWidgetState();
}

class _SelectProductWidgetState extends State<SelectProductWidget> {
  /// List of selected
  List<ProductModel> selectedProduct = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.height * .42,
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
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.productModel.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      if (selectedProduct
                          .where((element) =>
                              element.uuid == state.productModel[index].uuid)
                          .isNotEmpty) {
                        selectedProduct.removeWhere((element) =>
                            element.uuid == state.productModel[index].uuid);
                      } else {
                        selectedProduct.add(state.productModel[index]);
                      }
                      setState(() {});
                      widget.onTap.call(selectedProduct);
                    },
                    child: Card(
                      child: Container(
                        height: context.height * .4,
                        width: context.width * .5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 2,
                            color: selectedProduct
                                    .where((element) =>
                                        element.uuid ==
                                        state.productModel[index].uuid)
                                    .isNotEmpty
                                ? Colors.blue.shade500
                                : LightColor.eclipse,
                          ),
                        ),
                        child: ProductWidget(
                          productModel: state.productModel[index],
                        ),
                      ),
                    ),
                  );
                },
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
