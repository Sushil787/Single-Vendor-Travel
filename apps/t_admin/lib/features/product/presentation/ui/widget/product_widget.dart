import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_admin/core/constants/route_constants.dart';

import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/theme/app_colors.dart';
import 'package:t_admin/features/product/model/product_model.dart';
import 'package:t_admin/features/product/presentation/cubit/product_cubit.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({
    required this.productModel,
    this.isOrder = false,
    super.key,
  });
  final ProductModel productModel;
  final bool isOrder;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: context.height * .4,
        width: context.width * .12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: LightColor.eclipse,
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: context.height * .2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          productModel.image,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VerticalGap.s,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rs ${productModel.price}',
                            style: context.textTheme.displaySmall,
                          ),
                          Chip(
                            label: Text(
                              productModel.categoryType,
                              maxLines: 1,
                              style: context.textTheme.displaySmall
                                  ?.copyWith(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      VerticalGap.s,
                      Text(
                        productModel.title,
                        style: context.textTheme.displaySmall,
                      ),
                      VerticalGap.s,
                      Text(
                        productModel.description,
                        style: context.textTheme.displaySmall,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (!isOrder)
              Align(
                alignment: Alignment.topRight,
                child: PopupMenuButton<String>(
                  onSelected: (value) {},
                  itemBuilder: (BuildContext bc) {
                    return [
                      PopupMenuItem(
                        child: const Text('Update'),
                        onTap: () {
                          context.push(
                            AppRoutes.addProduct,
                            extra: productModel,
                          );
                        },
                      ),
                      PopupMenuItem(
                        child: const Text('Delete'),
                        onTap: () async {
                          await context
                              .read<ProductCubit>()
                              .deleteProduct(id: productModel.uuid!);
                          context.pop();
                        },
                      ),
                    ];
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
