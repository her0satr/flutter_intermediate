import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProviderState01 with ChangeNotifier {
  bool _isLightBlue = true;
  bool get isLightBlue => _isLightBlue;
  set isLightBlue(bool value) {
    _isLightBlue = value;
    notifyListeners();
  }

  Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;
}
