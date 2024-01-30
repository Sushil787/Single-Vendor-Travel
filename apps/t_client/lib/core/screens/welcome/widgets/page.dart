import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';

/// Page View Widget
class PageViewWidget extends StatelessWidget {
  /// Page View Widget Constructor
  const PageViewWidget({
    required this.imagePath,
    required this.primaryText,
    required this.secondaryText,
    required this.tertiaryText,
    super.key,
  });

  /// Image
  final String imagePath;

  /// Primay text
  final String primaryText;

  /// Secondary text
  final String secondaryText;

  /// Testiary text
  final String tertiaryText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: context.height * .1),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            // height: context.height * .,
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
          VerticalGap.l,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: primaryText,
                    style: context.textTheme.headlineLarge?.copyWith(
                      fontFamily: GoogleFonts.andadaPro().fontFamily,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: secondaryText,
                        style: const TextStyle(
                          color: LightColor.orange,
                          fontSize: 26,
                        ),
                      ),
                      TextSpan(
                        text: tertiaryText,
                        style: TextStyle(
                          color: LightColor.eclipse,
                          fontWeight: FontWeight.w500,
                          fontFamily: GoogleFonts.gildaDisplay().fontFamily,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
