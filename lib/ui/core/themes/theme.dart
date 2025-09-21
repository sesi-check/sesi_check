import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTheme{

  static const _textTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 42,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.primaria
    ), 
    bodyMedium: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: 18
    )
  );


  static ThemeData temaClaro = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColors.primaria,
    textTheme: _textTheme
  );
}