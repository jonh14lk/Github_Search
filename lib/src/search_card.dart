import 'package:flutter/material.dart';

Widget query(String text) {
  return Padding(
    padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.network("https://i.imgur.com/2yaf2wb.png",
            width: 150, height: 150),
        SizedBox(height: 10),
        Text(
          'Name',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'João Victor de Alarcão Ayalla Alcântara',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Username',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Jonh14lk',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Followers',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          '19',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Repositories',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          '24',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Newest Repositories',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'github search',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'covidbr',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'competitive programming',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
          ),
        ),
      ],
    ),
  );
}
