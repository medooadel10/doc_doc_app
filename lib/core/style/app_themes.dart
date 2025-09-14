import 'package:doc_doc_app/core/style/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(primary: AppColors.primaryColor),
    fontFamily: 'Inter',
    appBarTheme: AppBarThemeData(
      titleTextStyle: TextStyle(fontFamily: 'Inter'),
    ),
  );
}
