import 'package:flutter/material.dart';

import 'themes.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeType _curThemeType;
  ThemeData _themeData;

  ThemeProvider(ThemeType curThemeType) {
    _curThemeType = curThemeType;
    _themeData = themeByType(curThemeType);
  }

  getTheme() => _themeData;

  setTheme(ThemeType type) {
    _curThemeType = type;
    _themeData = themeByType(_curThemeType);
    notifyListeners();
  }
}
