import 'package:devfolio/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData darkTheme = ThemeData(
    fontFamily: "Poppins",
    primaryColorDark: const Color.fromRGBO(111, 88, 255, 1),
    primaryColor: const Color.fromRGBO(128, 109, 255, 1),
    primaryColorLight: const Color.fromRGBO(159, 84, 252, 1),
    brightness: Brightness.dark,
    primaryColorBrightness: Brightness.dark,
    // scaffoldBackgroundColor: AppColors.blackColor,
    primarySwatch: Colors.deepPurple,
    canvasColor: const Color.fromRGBO(31, 29, 44, 1),
    primaryTextTheme: const TextTheme(
      headline1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 30,
      ),
      bodyText1: TextStyle(
        fontFamily: "Poppins",
        fontSize: 20,
      ),
      bodyText2: TextStyle(
        fontFamily: "Poppins",
        fontSize: 20,
        color: Color.fromRGBO(111, 88, 255, 1),
      ),
    ),
    // iconTheme: const IconThemeData(
    //   color: AppColors.whiteColor,
    // ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.whiteColor),
  );

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
