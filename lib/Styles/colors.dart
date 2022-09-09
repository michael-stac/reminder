
import 'package:flutter/material.dart';

class AppColors {
  static const white = Color(0xffE5E5E5);
  static const black = Color(0xff333333);
  static const softBlue = Color(0xffEDF5FF);
  static const vanadyBlue = Color(0xff0097E6);
  static const gray = Color(0xffBDBDBD);
  static const staticLiver = Color(0xff4F4F4F);
  
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
