import 'package:flutter/material.dart';
import 'src/home.dart';
import 'src/theme.dart';
import 'src/queryresult.dart';
import 'src/errorscreen.dart';

void main() {
  runApp(MaterialApp(
    theme: Constants.appTheme,
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/query': (context) => Query(),
      '/error': (context) => ErrorScreen(),
    },
  ));
}
