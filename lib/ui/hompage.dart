import 'dart:io';

import 'package:devfolio/constants/app_colors.dart';
import 'package:devfolio/core/providers/theme_provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> navMenu = [];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  ThemeProvider themeProvider = ThemeProvider();

  void getNavBar(BuildContext context) {
    navMenu = [
      InkWell(
        onTap: () {},
        child: Text(
          "About",
          style: Theme.of(context).primaryTextTheme.bodyText1,
        ),
      ),
      InkWell(
        onTap: () {},
        child: Text(
          "Portfolio",
          style: Theme.of(context).primaryTextTheme.bodyText1,
        ),
      ),
      InkWell(
        onTap: () {},
        child: Text(
          "Articles",
          style: Theme.of(context).primaryTextTheme.bodyText1,
        ),
      ),
      InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            "Say Hello",
            style: Theme.of(context)
                .primaryTextTheme
                .bodyText1!
                .copyWith(color: Theme.of(context).primaryColorDark),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    themeProvider = Provider.of<ThemeProvider>(context);
    getNavBar(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            themeProvider.setTheme(!themeProvider.light);
          });
        },
        child: themeProvider.light
            ? const Icon(Icons.light_mode)
            : const Icon(Icons.dark_mode),
        mini: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      key: _scaffoldKey,
      endDrawer: MediaQuery.of(context).size.width >= 1280
          ? null
          : MediaQuery.of(context).size.width >= 800 &&
                  MediaQuery.of(context).size.width < 1280
              ? Stack(
                  children: [
                    Container(
                      color: Theme.of(context).primaryColorDark,
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: navMenu,
                      ),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.02,
                        right: MediaQuery.of(context).size.width * 0.03,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            color: Theme.of(context).primaryColor,
                          ),
                        )),
                  ],
                )
              : Stack(
                  children: [
                    Container(
                      color: Theme.of(context).primaryColorDark,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: navMenu,
                      ),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.02,
                        right: MediaQuery.of(context).size.width * 0.03,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            color: Theme.of(context).primaryColor,
                          ),
                        )),
                  ],
                ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
              ),
              height: MediaQuery.of(context).size.height * 0.07,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.02),
                    child: Text(
                      ">_Yash",
                      style: Theme.of(context).primaryTextTheme.headline1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.02),
                    child: MediaQuery.of(context).size.width >= 1280
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: navMenu,
                            ),
                          )
                        : MediaQuery.of(context).size.width >= 800 &&
                                MediaQuery.of(context).size.width < 1280
                            ? IconButton(
                                onPressed: () {
                                  _scaffoldKey.currentState!.openEndDrawer();
                                },
                                icon: Icon(
                                  Icons.menu,
                                  color: Theme.of(context).primaryColor,
                                ))
                            : IconButton(
                                onPressed: () {
                                  _scaffoldKey.currentState!.openEndDrawer();
                                },
                                icon: Icon(
                                  Icons.menu,
                                  color: Theme.of(context).primaryColor,
                                )),
                  )
                ],
              ),
            ),
            Container(
              child: MediaQuery.of(context).size.width >= 1280
                  ? const Text(
                      "Desktop",
                      style: TextStyle(fontFamily: 'Righteous'),
                    )
                  : MediaQuery.of(context).size.width >= 800 &&
                          MediaQuery.of(context).size.width < 1280
                      ? const Text(
                          "Tablet",
                          style: TextStyle(fontFamily: 'Righteous'),
                        )
                      : const Text(
                          "mobile",
                          style: TextStyle(fontFamily: 'Righteous'),
                        ),
            ),
            Text(themeProvider.light.toString()),
          ],
        ),
      ),
    );
  }
}

//  MediaQuery.of(context).size.width >= 1280
//                   ? const Text(
//                       "Desktop",
//                       style: TextStyle(fontFamily: 'Righteous'),
//                     )
//                   : MediaQuery.of(context).size.width >= 800 &&
//                           MediaQuery.of(context).size.width < 1280
//                       ? const Text(
//                           "Tablet",
//                           style: TextStyle(fontFamily: 'Righteous'),
//                         )
//                       : const Text(
//                           "mobile",
//                           style: TextStyle(fontFamily: 'Righteous'),
//                         ),
