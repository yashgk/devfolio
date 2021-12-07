import 'package:devfolio/constants/app_colors.dart';
import 'package:devfolio/constants/app_themes.dart';
import 'package:devfolio/core/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:devfolio/ui/hompage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeProvider>(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, value, snapshot) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Developer Portfolio',
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode: ThemeMode.dark,
        // themeMode: value.light ? ThemeMode.light : ThemeMode.dark,
        home: const HomePage(),
      );
    });
  }
}
