import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
        fontSize: 13.fSize,
      );
  // Headline text style
  static get headlineLargeGreenA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.greenA700,
      );
  static get headlineLargeLexendErrorContainer =>
      theme.textTheme.headlineLarge!.lexend.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 32.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallGray80001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray80001,
      );
  // Label text style
  static get labelLargeLexendGray80001 =>
      theme.textTheme.labelLarge!.lexend.copyWith(
        color: appTheme.gray80001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLexendGray80001_1 =>
      theme.textTheme.labelLarge!.lexend.copyWith(
        color: appTheme.gray80001,
      );
  // Title text style
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get titleLargeErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get titleLargeLexendErrorContainer =>
      theme.textTheme.titleLarge!.lexend.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLexendBluegray900 =>
      theme.textTheme.titleMedium!.lexend.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumLexendGray500 =>
      theme.textTheme.titleMedium!.lexend.copyWith(
        color: appTheme.gray500,
        fontSize: 19.fSize,
      );
  static get titleMediumLexendGray80001 =>
      theme.textTheme.titleMedium!.lexend.copyWith(
        color: appTheme.gray80001,
        fontSize: 19.fSize,
      );
  static get titleMediumLexendGray80001SemiBold =>
      theme.textTheme.titleMedium!.lexend.copyWith(
        color: appTheme.gray80001,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOverpassGray900e5 =>
      theme.textTheme.titleMedium!.overpass.copyWith(
        color: appTheme.gray900E5,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOverpassWhiteA70001 =>
      theme.textTheme.titleMedium!.overpass.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
      );
  static get titleSmallOverpassGray900e5 =>
      theme.textTheme.titleSmall!.overpass.copyWith(
        color: appTheme.gray900E5.withOpacity(0.8),
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get lexend {
    return copyWith(
      fontFamily: 'Lexend',
    );
  }

  TextStyle get overpass {
    return copyWith(
      fontFamily: 'Overpass',
    );
  }
}
