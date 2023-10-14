import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTextStyle {
  const AppTextStyle._();

  static const blackF14FW500TextStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black);

  static const blackF14W600TextStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w600);

  static const blackF18FW400TextStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black);

  static const blackF18FW500TextStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black);

  static const mediumPinkF14F500TextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.mediumPinkColor);

  static const dimGreyF14W500TextStyle = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.dimGreyColor);

  static const mediumGreyW500TextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.mediumGreyColor);

  static const darkRedF18W400TextStyle = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.darkRedColor);
}
