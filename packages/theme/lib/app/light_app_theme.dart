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
      // hintColor: AppColors.darkGrey,
      // disabledColor: AppColors.grey,
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

          // secondaryContainer: AppColors.lightGrey,
          // onSecondaryContainer: AppColors.black,
          // tertiaryContainer: AppColors.black,
          // onTertiaryContainer: AppColors.white,
          // onSurfaceVariant: AppColors.grey,
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
          // systemNavigationBarContrastEnforced: true,
          //systemNavigationBarColor: Colors.transparent,
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      // actionIconTheme: ActionIconThemeData(
      //   backButtonIconBuilder: (context) => Assets.icons.back.svg(
      //     colorFilter: AppColors.black.filter,
      //   ),
      // ),
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
      // outlinedButtonTheme: OutlinedButtonThemeData(style: commonButtonStyle),
      // textButtonTheme: TextButtonThemeData(
      //   style: commonButtonStyle.merge(
      //     TextButton.styleFrom(
      //       foregroundColor: AppColors.black,
      //     ),
      //   ),
      // ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: LightAppColors.black,
      ),
      // inputDecorationTheme: InputDecorationTheme(
      //   filled: true,
      //   fillColor: AppColors.lightGrey,
      //   iconColor: AppColors.darkGrey,
      //   prefixIconColor: AppColors.darkGrey,
      //   suffixIconColor: AppColors.darkGrey,
      //   labelStyle: AppTextStyles.text.l.copyWith(color: AppColors.darkGrey),
      //   floatingLabelStyle: AppTextStyles.text.m.copyWith(
      //     color: AppColors.darkGrey,
      //   ),
      //   border: MaterialStateOutlinedInputBorder.resolveWith((states) {
      //     return OutlinedInputBorder(
      //       borderRadius: const BorderRadius.all(Radius.circular(10)),
      //       borderSide: states.contains(WidgetState.focused)
      //           ? const BorderSide(color: AppColors.darkGrey)
      //           : BorderSide.none,
      //     );
      //   }),
      //   contentPadding: const EdgeInsets.symmetric(
      //     horizontal: 16,
      //     vertical: 8,
      //   ),
      // ),
      // cardTheme: const CardTheme(
      //   elevation: 0,
      //   margin: EdgeInsets.zero,
      //   clipBehavior: Clip.hardEdge,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(24)),
      //   ),
      // ),
      // switchTheme: SwitchThemeData(
      //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //   thumbColor: const WidgetStatePropertyAll(AppColors.white),
      //   trackColor: WidgetStateProperty.resolveWith((states) {
      //     if (states.contains(WidgetState.selected)) {
      //       return AppColors.orange;
      //     }
      //     return AppColors.grey;
      //   }),
      //   trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      //     if (states.contains(WidgetState.selected)) {
      //       return AppColors.orange;
      //     }
      //     return AppColors.grey;
      //   }),
      // ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: LightAppColors.bottomNavigatorColor,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 1,
      ),
      // badgeTheme: BadgeThemeData(
      //   offset: const Offset(-4, 4),
      //   textStyle: AppTextStyles.text.s.copyWith(height: 1),
      // ),
      // chipTheme: ChipThemeData(
      //   elevation: 0,
      //   pressElevation: 0,
      //   shape: const StadiumBorder(),
      //   showCheckmark: false,
      //   side: BorderSide.none,
      //   padding: EdgeInsets.zero,
      //   labelStyle: AppTextStyles.text.m.copyWith(
      //     color: AppColors.black,
      //   ),
      // ),
      // snackBarTheme: SnackBarThemeData(
      //   dismissDirection: DismissDirection.horizontal,
      //   backgroundColor: AppColors.black,
      //   actionTextColor: AppColors.white,
      //   behavior: SnackBarBehavior.floating,
      //   contentTextStyle: AppTextStyles.text.m.copyWith(
      //     color: AppColors.white,
      //   ),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(20.0),
      //   ),
      // ),
    );
  }

  const LightAppTheme._();
}
