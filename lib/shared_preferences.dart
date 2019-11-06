import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePreferencePage extends StatefulWidget {
  @override
  _SharePreferencePageState createState() => _SharePreferencePageState();
}

class _SharePreferencePageState extends State<SharePreferencePage> {
  TextEditingController controller = TextEditingController(text: "No Name");
  bool isOn = false;

  saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("nama", controller.text);
    prefs.setBool("bool", isOn);
  }

  Future<String> getNama() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return (prefs.getString("nama")) ?? "No Name";
  }

  Future<bool> getOn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return (prefs.getBool("bool")) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shared Prefered 1"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  controller: controller,
                ),
              ),
              Switch(
                value: isOn,
                onChanged: (newValue) {
                  isOn = newValue;
                  setState(() {});
                },
              ),
              RaisedButton(
                onPressed: () {
                  saveData();
                  setState(() {});
                },
                child: Text("Save"),
              ),
              RaisedButton(
                onPressed: () {
                  getNama().then((value) {
                    controller.text = value;
                    setState(() {});
                  });
                  getOn().then((value) {
                    isOn = value;
                    setState(() {});
                  });
                },
                child: Text("Load"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
