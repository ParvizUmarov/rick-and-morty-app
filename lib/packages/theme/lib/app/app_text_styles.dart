import 'package:flutter/rendering.dart';

import 'app_colors.dart';

class AppTextStyles {
  const AppTextStyles._();

  static final base = _Base();
}

abstract class _AppTextTheme {
  TextStyle get displayLarge;

  TextStyle get displayMedium;

  TextStyle get displaySmall;

  TextStyle get headlineLarge;

  TextStyle get headlineMedium;

  TextStyle get headlineSmall;

  TextStyle get titleLarge;

  TextStyle get titleMedium;

  TextStyle get titleSmall;

  TextStyle get bodyLarge;

  TextStyle get bodyMedium;

  TextStyle get bodySmall;

  TextStyle get labelLarge;

  TextStyle get labelMedium;

  TextStyle get labelSmall;
}

class _Base implements _AppTextTheme {

  @override
  TextStyle get displayLarge => TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      color: LightAppColors.lightBlack
  );

  @override
  TextStyle get displayMedium => TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w400,
      color: LightAppColors.lightBlack
  );

  @override
  TextStyle get displaySmall => TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      color: LightAppColors.black
  );

  @override
  TextStyle get headlineLarge => TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: LightAppColors.black
  );

  @override
  TextStyle get headlineMedium => TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w400,
      color: LightAppColors.black
  );

  @override
  TextStyle get headlineSmall => TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: LightAppColors.lightBlack
  );

  @override
  TextStyle get titleLarge => TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w400,
      color: LightAppColors.lightBlack
  );

  @override
  TextStyle get titleMedium => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: LightAppColors.black
  );

  @override
  TextStyle get titleSmall => TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: LightAppColors.lightBlack
  );

  @override
  TextStyle get bodyLarge => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: LightAppColors.lightBlack
  );

  @override
  TextStyle get bodyMedium => TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: LightAppColors.lightBlack
  );

  @override
  TextStyle get bodySmall => TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: LightAppColors.lightBlack
  );

  @override
  TextStyle get labelLarge => TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: LightAppColors.lightBlack
  );

  @override
  TextStyle get labelMedium => TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: LightAppColors.lightBlack
  );

  @override
  TextStyle get labelSmall => TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: LightAppColors.lightBlack
  );

}
