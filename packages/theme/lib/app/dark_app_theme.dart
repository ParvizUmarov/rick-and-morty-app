import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app.dart';

class DarkAppTheme {
  static String? fontFamily = GoogleFonts.manrope().fontFamily;
  static final baseTextStyle = AppTextStyles.base;


  static ThemeData getThemeData() {
    return ThemeData(
      useMaterial3: true,
      cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
        applyThemeToAll: true,
        primaryColor: DarkAppColors.brandColor,
        primaryContrastingColor: DarkAppColors.black,
      ),
      fontFamily: fontFamily,
      package: 'theme',
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: DarkAppColors.brandColor,
          onPrimary: DarkAppColors.black,

          surface: DarkAppColors.backgroundColor,
          onSecondaryContainer: DarkAppColors.secondaryBackgroundColor,
          onSurface: DarkAppColors.black,

          secondary: DarkAppColors.mainTextColor,
          onSecondary: DarkAppColors.secondaryTextColor,
          tertiary: DarkAppColors.containerColor,
          onTertiary: DarkAppColors.white,

          error: DarkAppColors.error,
          onError: DarkAppColors.white,

          secondaryContainer: DarkAppColors.borderColor

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
        backgroundColor: DarkAppColors.bottomNavigatorColor,
        foregroundColor: DarkAppColors.black,
        actionsIconTheme: IconThemeData(
            color: DarkAppColors.white
        ),
        titleTextStyle:baseTextStyle.titleLarge.copyWith(
            color: DarkAppColors.white),
        elevation: 0,
        shadowColor: const Color(0xFFBDBDBD),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: DarkAppColors.bottomNavigatorColor,
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        modalElevation: 0,
        modalBarrierColor: DarkAppColors.black.withOpacity(0.3),
        showDragHandle: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: DarkAppColors.borderColor,
          elevation: 2,
          minimumSize: Size.fromHeight(45),
          backgroundColor: DarkAppColors.brandColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: DarkAppColors.white,
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
        backgroundColor: DarkAppColors.bottomNavigatorColor,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 1,
      ),
    );
  }

  const DarkAppTheme._();
}