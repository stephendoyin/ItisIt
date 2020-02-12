import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';

enum ThemeType {
  light,
  dark,
}

final ThemeData _lightTheme = ThemeData(
  fontFamily: 'Gilroy',
  backgroundColor: Colors.white,

  // TextStyle
  textTheme: TextTheme(
    headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    title: TextStyle(
        fontSize: 20.0, fontStyle: FontStyle.italic, color: Colors.blue),
    body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);

final ThemeData _darkTheme = ThemeData(
  fontFamily: 'Gilroy',
  backgroundColor: Colors.black,
  textTheme: TextTheme(
    headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    title: TextStyle(
        fontSize: 36.0, fontStyle: FontStyle.normal, color: Colors.red),
    body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);

ThemeData themeByType(ThemeType type) {
  switch (type) {
    case ThemeType.light:
      return _lightTheme;
    case ThemeType.dark:
      return _darkTheme;
  }
}

// if use ThemeData, can not add new theme property by extend class, must use Mixin
// use ThemeData only can custom exist theme properties

// Full Custom theme
class BaseTheme {
  Color color1;
}

class LightTheme extends BaseTheme {
  Color color1 = Colors.white12;
}

class DarkTheme extends BaseTheme {
  Color color1 = Colors.black12;
}
