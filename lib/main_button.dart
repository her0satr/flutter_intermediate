import 'package:flutter/material.dart';
import 'package:intermediate/clippath.dart';
import 'package:intermediate/http_request_01.dart';
import 'package:intermediate/http_request_02.dart';
import 'package:intermediate/provider_multi.dart';
import 'package:intermediate/provider_single.dart';
import 'package:intermediate/shared_preferences.dart';
import 'package:intermediate/switch_container.dart';

class MainButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text("Clippath"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ClipPathPage();
                    }));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text("Share Preference"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SharePreferencePage();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text("Switch Container"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SwitchContainerPage();
                    }));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text("HTTP Simple"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HttpSimplePage();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text("HTTP Collection"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HttpCollectionPage();
                    }));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text("Provider Single"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ProviderSinglePage();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text("Provider Multi"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ProviderMultiPage();
                    }));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
