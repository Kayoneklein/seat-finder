import 'package:flutter/material.dart';
import 'package:seat_finder/utils/colors.dart';

class TextSize {
  static TextStyle h3({Color? color}) {
    return _copy(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle body({Color? color, FontWeight? fontWeight}) {
    return _copy(
      fontSize: 15.0,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle bodySmall({Color? color, FontWeight? fontWeight}) {
    return _copy(
      fontSize: 8.0,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle _copy({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      color: color ?? CustomColors.blue,
      fontSize: fontSize ?? 14.0,
      fontWeight: fontWeight,
    );
  }
}
