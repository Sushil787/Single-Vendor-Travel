import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:t_client/core/assets/media_assets.dart';
import 'package:t_client/core/constants/app_constants.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/di/di_setup.dart';

/// Spash Screen
class SplashScreen extends StatefulWidget {
  ///
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late bool isFirstTime;
  @override
  void initState() {
    isFirstTime = getIt<SharedPreferences>().getBool(
          AppConstants.showWelcomeScreen,
        ) ??
        true;
    super.initState();
    Future.delayed(const Duration(seconds: 3, milliseconds: 100), () {
      if (mounted) {
        if (isFirstTime) {
          context.go(AppRoutes.welcome);
          return;
        }
        context.go(AppRoutes.main);
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0xfffcfcfc),
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Center(
          child: SizedBox(
            height: context.height * .4,
            width: context.width * .6,
            child: Image.asset(
              MediaAsset.notuwaSplash,
            ),
          ),
        ),
      ),
    );
  }
}
