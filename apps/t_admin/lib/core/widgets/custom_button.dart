import 'package:flutter/material.dart';
import 'package:t_admin/core/helper/gap.dart';

/// A generic action button
class CustomElevatedButton extends StatelessWidget {
  /// Public Constructor
  const CustomElevatedButton({
    required this.onButtonPressed,
    required this.buttonText,
    this.isLoading = false,
    this.btnHorizontalPadding = 16.0,
    this.btnVerticalPadding = 12.0,
    this.btnFontSize = 20.0,
    super.key,
  });

  /// Callback called when button is pressed
  final VoidCallback onButtonPressed;

  /// State variable representing is it is loading
  final bool isLoading;

  /// The text on the button
  final String buttonText;

  /// The font size of the text in button
  final double btnFontSize;

  /// Button horizontal padding
  final double btnHorizontalPadding;

  /// Button vertical padding
  final double btnVerticalPadding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading == true ? null : onButtonPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: btnHorizontalPadding,
          vertical: btnVerticalPadding,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (!isLoading) ...[
            Text(
              buttonText,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: btnFontSize,
                  ),
            ),
          ],
          if (isLoading) ...[
            HorizontalGap.l,
            const SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator.adaptive(
                backgroundColor: Colors.white,
                strokeWidth: 2.5,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
