import 'package:flutter/material.dart';
import 'api.dart';
import 'package:url_launcher/url_launcher.dart';

class Query extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(profile.pic),
                    radius: 50.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  profile.name,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Username',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  profile.login,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Location',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  profile.location,
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Followers',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  profile.followers.toString(),
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Following',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  profile.following.toString(),
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Repos',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  profile.repos.toString(),
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Recently Updated Repositories',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                // ----- TO DO -----
                // get repos information from API
                Row(
                  children: <Widget>[
                    OutlineButton(
                      onPressed: () async {
                        await launch('https://github.com');
                      },
                      child: Text('repo 1'),
                      textColor: Colors.amberAccent[200],
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    OutlineButton(
                      onPressed: () async {
                        await launch('https://github.com');
                      },
                      child: Text('repo 2'),
                      textColor: Colors.amberAccent[200],
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    OutlineButton(
                      onPressed: () async {
                        await launch('https://github.com');
                      },
                      child: Text('repo 3'),
                      textColor: Colors.amberAccent[200],
                    ),
                  ],
                ),
                // ----- TO DO -----
                SizedBox(
                  height: 30.0,
                ),
              ]),
        ),
      ),
    );
  }
}
