import 'package:flutter/material.dart';

class SwitchThemeModel extends ChangeNotifier {
  ThemeMode _mode = ThemeMode.system;

  set mode(ThemeMode newMode) {
    _mode = newMode;
    notifyListeners();
  }

  ThemeMode get mode => _mode;

}
