import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'User not found ;-;',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0,
          ),
        ),
      ),
    );
  }
}
