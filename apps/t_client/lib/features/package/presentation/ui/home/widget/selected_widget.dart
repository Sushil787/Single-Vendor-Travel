import 'package:flutter/material.dart';

/// Selected Icon Data
class SelectedIcon extends StatelessWidget {
  ///
  const SelectedIcon({
    required this.iconData,
    super.key,
  });

  /// Selected Icon Data
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 58,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 229, 227, 227),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(iconData),
    );
  }
}
