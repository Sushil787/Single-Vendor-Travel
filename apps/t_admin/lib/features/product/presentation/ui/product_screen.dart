import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_admin/core/constants/route_constants.dart';
import 'package:t_admin/core/widgets/custom_lable.dart';
import 'package:t_admin/features/product/presentation/cubit/product_cubit.dart';
import 'package:t_admin/features/product/presentation/ui/widget/product_widget.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

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
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Add Product'),
        onPressed: () {
          context.push(AppRoutes.addProduct);
        },
        icon: const Icon(Icons.add),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
              child: CustomLable(
                lable: 'Products',
              ),
            ),
            BlocBuilder<ProductCubit, ProductState>(
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
          ],
        ),
      ),
    );
  }
}
