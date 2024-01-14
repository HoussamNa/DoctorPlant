import 'package:flutter/material.dart';
import 'package:nasir_s_doctorplant_app/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue50019,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA70001,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientGrayFToBlueGrayF => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray9007f,
            appTheme.blueGray9007f,
          ],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightGreen => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.lightGreenA200,
            appTheme.lightGreen80001,
          ],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightgreen80001 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.lightGreenA200,
            appTheme.lightGreen80001,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineErrorContainer => BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.errorContainer.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              27.14,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray10002,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineGreen => BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: appTheme.green400.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -13.64,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGreen400 => BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: appTheme.green400.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -13.57,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGreen9004c01 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        boxShadow: [
          BoxShadow(
            color: appTheme.green9004c01,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -101.8,
              137.6,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGreenC => BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: appTheme.green9004c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -106.28,
              154.38,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder36 => BorderRadius.circular(
        36.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder41 => BorderRadius.circular(
        41.h,
      );
  static BorderRadius get roundedBorder49 => BorderRadius.circular(
        49.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
