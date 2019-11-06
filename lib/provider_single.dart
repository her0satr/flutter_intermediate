import 'package:flutter/material.dart';
import 'package:intermediate/provider/sample_helper.dart';
import 'package:provider/provider.dart';

class ProviderSinglePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ProviderState01>(
        builder: (context) => ProviderState01(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<ProviderState01>(
              builder: (context, providerState, _) => Text(
                  "Provider State Management",
                  style: TextStyle(color: providerState.color)),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Consumer<ProviderState01>(
                  builder: (context, providerState, _) => AnimatedContainer(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(5),
                    color: providerState.color,
                    duration: Duration(milliseconds: 500),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(margin: EdgeInsets.all(5), child: Text("Ember")),
                    Consumer<ProviderState01>(
                      builder: (context, providerState, _) => Switch(
                        value: providerState.isLightBlue,
                        onChanged: (newValue) {
                          providerState.isLightBlue = newValue;
                        },
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.all(5), child: Text("Light Blue")),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
