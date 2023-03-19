import 'package:cats/generated_assets/fonts.gen.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle style22w400(Color? color, [double? height]) => TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 22,
        fontWeight: FontWeight.w400,
        color: color,
        height: height,
      );

  static TextStyle style18w600(Color? color, [double? height = 1.444]) =>
      TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: color,
        height: height,
      );

  static TextStyle style18w500(Color? color, [double? height = 1.444]) =>
      TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: color,
        height: height,
      );

  static TextStyle style18w500ul(Color? color, [double? height = 1.444]) =>
      TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: color,
        height: height,
        decoration: TextDecoration.underline,
        decorationThickness: 1,
      );

  static TextStyle style18w400(Color? color, [double? height = 1.333]) =>
      TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: color,
        height: height,
      );

  static TextStyle style16w400(Color? color, [double? height = 1.5]) =>
      TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: color,
        height: height,
      );

  static TextStyle style12w400ul(Color? color, [double? height]) => TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: color,
        height: height,
        decoration: TextDecoration.underline,
        decorationThickness: 2,
      );
}
