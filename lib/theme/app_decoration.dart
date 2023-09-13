import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue5001,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray50,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA70001 => BoxDecoration(
        color: appTheme.whiteA70001,
      );

  // Gradient decorations
  static BoxDecoration get gradientSecondaryContainerToBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 0.43),
          colors: [
            theme.colorScheme.secondaryContainer,
            appTheme.blue700,
          ],
        ),
      );

  // Linear decorations
  static BoxDecoration get linear => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.secondaryContainer,
            appTheme.blue700,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.blue50,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.1),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              17,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.blueGray50,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineBluegray50 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray50,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray200,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineGray200 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray200,
          width: getHorizontalSize(1),
        ),
      );

  // Style decorations
  static BoxDecoration get style => BoxDecoration(
        color: theme.colorScheme.primary,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder15 => BorderRadius.circular(
        getHorizontalSize(15),
      );
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        getHorizontalSize(25),
      );
  static BorderRadius get circleBorder29 => BorderRadius.circular(
        getHorizontalSize(29),
      );
  static BorderRadius get circleBorder32 => BorderRadius.circular(
        getHorizontalSize(32),
      );
  static BorderRadius get circleBorder37 => BorderRadius.circular(
        getHorizontalSize(37),
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        getHorizontalSize(40),
      );
  static BorderRadius get circleBorder44 => BorderRadius.circular(
        getHorizontalSize(44),
      );

  // Custom borders
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
        top: Radius.circular(getHorizontalSize(30)),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        getHorizontalSize(10),
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        getHorizontalSize(2),
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        getHorizontalSize(6),
      );
  static BorderRadius get roundedBorder81 => BorderRadius.circular(
        getHorizontalSize(81),
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
