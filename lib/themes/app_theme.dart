import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_style.dart';

sealed class AppTheme {
  const AppTheme._();

  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    scaffoldBackgroundColor:Colors.white,
    iconTheme: const IconThemeData(color: Colors.black),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: AppColors.redColor),
    dividerTheme:
        const DividerThemeData(thickness: 0.8, color: AppColors.greyColor),
    appBarTheme: const AppBarTheme(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0.5,
        scrolledUnderElevation: 0),
  );
}
