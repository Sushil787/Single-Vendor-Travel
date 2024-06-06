
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';

///
class BuildIconTextRow extends StatelessWidget {
  ///
  BuildIconTextRow({
    required this.first,
    required this.text,
    this.onTap,
    super.key,
  });

  ///
  Widget first;

  ///
  String text;

  ///

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          first,
          HorizontalGap.xs,
          Text(
            text,
            style: context.textTheme.bodySmall?.copyWith(
              fontSize: 14,
              color: LightColor.grey,
            ),
          ),
        ],
      ),
    );
  }
}
