import 'package:flutter/material.dart';

class Constants {
  static Color yelloww = Colors.amberAccent[200];
  static Color lightBlue = Colors.blueAccent;
  static ThemeData appTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: lightBlue,
    primaryColor: lightBlue,
    accentColor: yelloww,
    scaffoldBackgroundColor: lightBlue,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: lightBlue,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}
