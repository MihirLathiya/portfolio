import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/constants.dart';
import 'package:flutter_portfolio_app/screens/demo/pages.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kevin Mangukiya',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: myPrimaryColor,
        accentColor: myPrimaryColor,
        // fontFamily: "Montserrat",
        highlightColor: myPrimaryColor,
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget),
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.resize(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.resize(2460, name: "4K"),
        ],
        background: Container(
          color: kBackgroundColor,
        ),
      ),
      home: Homepage(),
    );
  }
}
