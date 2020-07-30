import 'package:flutter/material.dart';
import 'src/home.dart';
import 'src/theme.dart';
import 'src/search_card.dart';

void main() {
  runApp(MaterialApp(
    theme: Constants.darkTheme,
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/query': (context) => Query(),
    },
  ));
}
