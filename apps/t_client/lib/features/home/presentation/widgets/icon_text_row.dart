import 'package:flutter/material.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';

///
class BuildIconTextRow extends StatelessWidget {
  ///
  BuildIconTextRow({required this.icon, required this.text, super.key});

  ///
  Widget icon;

  ///
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        HorizontalGap.xs,
        Text(
          text,
          style: context.textTheme.bodySmall?.copyWith(
            fontSize: 14,
            color: LightColor.grey,
          ),
        ),
      ],
    );
  }
}
