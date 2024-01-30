// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:t_admin/core/theme/app_colors.dart';

/// Growth Widget for dashboard
class CustomLable extends StatelessWidget {
  ///
  const CustomLable({required this.lable, super.key});

  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          child: Divider(
            thickness: 1.2,
            color: LightColor.eclipse,
          ),
        ),
      ],
    );
  }
}
