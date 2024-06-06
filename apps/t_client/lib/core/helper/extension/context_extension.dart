import 'package:flutter/material.dart';
import 'package:t_client/core/theme/app_colors.dart';

/// [ToastType] enum
enum ToastType {
  /// Success
  success,

  /// Error
  error,

  /// Message
  message
}

/// Helper Extension
extension HelperExtension on BuildContext {
  /// Theme
  ThemeData get theme => Theme.of(this);

  /// Device Height
  double get height => MediaQuery.of(this).size.height;

  /// Device Width
  double get width => MediaQuery.of(this).size.width;

  /// Primary Color Extension getter
  Color get primaryColor => Theme.of(this).primaryColor;

  /// Primary Color Dark Extension getter

  Color get primaryColorDark => Theme.of(this).primaryColorDark;

  /// Primary Color Light Extension getter

  Color get primaryColorLight => Theme.of(this).primaryColorLight;

  /// Primary Color Extension getter

  Color get primary => Theme.of(this).colorScheme.primary;

  /// onPrimary Color Extension getter

  Color get onPrimary => Theme.of(this).colorScheme.onPrimary;

  /// Secondary Color Extension getter

  Color get secondary => Theme.of(this).colorScheme.secondary;

  /// onSecondary Color Extension getter

  Color get onSecondary => Theme.of(this).colorScheme.onSecondary;

  /// Card Color Extension getter

  Color get cardColor => Theme.of(this).cardColor;

  /// Text Theme Extension getter
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Erro Color Extension getter

  Color get errorColor => Theme.of(this).colorScheme.error;

  /// Background Color Scheme Extension getter

  Color get background => Theme.of(this).colorScheme.background;

  /// Bottom Modal Sheet Extension Method
  Future<void> showBottomSheet(
    Widget child, {
    bool isScrollControlled = true,
    Color? backgroundColor,
    Color? barrierColor,
  }) {
    return showModalBottomSheet(
      context: this,
      barrierColor: barrierColor,
      isScrollControlled: isScrollControlled,
      backgroundColor: backgroundColor,
      builder: (context) => Wrap(children: [child]),
    );
  }

  /// Snackbar Extension
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar({
    required String message,
    required ToastType toastType,
  }) {
    return ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        backgroundColor: toastType == ToastType.message
            ? LightColor.eclipse
            : toastType == ToastType.success
                ? Colors.green
                : Colors.red,
      ),
    );
  }
}
