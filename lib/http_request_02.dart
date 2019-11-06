import 'package:flutter/material.dart';
import 'package:intermediate/provider/user_model.dart';

class HttpCollectionPage extends StatefulWidget {
  @override
  _HttpCollectionPageState createState() => _HttpCollectionPageState();
}

class _HttpCollectionPageState extends State<HttpCollectionPage> {
  User user;
  String output = "no data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demo - Collection"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(output),
              RaisedButton(
                child: Text("GET Collection"),
                onPressed: () {
                  User.getUsers("1").then((users) {
                    output = "";
                    for (int i = 0; i < users.length; i++) {
                      output += "[ " + users[i].name + "] ";
                    }
                    setState(() {});
                  });
                },
              ),
              RaisedButton(
                child: Text("Reset"),
                onPressed: () {
                  setState(() {
                    user = null;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
