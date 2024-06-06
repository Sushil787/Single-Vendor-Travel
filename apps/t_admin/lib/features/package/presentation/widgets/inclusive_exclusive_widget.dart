import 'package:flutter/material.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/theme/app_colors.dart';

/// Build Inclusive Exclusive view
class BuildInclusiveExclusive extends StatelessWidget {
  ///
  const BuildInclusiveExclusive({
    required this.title,
    required this.items,
    super.key,
  });

  ///
  final String title;

  ///
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.textTheme.bodyMedium,
          ),
          SizedBox(
            height: 28,
            // padding: const EdgeInsets.all(12),
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => HorizontalGap.s,
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) => Chip(
                backgroundColor: LightColor.lightGrey,
                label: Text(
                  items[index],
                  style: context.textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
