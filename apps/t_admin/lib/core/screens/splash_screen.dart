import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_admin/core/assets/media_assets.dart';
import 'package:t_admin/core/constants/route_constants.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';

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
    super.initState();
    Future.delayed(const Duration(seconds: 5, milliseconds: 500), () {
      context.go('/${AppRoutes.home}');
      return;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 240,
              child: Image.asset(
                MediaAsset.notuwaSplash,
              ),
            ),
            // SizedBox(
            //   height: 50,
            //   child: AnimatedTextKit(
            //     animatedTexts: [

            //     ],
            //   ),
            // ),
            VerticalGap.m,
            SizedBox(
              height: 60,
              child: AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText(
                    'Streamlined',
                    duration: const Duration(
                      seconds: 1,
                    ),
                    textStyle: context.textTheme.headlineLarge,
                  ),
                  FadeAnimatedText(
                    'Personalized ',
                    duration: const Duration(
                      seconds: 1,
                    ),
                    textStyle: context.textTheme.headlineLarge,
                  ),
                  ColorizeAnimatedText(
                    'Travello',
                    colors: [
                      Colors.purple,
                      Colors.blue,
                      Colors.black,
                      Colors.yellow,
                    ],
                    textStyle: context.textTheme.headlineLarge!,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
