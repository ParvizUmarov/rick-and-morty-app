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
      // hintColor: AppColors.darkGrey,
      // disabledColor: AppColors.grey,
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
      // filledButtonTheme: FilledButtonThemeData(style: commonButtonStyle),
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
      // outlinedButtonTheme: OutlinedButtonThemeData(style: commonButtonStyle),
      // textButtonTheme: TextButtonThemeData(
      //   style: commonButtonStyle.merge(
      //     TextButton.styleFrom(
      //       foregroundColor: AppColors.black,
      //     ),
      //   ),
      // ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: DarkAppColors.white,
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
        backgroundColor: DarkAppColors.bottomNavigatorColor,
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

  const DarkAppTheme._();
}