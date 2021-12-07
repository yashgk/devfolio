import 'dart:io';

import 'package:devfolio/constants/app_colors.dart';
import 'package:devfolio/constants/size_config.dart';
import 'package:devfolio/core/providers/theme_provider.dart';
import 'package:devfolio/ui/shared_widgets/custom_container.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<Widget> navMenu = [];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  ThemeProvider themeProvider = ThemeProvider();

  @override
  Widget build(BuildContext context) {
    themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       themeProvider.setTheme(!themeProvider.light);
      //     });
      //   },
      //   child: themeProvider.light
      //       ? const Icon(Icons.light_mode)
      //       : const Icon(Icons.dark_mode),
      //   mini: true,
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      key: _scaffoldKey,
      endDrawer: MediaQuery.of(context).size.width >= 1280
          ? null
          : buildSidebar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomContainer(
                child: MediaQuery.of(context).size.width >= 1280
                    ? SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: buildNavItems(context)),
                      )
                    : IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState!.openEndDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Theme.of(context).primaryColor,
                        )),
                backgroundColor: AppColors.darkGrey,
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.01,
                    vertical: MediaQuery.of(context).size.height * 0.01),
                borderRadius: 40),
            Container(
              child: MediaQuery.of(context).size.width >= 1280
                  ? const Text(
                      "Desktop",
                    )
                  : MediaQuery.of(context).size.width >= 800 &&
                          MediaQuery.of(context).size.width < 1280
                      ? const Text(
                          "Tablet",
                        )
                      : const Text(
                          "mobile",
                        ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildNavItems(BuildContext context) {
    return [
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
        child: Text(
          "Say Hello",
          style: Theme.of(context).primaryTextTheme.bodyText1,
        ),
      ),
    ];
  }

  Widget buildSidebar(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Theme.of(context).primaryColorDark,
          width: MediaQuery.of(context).size.width * 0.15,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: buildNavItems(context)),
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




