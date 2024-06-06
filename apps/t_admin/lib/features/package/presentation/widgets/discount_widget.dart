import 'package:flutter/material.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/theme/app_colors.dart';

/// Discount Widger
class DiscountWidget extends StatelessWidget {
  // ignore: public_member_api_docs
  const DiscountWidget({required this.discount, super.key});

  ///
  final double discount;
  @override
  Widget build(BuildContext context) {
   if(discount == 0){
    return const SizedBox.shrink();
   }
   return SizedBox(
      // height: 30,
      // width: 20,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        decoration: const BoxDecoration(
          color: LightColor.eclipse,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(6),
          ),
        ),
        child: Text(
          '$discount% off',
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
