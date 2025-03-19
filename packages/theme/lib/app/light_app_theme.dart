import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app.dart';

class LightAppTheme {
  static String? fontFamily = GoogleFonts.manrope().fontFamily;
  static final baseTextStyle = AppTextStyles.base;

  static ThemeData getThemeData() {
    return ThemeData(
      useMaterial3: true,
      cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
        applyThemeToAll: true,
        primaryColor: LightAppColors.brandColor,
        primaryContrastingColor: LightAppColors.black,
      ),
      fontFamily: fontFamily,
      package: 'theme',
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: LightAppColors.brandColor,
          onPrimary: LightAppColors.black,
          surface: LightAppColors.backgroundColor,
          onSecondaryContainer: LightAppColors.secondaryBackgroundColor,
          onSurface: LightAppColors.black,
          secondary: LightAppColors.mainTextColor,
          onSecondary: LightAppColors.secondaryTextColor,
          tertiary: LightAppColors.containerColor,
          onTertiary: LightAppColors.black,
          error: LightAppColors.error,
          onError: LightAppColors.white,
          secondaryContainer: LightAppColors.borderColor
          ),
      textTheme: TextTheme(
        displayLarge: baseTextStyle.displayLarge,
        displayMedium: baseTextStyle.displayMedium,
        displaySmall: baseTextStyle.displaySmall,
        headlineLarge: baseTextStyle.headlineLarge,
        headlineMedium: baseTextStyle.headlineMedium,
        headlineSmall: baseTextStyle.headlineSmall,
        titleLarge: baseTextStyle.titleLarge,
        titleMedium: baseTextStyle.titleMedium,
        titleSmall: baseTextStyle.titleSmall,
        bodyLarge: baseTextStyle.bodyLarge,
        bodyMedium: baseTextStyle.bodyMedium,
        bodySmall: baseTextStyle.bodySmall,
        labelLarge: baseTextStyle.labelLarge,
        labelMedium: baseTextStyle.labelMedium,
        labelSmall: baseTextStyle.labelSmall,
      ),
      appBarTheme: AppBarTheme(
        actionsIconTheme: IconThemeData(color: LightAppColors.black),
        backgroundColor: LightAppColors.white,
        foregroundColor: LightAppColors.black,
        titleTextStyle:
            baseTextStyle.titleLarge.copyWith(color: LightAppColors.black),
        elevation: 0,
        shadowColor: const Color(0xFFBDBDBD),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: LightAppColors.bottomNavigatorColor,
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        modalElevation: 0,
        modalBarrierColor: LightAppColors.black.withOpacity(0.3),
        showDragHandle: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
      ),
      // filledButtonTheme: FilledButtonThemeData(style: commonButtonStyle),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: LightAppColors.borderColor,
          elevation: 2,
          minimumSize: Size.fromHeight(45),
          backgroundColor: LightAppColors.brandColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: LightAppColors.black,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: LightAppColors.secondaryBackgroundColor,
        //iconColor: AppColors.darkGrey,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),


      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: LightAppColors.bottomNavigatorColor,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 1,
      ),
    );
  }

  const LightAppTheme._();
}
