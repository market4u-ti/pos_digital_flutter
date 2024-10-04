import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle {
  TextStyle get height1 => copyWith(height: 1.0);
  TextStyle get height1_2 => copyWith(height: 1.2);
  TextStyle get height1_5 => copyWith(height: 1.5);
  TextStyle get height1_7 => copyWith(height: 1.7);
  TextStyle get height2 => copyWith(height: 2);

  TextStyle get w100 => copyWith(fontWeight: FontWeight.w100);
  TextStyle get w200 => copyWith(fontWeight: FontWeight.w200);
  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);
  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);
  TextStyle get w900 => copyWith(fontWeight: FontWeight.w900);

  TextStyle setColor(Color color) => copyWith(color: color);

  /// TODO REVER  (Esta sem o modular)
  static double get _scaleFactor {
    return 1;
  }

  double get pixelHeight => (fontSize ?? 1) * (height ?? 1) * _scaleFactor;
}

/// market4u text styles
class AppTextStyles {
  AppTextStyles._();

  // FONT
  static const String fontFamily = "packages/market4u_ds/Sarabun";

  // ALL CAPS

  /// All Caps - 8 - Bold - 1.5
  static const TextStyle allCaps8 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 8,
    height: 1.5,
  );

  /// All Caps - 10 - Bold - 1.5
  static const TextStyle allCaps10 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 10,
    height: 1.5,
    letterSpacing: 0.9,
  );

  /// All Caps - 12 - Bold - 1.5
  static const TextStyle allCaps12 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 12,
    height: 1.5,
  );

  /// All Caps - 14 - SemiBold - 1.0
  static const TextStyle allCaps14 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    height: 1.0,
  );

  /// All Caps - 16 - SemiBold - 1.0
  static const TextStyle allCaps16 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 1.0,
  );

  // HEADERS

  /// Header - 14 - SemiBold - 1.2
  static const TextStyle header14 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    height: 1.2,
  );

  /// Header - 16 - Bold - 1.2
  static const TextStyle header16 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    height: 1.2,
  );

  /// Header - 21 - Bold - 1.2
  static const TextStyle header21 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 21,
    height: 1.2,
  );

  /// Header - 24 - SemiBold - 1.2
  static const TextStyle header24 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    height: 1.2,
  );

  /// Header - 28 - SemiBold - 1.2
  static const TextStyle header28 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 28,
    height: 1.2,
  );

  /// Header - 32 - Bold - 1.2
  static const TextStyle header32 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 32,
    height: 1.2,
  );

  // TEXT

  /// Text - 7 - Medium - 1.5
  static const TextStyle text7 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 7,
    height: 1.5,
  );

  /// Text - 10 - Medium - 1.5
  static const TextStyle text10 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10,
    height: 1.5,
  );

  /// Text - 12 - Medium - 1.5
  static const TextStyle text12 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 1.5,
  );

  /// Text - 14 - Medium - 1.5
  static const TextStyle text14 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 1.5,
  );

  /// Text - 16 - Medium - 1.5
  static const TextStyle text16 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.5,
  );

  /// Text - 20 - Medium - 1.5
  static const TextStyle text20 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
    height: 1.5,
  );

  /// Text - 21 - Regular - 1.5
  static const TextStyle text21 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 21,
    height: 1.5,
  );

  // PIN

  /// Pin - 32 - Regular - 1.0
  static const TextStyle pin = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 32,
    height: 1,
  );

  // ZERO

  /// Zero - 0 - 0
  static const TextStyle zero = TextStyle(fontSize: 0, height: 0);
}
