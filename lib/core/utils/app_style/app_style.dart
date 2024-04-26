import 'package:alquila_tu_hobby/core/utils/math_utils/math_util.dart';
import 'package:flutter/material.dart';
import '../color_constants/color_constants.dart';

class AppStyle {
  static TextStyle txtNunitoBold20 = TextStyle(
    color: LightTheme.fontColor,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'NunitoSansBold',
    fontWeight: FontWeight.w900,
    fontFeatures: const [FontFeature.proportionalFigures()],
  );
  static TextStyle txtNunitoRegular12 = TextStyle(
    color: LightTheme.fontColor,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'NunitoSansRegular',
    fontWeight: FontWeight.w400,
    fontFeatures: const [FontFeature.proportionalFigures()],
  );
  static TextStyle txtNunitoRegular18 = TextStyle(
    color: LightTheme.fontColor,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'NunitoSansRegular',
    fontWeight: FontWeight.w400,
    fontFeatures: const [FontFeature.proportionalFigures()],
  );
  static TextStyle txtNunitoRegular12UnderlinedBlue = TextStyle(
    color: LightTheme.blueColor,
    decoration: TextDecoration.underline,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'NunitoSansRegular',
    fontWeight: FontWeight.w400,
    fontFeatures: const [FontFeature.proportionalFigures()],
  );
  static TextStyle txtNunitoRegular14White = TextStyle(
    color: LightTheme.white,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'NunitoSansRegular',
    fontWeight: FontWeight.w400,
    fontFeatures: const [FontFeature.proportionalFigures()],
  );
  static TextStyle txtNunitobold14White = TextStyle(
    color: LightTheme.white,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'NunitoSansRegular',
    fontWeight: FontWeight.bold,
    fontFeatures: const [FontFeature.proportionalFigures()],
  );
  static TextStyle txtNunitoRegular12Red = TextStyle(
    color: LightTheme.errorColor,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'NunitoSansRegular',
    fontWeight: FontWeight.w400,
    fontFeatures: const [FontFeature.proportionalFigures()],
  );
}
