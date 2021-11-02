import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool light = true;

  void setTheme(bool val) {
    light = val;
    notifyListeners();
  }
}
