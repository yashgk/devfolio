import 'package:devfolio/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.blackColor,
      primaryColorDark: AppColors.whiteColor,
      scaffoldBackgroundColor: AppColors.blackColor,
      primaryTextTheme: const TextTheme(
        headline1: TextStyle(
          fontFamily: 'Righteous',
          fontSize: 30,
          color: AppColors.blackColor,
        ),
        bodyText1: TextStyle(
            fontFamily: "Righteous", fontSize: 20, color: AppColors.blackColor),
      ),
      iconTheme: const IconThemeData(
        color: AppColors.whiteColor,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.whiteColor));

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.whiteColor,
      primaryColorDark: AppColors.blackColor,
      scaffoldBackgroundColor: AppColors.whiteColor,
      
      primaryTextTheme: const TextTheme(
        headline1: TextStyle(
          fontFamily: 'Righteous',
          fontSize: 30,
          color: AppColors.whiteColor,
        ),
        bodyText1: TextStyle(
            fontFamily: "Righteous", fontSize: 20, color: AppColors.whiteColor),
      ),
      iconTheme: const IconThemeData(
        color: AppColors.blackColor,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.blackColor));
}
