import 'package:flutter/widgets.dart';

extension WidgetExtension on Widget {}

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
  // ···
}
