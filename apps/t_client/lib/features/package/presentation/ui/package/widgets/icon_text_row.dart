import 'package:flutter/material.dart';
import 'package:t_client/core/helper/gap.dart';

///
class BuildIconTextRow extends StatelessWidget {
  ///
  BuildIconTextRow({
    required this.first,
    this.text,
    this.onTap,
    super.key,
  });

  ///
  Widget first;

  ///
  Widget? text;

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
          text ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
