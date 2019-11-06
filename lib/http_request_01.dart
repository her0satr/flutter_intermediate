import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intermediate/provider/post_model.dart';
import 'package:intermediate/provider/user_model.dart';

class HttpSimplePage extends StatefulWidget {
  @override
  _HttpSimplePageState createState() => _HttpSimplePageState();
}

class _HttpSimplePageState extends State<HttpSimplePage> {
  User user;
  PostResult postResult;
  var random = new Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demo - Update"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((postResult == null)
                  ? "Tidak Ada Post Data"
                  : postResult.id +
                      '|' +
                      postResult.name +
                      '|' +
                      postResult.job +
                      '|' +
                      postResult.created),
              RaisedButton(
                child: Text("Call POST API"),
                onPressed: () {
                  PostResult.connectToAPI("Badui", "Dance").then((value) {
                    setState(() {
                      postResult = value;
                    });
                  });
                },
              ),
              Text((user == null)
                  ? "Tidak Ada User"
                  : user.id + '|' + user.name),
              RaisedButton(
                child: Text("Call GET API"),
                onPressed: () {
                  User.connectToAPI(random.nextInt(10).toString()).then((value) {
                    setState(() {
                      user = value;
                    });
                  });
                },
              ),
              RaisedButton(
                child: Text("Reset"),
                onPressed: () {
                  setState(() {
                    postResult = null;
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
