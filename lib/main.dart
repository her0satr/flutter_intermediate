import 'package:flutter/material.dart';
import 'package:intermediate/main_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainButton(),
    );
  }
}
