import 'package:flutter/material.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/theme/app_colors.dart';

/// Discount Widger
class DiscountWidget extends StatelessWidget {
  const DiscountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 30,
      // width: 20,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        decoration: BoxDecoration(
            color: LightColor.eclipse,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(6),
            )),
        child: Text(
          '10% off',
          style: context.textTheme.labelMedium?.copyWith(
            color: LightColor.primaryColor,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
