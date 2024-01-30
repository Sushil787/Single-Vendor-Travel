// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/theme/app_colors.dart';

/// Growth Widget for dashboard
class GrowthCard extends StatelessWidget {
  ///
  const GrowthCard({required this.lable, required this.number, super.key});
  
  final String lable;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      color: LightColor.whiteSmoke,
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lable,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: LightColor.eclipse,
              endIndent: 180,
              thickness: 2,
            ),
            const Spacer(),
            Row(
              children: [
                const Icon(
                  Icons.trending_up_outlined,
                  size: 40,
                  color: LightColor.orange,
                ),
                HorizontalGap.m,
                Text(
                  number,
                  style: const TextStyle(
                    fontSize: 28,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
