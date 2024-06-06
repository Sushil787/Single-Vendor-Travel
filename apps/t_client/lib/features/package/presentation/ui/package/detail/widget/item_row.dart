import 'package:flutter/material.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';

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
          Divider(
            endIndent: context.width * .8,
          ),
          SizedBox(
            height: 40,
            // padding: const EdgeInsets.all(12),
            child: ListView.separated(
              separatorBuilder: (context, index) => HorizontalGap.s,
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) => Chip(
                label: Text(
                  items[index],
                  style: context.textTheme.displaySmall
                      ?.copyWith(fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
