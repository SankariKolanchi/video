import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTextStyle {
  const AppTextStyle._();

  static const appBarTitle = TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlackColor);

  static const headerTitleStyle =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w700);

  static const blackF18FW500TextStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black);

  static const blackF14F500TextStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black);

  static const mediumPinkF14F500TextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.mediumPinkColor);

  static const titleTextStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black);

  static const blackTextStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black);

  static const darkBlackF13W500TextStyle = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlackColor);

  static const dimGreyF14W500TextStyle = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.dimGreyColor);

  static const darkRedF18W400TextStyle = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.darkRedColor);

  static const blackF12W700TextStyle =
      TextStyle(fontSize: 12, fontWeight: FontWeight.w700);

  static const mediumGreyW500TextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.mediumGreyColor);

  static const blackF12W400TextStyle =
      TextStyle(fontSize: 12, fontWeight: FontWeight.w400);

  static const blackF14W500TextStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500);

  static const blackF14W600TextStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w600);

  static const blackF16W700TextStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w700);

  static const whiteF14W600TextStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white);

  static const redF14W500TextStyle = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.redColor);
}