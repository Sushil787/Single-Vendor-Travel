import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_admin/core/theme/app_colors.dart';

/// Class defining theme of the application
class AppTheme {
  /// Light Theme
  ///
  static final ThemeData lightThemeData = ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
    primaryColor: LightColor.primaryColor,
    iconTheme: const IconThemeData(color: LightColor.secondaryColor),
    useMaterial3: true,
    dialogTheme: const DialogTheme(
      backgroundColor: Colors.white,
    ),
    appBarTheme: const AppBarTheme(color: Colors.white, elevation: 10),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: LightColor.primaryColor,
      selectedItemColor: LightColor.primaryColor,
      unselectedItemColor: LightColor.secondaryColor,
      elevation: 0,
      selectedLabelStyle: TextStyle(
        color: LightColor.secondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(
        color: LightColor.secondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: LightColor.eclipse,
      color: MaterialStatePropertyAll(LightColor.eclipse),
      labelStyle: TextStyle(color: Colors.white),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    // fontFamily: AssetConstants.robotoRegular,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: LightColor.secondaryColor,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: TextStyle(
        color: LightColor.secondaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        color: LightColor.secondaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        color: LightColor.secondaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        color: LightColor.secondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        color: LightColor.secondaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        color: LightColor.secondaryColor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        color: LightColor.secondaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: TextStyle(
        color: LightColor.secondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      displayMedium: TextStyle(
        fontSize: 14,
        color: LightColor.secondaryColor,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: TextStyle(
        fontSize: 12,
        color: LightColor.secondaryColor,
        fontWeight: FontWeight.w500,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: LightColor.primaryColor,
      secondary: LightColor.primaryColor,
      brightness: Brightness.light,
      onSecondary: LightColor.secondaryColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: LightColor.grey,
        backgroundColor: LightColor.eclipse,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: LightColor.secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(
            color: LightColor.lightGrey,
            width: 2,
          ),
        ),
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: LightColor.whiteSmoke,
      thickness: 1,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: LightColor.secondaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: LightColor.lightGrey,
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: LightColor.lightGrey,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: LightColor.lightGrey,
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
      suffixIconColor: LightColor.secondaryColor,
      prefixIconColor:
          MaterialStateColor.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) {
          return Colors.black;
        }

        return LightColor.secondaryColor;
      }),
      labelStyle: const TextStyle(
        color: LightColor.secondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: const TextStyle(
        color: LightColor.grey,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      errorStyle: const TextStyle(
        color: Colors.red,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: LightColor.eclipse,
      foregroundColor: LightColor.backColor,
    ),
  );
}
