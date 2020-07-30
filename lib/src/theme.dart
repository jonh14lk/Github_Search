import 'package:flutter/material.dart';

class Constants {
  static Color darkPrimary = Colors.black;
  static Color darkAccent = Colors.amberAccent[200];
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}
