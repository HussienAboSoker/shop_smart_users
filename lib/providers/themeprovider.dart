import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  static const keystatus = "status";
  bool _isdarktheme = false;

  bool get getIsdarkTheme => _isdarktheme;

  ThemeProvider() {
    getTheme();
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isdarktheme = prefs.getBool(keystatus) ?? false;

    notifyListeners();
    return _isdarktheme;
  }

  void setdarktheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setBool(keystatus, value);
    _isdarktheme = value;
    notifyListeners();
  }

  
}
