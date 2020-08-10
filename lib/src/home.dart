import 'package:flutter/material.dart';
import 'api.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 50.0),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text(
              "Github Search",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                      maxLines: 1,
                      controller: myController,
                    ),
                  ),
                ),
              ),
              FloatingActionButton(
                onPressed: () async {
                  await init(myController.text);
                  if (find == 0) {
                    Navigator.pushNamed(context, '/error');
                  } else if (find == 1) {
                    Navigator.pushNamed(context, '/query');
                  } else {
                    Navigator.pushNamed(context, '/apilimit');
                  }
                },
                tooltip: 'Search',
                child: Icon(Icons.search),
              )
            ],
          ),
        ],
      ),
    );
  }
}
