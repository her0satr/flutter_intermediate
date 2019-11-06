import 'package:flutter/material.dart';

class SwitchContainerPage extends StatefulWidget {
  @override
  _SwitchContainerPageState createState() => _SwitchContainerPageState();
}

class _SwitchContainerPageState extends State<SwitchContainerPage> {
  bool isOn = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.red, border: Border.all(color: Colors.black, width: 3)),
  );
  Widget myWidgetTemp;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Switcher"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AnimatedSwitcher(
                child: myWidget,
                duration: Duration(seconds: 1),
                transitionBuilder: (child, animation) => ScaleTransition(
                  scale: animation,
                  child: child,
                ),
              ),
              Switch(
                value: isOn,
                activeColor: Colors.blue,
                inactiveTrackColor: Colors.grey,
                onChanged: (newValue) {
                  isOn = newValue;
                  setState(() {
                    if (isOn) {
                      myWidgetTemp = myWidget;
                      myWidget = SizedBox(
                        width: 200,
                        height: 100,
                        child: Center(
                          child: Text(
                            "Switch : ON",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ),
                      );
                    } else {
                      myWidget = myWidgetTemp;
                    }
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
