// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:t_client/core/assets/media_assets.dart';
import 'package:t_client/core/constants/app_constants.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/screens/welcome/widgets/page.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_button.dart';
import 'package:t_client/di/di_setup.dart';

///
class WelcomeScreen extends StatefulWidget {
  ///
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _pageController = PageController();
  int _index = 0;

  List<Widget> pages = const [
    PageViewWidget(
      imagePath: MediaAsset.welcomeFirst,
      primaryText: 'Life is Short \n and The World  is ',
      secondaryText: 'Wide',
      tertiaryText:
          ' \n\n At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world',
    ),
    PageViewWidget(
      imagePath: MediaAsset.welcomeSecond,
      primaryText: 'It’s a big world \n out there go',
      secondaryText: ' explore',
      tertiaryText:
          '\n\n To get the best of your adventure you just need to leave and go where you like. we are waiting for you',
    ),
    PageViewWidget(
      imagePath: MediaAsset.welcomeThird,
      primaryText: 'People don’t take \n trips, trips take ',
      secondaryText: 'people',
      tertiaryText:
          '\n\n  Travello is dedicated to providing enriching and memorable travel experiences. Focus on creating lasting memories',
    ),
  ];

  @override
  void initState() {
    super.initState();

    getIt<SharedPreferences>().setBool(AppConstants.showWelcomeScreen, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _index = index;
                  debugPrint(index.toString());
                });
              },
              controller: _pageController,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return pages[index];
              },
            ),
          ),
          Positioned(
            top: 30,
            right: context.width * .1,
            child: ActionChip(
              label: const Text(
                'Skip',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: LightColor.whiteSmoke,
                ),
              ),
              backgroundColor: LightColor.eclipse,
              onPressed: () {
                context.go(AppRoutes.main);
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 16,
              margin: EdgeInsets.only(bottom: context.height * .14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    pages.length,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: index == _index
                            ? LightColor.eclipse
                            : LightColor.lightGrey,
                      ),
                      margin: const EdgeInsets.all(2),
                      height: 8,
                      width: index == _index ? 22 : 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: context.width * .1,
                right: context.width * .1,
                bottom: context.width * .05,
              ),
              child: CustomElevatedButton(
                onButtonPressed: () {
                  if (_index < 2) {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                    return;
                  }
                  context.go(AppRoutes.main);
                },
                buttonText: _index == 2 ? 'Get Started' : 'Next',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
