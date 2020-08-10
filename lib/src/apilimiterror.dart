import 'package:flutter/material.dart';

class ApiLimitError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'API rate limit exceeded',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 45.0,
            ),
            Text(
              'Github API has a limit of queries that can be made by a user, try again later',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
