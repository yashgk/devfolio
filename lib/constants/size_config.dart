import 'package:flutter/material.dart';
import 'package:devfolio/core/enums/screen_size_enum.dart';

abstract class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late ScreenSize screenSize;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    screenSize = screenWidth >= 1280
        ? ScreenSize.desktop
        : (screenWidth >= 800 && screenWidth < 1280)
            ? ScreenSize.tablet
            : ScreenSize.mobile;
  }
}
