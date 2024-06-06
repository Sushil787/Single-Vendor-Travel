import 'package:flutter/material.dart';
import 'package:t_client/core/theme/app_colors.dart';

/// Back Button
class IosBackButton extends StatelessWidget {
  ///
  const IosBackButton({required this.onTap, super.key, this.showFill = false});

  /// Fill
  final bool showFill;

  /// On Tap Call Back
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: showFill
          ? const CircleAvatar(
              radius: 20,
              backgroundColor: LightColor.eclipse,
              child: Icon(
                size: 16,
                Icons.arrow_back_ios,
                color: LightColor.primaryColor,
              ),
            )
          : const Icon(
              size: 20,
              Icons.arrow_back_ios,
              color: LightColor.eclipse,
            ),
    );
  }
}
