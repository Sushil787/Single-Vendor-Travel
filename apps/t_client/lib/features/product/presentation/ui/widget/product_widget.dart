import 'package:flutter/material.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/features/product/model/product_model.dart';

///
class ProductWidget extends StatefulWidget {
  ///
  const ProductWidget({
    required this.productModel,
    super.key,
  });

  ///
  final ProductModel productModel;

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                      widget.productModel.image,
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
                        'Rs ${widget.productModel.price}',
                        style: context.textTheme.displaySmall,
                      ),
                      Chip(
                        backgroundColor: LightColor.eclipse,
                        label: Text(
                          widget.productModel.categoryType,
                          maxLines: 1,
                          style: context.textTheme.displaySmall?.copyWith(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  VerticalGap.xs,
                  Text(
                    widget.productModel.title,
                    style: context.textTheme.displaySmall,
                  ),
                  VerticalGap.xs,
                  Text(
                    widget.productModel.description,
                    style: context.textTheme.displaySmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
