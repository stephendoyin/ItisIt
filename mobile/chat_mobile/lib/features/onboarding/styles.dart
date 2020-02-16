import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:chat_mobile/global_providers.dart';

TextStyle signinTextStyle =
    TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold);
TextStyle messageTextStyle = TextStyle(color: Colors.white, fontSize: 16);
TextStyle smallText = themeProvider.currentTheme.smallTextStyle
    .copyWith(color: themeProvider.currentTheme.colorWhite);
