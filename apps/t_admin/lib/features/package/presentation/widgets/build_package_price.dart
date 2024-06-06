import 'package:flutter/material.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/theme/app_colors.dart';
import 'package:t_admin/core/utils/discount_price.dart';

/// Build Product Price
Widget buildProductPrice(
  BuildContext context, {
  required double price,
  required double? discount,
}) {
  if (discount == 0 || discount == null) {
    return Row(
      children: [
        Text(
          'रु $price',
          style:
              context.textTheme.labelMedium?.copyWith(color: LightColor.orange),
        ),
      ],
    );
  }
  final discountedPackagePrice = discountedPrice(price, discount);
  return Row(
    children: [
      Text(
        'रु $discountedPackagePrice',
        style:
            context.textTheme.labelMedium?.copyWith(color: LightColor.orange),
      ),
      HorizontalGap.xs,
      Text(
        price.toString(),
        style: context.textTheme.labelMedium?.copyWith(
          color: LightColor.eclipse,
          decoration: TextDecoration.lineThrough,
        ),
      ),
    ],
  );
}
