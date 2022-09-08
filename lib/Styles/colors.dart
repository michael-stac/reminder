
import 'package:flutter/material.dart';

class AppColors {
  static const charcoal = Color.fromRGBO(61, 80, 89, 1);
  static const appColor = Color.fromRGBO(0, 151, 230, 1);
}

class TextStyles {
  static const normal = fw400;
  static const semiBold = fw600;
  static const bold = fw700;

  static TextStyle fw400(double size, Color color, {double? height}) {
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.w400,
      fontFamily: 'Playfair Display',
      height: height,
    );
  }

  static TextStyle fw600(double size, Color color, {double? height}) {
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.w600,
      fontFamily: 'Playfair Display',
      height: height,
    );
  }

  static TextStyle fw700(double size, Color color, {double? height}) {
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.w700,
      fontFamily: 'Playfair Display',
      height: height,
    );
  }
}
