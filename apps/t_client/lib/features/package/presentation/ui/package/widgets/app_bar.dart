import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/features/user/presentation/ui/widgets/profile_widget.dart';

///
class CustomAppBar extends StatelessWidget {
  ///
  const CustomAppBar({required this.uid, super.key});

  /// UID
  final String uid;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Travello',
                style: context.textTheme.headlineLarge?.copyWith(
                  fontSize: 26,
                  color: LightColor.textColor,
                  fontWeight: FontWeight.w800,
                  height: 1,
                ),
              ),
              Text(
                'Explore Nepal',
                style: context.textTheme.bodySmall?.copyWith(
                  fontSize: 14,
                  color: LightColor.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          ProfileWidget(
            onTap: () {
              context.pushNamed(
                AppRoutes.profile,
                extra: uid,
              );
            },
          ),
        ],
      ),
    );
  }
}
